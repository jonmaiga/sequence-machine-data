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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A228500: Number of n X n binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228500, there is no canonical definition to state claims against.
-/

/-! ## A228500.P15911010446171642389

`A228506(∑[4*n]+1)`
-/

namespace A228500.P15911010446171642389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228500.P15911010446171642389

/-! ## A228500.P9997952913609265546

`A228506(A001844(n))+A025444(n)`
-/

namespace A228500.P9997952913609265546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A001844 n).toNat + A025444 n

end

end A228500.P9997952913609265546

/-! ## A228500.P2973545146877476073

`gcd(A000038(n), A228506(A001844(n)))`
-/

namespace A228500.P2973545146877476073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A228506 (A001844 n).toNat)

end

end A228500.P2973545146877476073

/-! ## A228500.P14591377836257993859

`lcm(A087960(n), A228506(A001844(n)))`
-/

namespace A228500.P14591377836257993859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A228506 (A001844 n).toNat)

end

end A228500.P14591377836257993859

/-! ## A228500.P14091879447188621958

`A228506(A001844(n))^A008683(2*A000040(n+1))`
-/

namespace A228500.P14091879447188621958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228506 (A001844 n).toNat : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A228500.P14091879447188621958

/-!
# A228501: Number of n X 3 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228501, the canonical program `A228501.P7214165198873070640` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228501 has offset 1).

The definition of A228501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228501.P11107910893786440332

`ogf((2-x)/(1-2x-3x^2+2x^3))`
-/

namespace A228501.P11107910893786440332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, -3, 2] n

end

end A228501.P11107910893786440332

namespace A228501

/-- `ogf((2-x)/(1-2x-3x^2+2x^3))` -/
def P11107910893786440332.Spec : Prop :=
  ∀ n, P11107910893786440332.a n = A228501 (n + 1)

end A228501

/-! ## A228501.P7214165198873070640

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228501

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P7214165198873070640.Spec : Prop :=
  ∀ n, P7214165198873070640.a n = A228501 (n + 1)

theorem P7214165198873070640.correct : P7214165198873070640.Spec := by
  intro n
  simp only [A228501, Nat.add_sub_cancel]

end A228501

/-! ## A228501.P10876510935984537532

`A054854(n)+A046672(n)`
-/

namespace A228501.P10876510935984537532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 n + A046672 n

end

end A228501.P10876510935984537532

namespace A228501

/-- `A054854(n)+A046672(n)` -/
def P10876510935984537532.Spec : Prop :=
  ∀ n, P10876510935984537532.a n = A228501 (n + 1)

end A228501

/-! ## A228501.P15298626144831398333

`∑[A101197(n)]+1-A230893(n+1)`
-/

namespace A228501.P15298626144831398333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A230893 (n + 1))

end

end A228501.P15298626144831398333

namespace A228501

/-- `∑[A101197(n)]+1-A230893(n+1)` -/
def P15298626144831398333.Spec : Prop :=
  ∀ n, P15298626144831398333.a n = A228501 (n + 1)

end A228501

/-! ## A228501.P10332942069071630240

`Δ[A054854(n+1)/2]`
-/

namespace A228501.P10332942069071630240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054854 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228501.P10332942069071630240

namespace A228501

/-- `Δ[A054854(n+1)/2]` -/
def P10332942069071630240.Spec : Prop :=
  ∀ n, P10332942069071630240.a n = (A228501 (n + 1) : ℚ)

end A228501

/-! ## A228501.P11544589628583874183

`A046672(n)+Δ[A101197(n)-A046672(n)]`
-/

namespace A228501.P11544589628583874183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101197 n - A046672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046672 n + (f1 (n + 1) - f1 n)

end

end A228501.P11544589628583874183

namespace A228501

/-- `A046672(n)+Δ[A101197(n)-A046672(n)]` -/
def P11544589628583874183.Spec : Prop :=
  ∀ n, P11544589628583874183.a n = A228501 (n + 1)

end A228501

/-! ## A228501.P4378406740393690140

`Δ[A230893(n+1)+A046672(n)]-A046672(n)`
-/

namespace A228501.P4378406740393690140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 1) + A046672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046672 n

end

end A228501.P4378406740393690140

namespace A228501

/-- `Δ[A230893(n+1)+A046672(n)]-A046672(n)` -/
def P4378406740393690140.Spec : Prop :=
  ∀ n, P4378406740393690140.a n = A228501 (n + 1)

end A228501

/-! ## A228501.P16582157356575977012

`Δ[A230893(n+3)/4]`
-/

namespace A228501.P16582157356575977012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230893 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228501.P16582157356575977012

namespace A228501

/-- `Δ[A230893(n+3)/4]` -/
def P16582157356575977012.Spec : Prop :=
  ∀ n, P16582157356575977012.a n = (A228501 (n + 1) : ℚ)

end A228501

/-! ## A228501.P6846412573588748852

`A228506(∑[n+2]+4)`
-/

namespace A228501.P6846412573588748852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A228501.P6846412573588748852

namespace A228501

/-- `A228506(∑[n+2]+4)` -/
def P6846412573588748852.Spec : Prop :=
  ∀ n, P6846412573588748852.a n = A228501 (n + 1)

end A228501

/-!
# A228502: Number of n X 4 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228502, the canonical program `A228502.P10768000244486256203` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228502 has offset 1).

The definition of A228502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228502.P10768000244486256203

`2*a(n-1)+7*a(n-2)-2*a(n-3)-3*a(n-4)` with `a(0)=3, a(1)=5, a(2)=29, a(3)=87`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228502

/-- `2*a(n-1)+7*a(n-2)-2*a(n-3)-3*a(n-4)` -/
def P10768000244486256203.Spec : Prop :=
  ∀ n, P10768000244486256203.a n = A228502 (n + 1)

theorem P10768000244486256203.correct : P10768000244486256203.Spec := by
  intro n
  simp only [A228502, Nat.add_sub_cancel]

end A228502

/-! ## A228502.P6052017288427953782

`A228506(A374004(n+1))`
-/

namespace A228502.P6052017288427953782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A374004 (n + 1)).toNat

end

end A228502.P6052017288427953782

namespace A228502

/-- `A228506(A374004(n+1))` -/
def P6052017288427953782.Spec : Prop :=
  ∀ n, P6052017288427953782.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P15538845261072453829

`A228506(A052905(n)+9)`
-/

namespace A228502.P15538845261072453829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A052905 n + 9).toNat

end

end A228502.P15538845261072453829

namespace A228502

/-- `A228506(A052905(n)+9)` -/
def P15538845261072453829.Spec : Prop :=
  ∀ n, P15538845261072453829.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P10365100228206549707

`A228506(A055999(n)+10)`
-/

namespace A228502.P10365100228206549707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A055999 n + 10).toNat

end

end A228502.P10365100228206549707

namespace A228502

/-- `A228506(A055999(n)+10)` -/
def P10365100228206549707.Spec : Prop :=
  ∀ n, P10365100228206549707.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P5752235640619349826

`A228506(A167614(n+2)+1)`
-/

namespace A228502.P5752235640619349826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A167614 (n + 2) + 1).toNat

end

end A228502.P5752235640619349826

namespace A228502

/-- `A228506(A167614(n+2)+1)` -/
def P5752235640619349826.Spec : Prop :=
  ∀ n, P5752235640619349826.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P17935616590568862181

`A228506(A167487(n+2)-3)`
-/

namespace A228502.P17935616590568862181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A167487 (n + 2) - 3).toNat

end

end A228502.P17935616590568862181

namespace A228502

/-- `A228506(A167487(n+2)-3)` -/
def P17935616590568862181.Spec : Prop :=
  ∀ n, P17935616590568862181.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P9951698019342780968

`A228506(Δ[A023545(n+1)-n²])`
-/

namespace A228502.P9951698019342780968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (f1 (n + 1) - f1 n).toNat

end

end A228502.P9951698019342780968

namespace A228502

/-- `A228506(Δ[A023545(n+1)-n²])` -/
def P9951698019342780968.Spec : Prop :=
  ∀ n, P9951698019342780968.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P1651784588571251124

`A228506(A027379(n+2))`
-/

namespace A228502.P1651784588571251124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A027379 (n + 2)).toNat

end

end A228502.P1651784588571251124

namespace A228502

/-- `A228506(A027379(n+2))` -/
def P1651784588571251124.Spec : Prop :=
  ∀ n, P1651784588571251124.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P17944210436801446599

`A228506(A055998(n+2))`
-/

namespace A228502.P17944210436801446599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A055998 (n + 2)).toNat

end

end A228502.P17944210436801446599

namespace A228502

/-- `A228506(A055998(n+2))` -/
def P17944210436801446599.Spec : Prop :=
  ∀ n, P17944210436801446599.a n = A228502 (n + 1)

end A228502

/-! ## A228502.P123426089228833287

`A228506(A155212(n)+5)`
-/

namespace A228502.P123426089228833287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A155212 n + 5).toNat

end

end A228502.P123426089228833287

namespace A228502

/-- `A228506(A155212(n)+5)` -/
def P123426089228833287.Spec : Prop :=
  ∀ n, P123426089228833287.a n = A228502 (n + 1)

end A228502

/-!
# A228503: Number of nX5 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228503, there is no canonical definition to state claims against.
-/

/-! ## A228503.P5853977518596069269

`A228506(A374005(n+1))`
-/

namespace A228503.P5853977518596069269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A374005 (n + 1)).toNat

end

end A228503.P5853977518596069269

/-! ## A228503.P15362700722286656996

`A228506(A167499(n+3))`
-/

namespace A228503.P15362700722286656996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A167499 (n + 3)).toNat

end

end A228503.P15362700722286656996

/-! ## A228503.P6936153435550806384

`A228506(A155212(n)+13)`
-/

namespace A228503.P6936153435550806384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A155212 n + 13).toNat

end

end A228503.P6936153435550806384

/-! ## A228503.P17493270316582207212

`A228506(A000217(n+4)+5)`
-/

namespace A228503.P17493270316582207212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A000217 (n + 4) + 5).toNat

end

end A228503.P17493270316582207212

/-! ## A228503.P3608345757000458363

`A228506(A052905(n+1)+10)`
-/

namespace A228503.P3608345757000458363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A052905 (n + 1) + 10).toNat

end

end A228503.P3608345757000458363

/-! ## A228503.P15116385339666952982

`A228506(A055999(n+1)+11)`
-/

namespace A228503.P15116385339666952982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A055999 (n + 1) + 11).toNat

end

end A228503.P15116385339666952982

/-! ## A228503.P12265679157778369519

`A228506(A000124(n+5)-(n+1))`
-/

namespace A228503.P12265679157778369519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A228503.P12265679157778369519

/-! ## A228503.P7185678508261926599

`A228506(A046691(n+3))`
-/

namespace A228503.P7185678508261926599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A046691 (n + 3)).toNat

end

end A228503.P7185678508261926599

/-! ## A228503.P1025827760752082304

`A228506(Δ[A023545(n+1)])`
-/

namespace A228503.P1025827760752082304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (f1 (n + 1) - f1 n).toNat

end

end A228503.P1025827760752082304

/-! ## A228503.P15237193476113388779

`A228506(∑[A020710(n)]+6)`
-/

namespace A228503.P15237193476113388779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A228503.P15237193476113388779

/-!
# A228504: Number of n X 6 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228504, there is no canonical definition to state claims against.
-/

/-! ## A228504.P2600223514250307517

`A228506(A374007(n+1))`
-/

namespace A228504.P2600223514250307517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A374007 (n + 1)).toNat

end

end A228504.P2600223514250307517

/-! ## A228504.P15869776008271279804

`A228506(A000096(n+4)+7)`
-/

namespace A228504.P15869776008271279804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A000096 (n + 4) + 7).toNat

end

end A228504.P15869776008271279804

/-! ## A228504.P12978189012643523592

`A228506(A000217(n+5)+6)`
-/

namespace A228504.P12978189012643523592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A000217 (n + 5) + 6).toNat

end

end A228504.P12978189012643523592

/-! ## A228504.P6846366766586660180

`A228506(Δ[A023545(n+1)]+10)`
-/

namespace A228504.P6846366766586660180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (f1 (n + 1) - f1 n + 10).toNat

end

end A228504.P6846366766586660180

/-!
# A228505: Number of nX7 binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228505, there is no canonical definition to state claims against.
-/

/-! ## A228505.P6886334063233912963

`A228506(A374008(n+1))`
-/

namespace A228505.P6886334063233912963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A374008 (n + 1)).toNat

end

end A228505.P6886334063233912963

/-! ## A228505.P2410885727173090636

`A228506(A167487(n+5))`
-/

namespace A228505.P2410885727173090636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A167487 (n + 5)).toNat

end

end A228505.P2410885727173090636

/-! ## A228505.P611460244481767526

`A228506(A167614(n+5)+4)`
-/

namespace A228505.P611460244481767526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A167614 (n + 5) + 4).toNat

end

end A228505.P611460244481767526

/-! ## A228505.P2482279489042854080

`A228506(A000217(n+6)+7)`
-/

namespace A228505.P2482279489042854080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A000217 (n + 6) + 7).toNat

end

end A228505.P2482279489042854080

/-! ## A228505.P3327422777024948621

`A228506(A000096(n+6)-(n-1))`
-/

namespace A228505.P3327422777024948621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228506 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A228505.P3327422777024948621

/-!
# A228506: T(n,k)=Number of nXk binary arrays with top left value 1 and no two ones adjacent horizontally, vertically, diagonally or antidiagonally.

The programs for A228506, there is no canonical definition to state claims against.
-/

/-! ## A228506.P16462925193780160354

`A228285(n+1)-A215020(A022171(n))`
-/

namespace A228506.P16462925193780160354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (n + 1) - A215020 (A022171 n).toNat

end

end A228506.P16462925193780160354

/-! ## A228506.P19422021664493568

`A228285(n+1)-A308064(record[A247917(n)])`
-/

namespace A228506.P19422021664493568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228285 (n + 1) - A308064 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228506.P19422021664493568

/-!
# A228508: E.g.f. A(x) satisfies the property that the coefficient of x^n in the n-th iteration of e.g.f. A(x), for n>=1, begins with [1,2] and continues with all zeros thereafter.

The programs for A228508, there is no canonical definition to state claims against.
-/

/-! ## A228508.P11707267263312639579

`A046692(∑[A036844(n+1)^n])`
-/

namespace A228508.P11707267263312639579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228508.P11707267263312639579

/-!
# A228509: a(n) = binomial(n^2+n+1,n) * (n+1) / (n^2+n+1) for n>=0.

The programs for A228509, the canonical program `A228509.P8248055446595445672` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228509 has offset 0).

The definition of A228509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228509.P8248055446595445672

`(n+1)*A135862(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228509

/-- `(n+1)*A135862(n)` -/
def P8248055446595445672.Spec : Prop :=
  ∀ n, P8248055446595445672.a n = A228509 n

theorem P8248055446595445672.correct : P8248055446595445672.Spec := by
  intro n
  simp only [A228509]

end A228509

/-! ## A228509.P6360901957651303881

`C(n²+n+1, n)*(n+1)/(n²+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A228509.P6360901957651303881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2 + n + 1) n * (n + 1) : ℚ) / (n ^ 2 + n + 1 : ℚ)

end

end A228509.P6360901957651303881

namespace A228509

/-- `C(n²+n+1, n)*(n+1)/(n²+n+1)` -/
def P6360901957651303881.Spec : Prop :=
  ∀ n, P6360901957651303881.a n = (A228509 n : ℚ)

end A228509

/-! ## A228509.P10537774027223010037

`(n+1)*C(∑[2*n], n)/(n²+1)`
-/

namespace A228509.P10537774027223010037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n : ℚ) / (n ^ 2 + 1 : ℚ))

end

end A228509.P10537774027223010037

namespace A228509

/-- `(n+1)*C(∑[2*n], n)/(n²+1)` -/
def P10537774027223010037.Spec : Prop :=
  ∀ n, P10537774027223010037.a n = (A228509 n : ℚ)

end A228509

/-! ## A228509.P12558968460067353404

`(n+1)*A070914(∑[4*n])`
-/

namespace A228509.P12558968460067353404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228509.P12558968460067353404

namespace A228509

/-- `(n+1)*A070914(∑[4*n])` -/
def P12558968460067353404.Spec : Prop :=
  ∀ n, P12558968460067353404.a n = A228509 n

end A228509

/-! ## A228509.P14005267006303474905

`(n+1)*A295222(A051890(n))`
-/

namespace A228509.P14005267006303474905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A295222 (A051890 n).toNat

end

end A228509.P14005267006303474905

namespace A228509

/-- `(n+1)*A295222(A051890(n))` -/
def P14005267006303474905.Spec : Prop :=
  ∀ n, P14005267006303474905.a n = A228509 n

end A228509

/-!
# A228513: a(n) = Sum_{k=0..n} 2^k*(n!/k!)^2.

The programs for A228513, the canonical program `A228513.P13689135578460022094` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228513 has offset 0).

The definition of A228513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228513.P13689135578460022094

`(n²+2)*a(n-1)-2*(n-1)²*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228513

/-- `(n²+2)*a(n-1)-2*(n-1)²*a(n-2)` -/
def P13689135578460022094.Spec : Prop :=
  ∀ n, P13689135578460022094.a n = A228513 n

theorem P13689135578460022094.correct : P13689135578460022094.Spec := by
  intro n
  simp only [A228513]

end A228513

/-! ## A228513.P17133019666362601522

`2^n+a(n-1)*n²` with `a(0)=1`
-/

namespace A228513.P17133019666362601522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + a (n - 1) * n ^ 2

end

end A228513.P17133019666362601522

namespace A228513

/-- `2^n+a(n-1)*n²` -/
def P17133019666362601522.Spec : Prop :=
  ∀ n, (P17133019666362601522.a n : ℤ) = A228513 n

end A228513

/-! ## A228513.P7540358044119074089

`2^n+n*n*a(n-1)` with `a(0)=1`
-/

namespace A228513.P7540358044119074089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + n * (n * a (n - 1))

end

end A228513.P7540358044119074089

namespace A228513

/-- `2^n+n*n*a(n-1)` -/
def P7540358044119074089.Spec : Prop :=
  ∀ n, (P7540358044119074089.a n : ℤ) = A228513 n

end A228513

/-! ## A228513.P7038882474783849219

`2^n+n*floor(n*a(floor(n²/(n+1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A228513.P7038882474783849219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + n * (n * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat)

end

end A228513.P7038882474783849219

namespace A228513

/-- `2^n+n*floor(n*a(floor(n²/(n+1))))` -/
def P7038882474783849219.Spec : Prop :=
  ∀ n, (P7038882474783849219.a n : ℤ) = A228513 n

end A228513

/-! ## A228513.P12904644366427771984

`A000079(n)+n²*a(n-1)` with `a(0)=1`
-/

namespace A228513.P12904644366427771984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (n ^ 2 : ℤ) * a (n - 1)

end

end A228513.P12904644366427771984

namespace A228513

/-- `A000079(n)+n²*a(n-1)` -/
def P12904644366427771984.Spec : Prop :=
  ∀ n, P12904644366427771984.a n = A228513 n

end A228513

/-!
# A228514: a(n) = Sum_{k=0..n} binomial(n,k)^2*binomial(2k,k+1).

The programs for A228514, there is no canonical definition to state claims against.
-/

/-! ## A228514.P12479248012898447411

`A002893(n)-A086618(n)`
-/

namespace A228514.P12479248012898447411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n - A086618 n

end

end A228514.P12479248012898447411

/-! ## A228514.P6548257235145918726

`(A087457(n+1)-A002893(n))/2`
-/

namespace A228514.P6548257235145918726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087457 (n + 1) - A002893 n : ℚ) / 2

end

end A228514.P6548257235145918726

/-! ## A228514.P15596826446558865327

`(A087457(n+1)-A086618(n))/3`
-/

namespace A228514.P15596826446558865327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087457 (n + 1) - A086618 n : ℚ) / 3

end

end A228514.P15596826446558865327

/-! ## A228514.P18312801019415418418

`(A087457(n+1)+A086618(n))%A002893(n)`
-/

namespace A228514.P18312801019415418418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087457 (n + 1) + A086618 n) (A002893 n)

end

end A228514.P18312801019415418418

/-! ## A228514.P1609312176896036266

`A002893(n)-∑[A246459(n)]/(n+1)²`
-/

namespace A228514.P1609312176896036266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246459 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002893 n : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A228514.P1609312176896036266

/-! ## A228514.P13647858120176787855

`A002896(n)/A000984(n)-A086618(n)`
-/

namespace A228514.P13647858120176787855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A000984 n : ℚ) - (A086618 n : ℚ)

end

end A228514.P13647858120176787855

/-! ## A228514.P15028904797744771024

`A002896(n)/A092392(A000217(n))-A086618(n)`
-/

namespace A228514.P15028904797744771024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A092392 (A000217 n).toNat : ℚ) - (A086618 n : ℚ)

end

end A228514.P15028904797744771024

/-!
# A228515: Nonlinear recursion: a(n) = a(n-1) + Product_{i=1..(n-1)/2} a(n-2i+1)-a(n-2i).

The programs for A228515, there is no canonical definition to state claims against.
-/

/-! ## A228515.P13423962027565763374

`∑[a(n-1)*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A228515.P13423962027565763374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2, 2] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228515.P13423962027565763374

/-! ## A228515.P9943453033077818412

`∑[2^A000045((2*(C(2, n)+n))%(n+2))]`
-/

namespace A228515.P9943453033077818412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (2 * (Nat.choose 2 n + n) % (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228515.P9943453033077818412

/-! ## A228515.P13169820739125611734

`∑[2^A103609(A004274(n))]`
-/

namespace A228515.P13169820739125611734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A103609 (A004274 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228515.P13169820739125611734

/-! ## A228515.P11871894170313102754

`∑[2^A103609(A068670(n))]`
-/

namespace A228515.P11871894170313102754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A103609 (A068670 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228515.P11871894170313102754

/-! ## A228515.P12507447963581540615

`∑[2^A000045((2*A073870(n+1))%(n+2))]`
-/

namespace A228515.P12507447963581540615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000045 (Int.tmod (2 * A073870 (n + 1)) (n + 2 : ℤ)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228515.P12507447963581540615

/-!
# A228516: Nonlinear recursion : a(n) = a(n-1) + product( a(n-2*i+1) - (-1)^i a(n-2*i), i=1..(n-1)/2 ).

The programs for A228516, there is no canonical definition to state claims against.
-/

/-! ## A228516.P16067974830807400468

`∑[∑[A216674(A182857(n))]]`
-/

namespace A228516.P16067974830807400468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216674 (A182857 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228516.P16067974830807400468

/-! ## A228516.P16412435725779125317

`A214815(A073788(n))+A000129(n)`
-/

namespace A228516.P16412435725779125317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214815 (A073788 n).toNat + A000129 n

end

end A228516.P16412435725779125317

/-! ## A228516.P5662694820213995590

`A358304(A056278(n+1))+A000129(n)`
-/

namespace A228516.P5662694820213995590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358304 (A056278 (n + 1)).toNat + A000129 n

end

end A228516.P5662694820213995590

/-!
# A228518: a(n) is the least r > 1 for which the interval (r*n, r*(n+1)) contains no terms of A050376 or a(n) = 0 if no such r exists.

The programs for A228518, there is no canonical definition to state claims against.
-/

/-! ## A228518.P3308136828500398727

`A188672(A071786(n+1))`
-/

namespace A228518.P3308136828500398727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188672 (A071786 (n + 1)).toNat

end

end A228518.P3308136828500398727

/-! ## A228518.P4003762974612313918

`A188672(A219209(n)+1)`
-/

namespace A228518.P4003762974612313918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188672 (A219209 n + 1).toNat

end

end A228518.P4003762974612313918

/-! ## A228518.P16065984548818974223

`A188672(n+1)+A174875(A157177(n))`
-/

namespace A228518.P16065984548818974223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188672 (n + 1) + A174875 (A157177 n).toNat

end

end A228518.P16065984548818974223

/-! ## A228518.P10643707386587871001

`gcd(A188672(n+1), A188672(A008518(n)))`
-/

namespace A228518.P10643707386587871001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188672 (n + 1)) (A188672 (A008518 n).toNat)

end

end A228518.P10643707386587871001

/-! ## A228518.P8171308860865076194

`A188672(or(n+1, A081580(n)-A008288(n)))`
-/

namespace A228518.P8171308860865076194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188672 (Int.lor (n + 1 : ℤ) (A081580 n - A008288 n)).toNat

end

end A228518.P8171308860865076194

/-!
# A228521: 

The programs for A228521, there is no canonical definition to state claims against.
-/

/-! ## A228521.P13635295811423285902

`A041046(10*n+4)`
-/

namespace A228521.P13635295811423285902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041046 (10 * n + 4)

end

end A228521.P13635295811423285902

/-!
# A228522: 

The programs for A228522, there is no canonical definition to state claims against.
-/

/-! ## A228522.P1364110384194052203

`A041047(10*n+4)`
-/

namespace A228522.P1364110384194052203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041047 (10 * n + 4)

end

end A228522.P1364110384194052203

/-! ## A228522.P5164769290043615788

`A042397(Δ[A005408(A000326(n))])`
-/

namespace A228522.P5164769290043615788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042397 (f1 (n + 1) - f1 n).toNat

end

end A228522.P5164769290043615788

/-!
# A228523: Numbers that are not the product of two Fibonacci numbers (not necessarily distinct).

The programs for A228523, there is no canonical definition to state claims against.
-/

/-! ## A228523.P8251365735276865981

`comp[A049997(n)]`
-/

namespace A228523.P8251365735276865981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P8251365735276865981

/-! ## A228523.P3788195284707207776

`comp[A098356(n)]`
-/

namespace A228523.P3788195284707207776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P3788195284707207776

/-! ## A228523.P6042724286685645740

`comp[A058071(n)-1]+1`
-/

namespace A228523.P6042724286685645740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A228523.P6042724286685645740

/-! ## A228523.P9325119196615968799

`comp[A143211(n+1)-char[1]]`
-/

namespace A228523.P9325119196615968799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143211 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P9325119196615968799

/-! ## A228523.P16506888315045602262

`comp[A058071(n-a(2%n))]` with `a(0)=0`
-/

namespace A228523.P16506888315045602262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A058071 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P16506888315045602262

/-! ## A228523.P5765137878272359718

`comp[xor(C(2, n+2), A058071(n+1))]`
-/

namespace A228523.P5765137878272359718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 2 (n + 2) : ℤ) (A058071 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P5765137878272359718

/-! ## A228523.P11850888965658725204

`lt[2, A256660(A256662(n))]`
-/

namespace A228523.P11850888965658725204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 (A256662 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A228523.P11850888965658725204

/-! ## A228523.P14500167785543211133

`comp[A058071(n)-A108037(n)]`
-/

namespace A228523.P14500167785543211133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A108037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P14500167785543211133

/-! ## A228523.P3222102545145366247

`comp[A058071(n)%A000032(n)]`
-/

namespace A228523.P3222102545145366247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058071 n) (A000032 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A228523.P3222102545145366247

/-!
# A228524: Triangle read by rows: T(n,k) = total number of occurrences of parts k in the n-th section of the set of compositions (ordered partitions) of any integer >= n.

The programs for A228524, the canonical program `A228524.P1716319160841031381` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228524 has offset 1).

The definition of A228524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228524.P1592537840069890012

`A045891(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A228524.P1592537840069890012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A228524.P1592537840069890012

namespace A228524

/-- `A045891(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P1592537840069890012.Spec : Prop :=
  ∀ n, P1592537840069890012.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P2485165772157668710

`A045891(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A228524.P2485165772157668710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A228524.P2485165772157668710

namespace A228524

/-- `A045891(C(comp[∑[n]]-n, 2)-n-1)` -/
def P2485165772157668710.Spec : Prop :=
  ∀ n, P2485165772157668710.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P2360764416406102394

`abs(A081037(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A228524.P2360764416406102394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081037 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))|

end

end A228524.P2360764416406102394

namespace A228524

/-- `abs(A081037(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P2360764416406102394.Spec : Prop :=
  ∀ n, P2360764416406102394.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P11722276215069451401

`A045891(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A228524.P11722276215069451401
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A228524.P11722276215069451401

namespace A228524

/-- `A045891(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))` -/
def P11722276215069451401.Spec : Prop :=
  ∀ n, P11722276215069451401.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P1716319160841031381

`A045891(A025581(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A228524

/-- `A045891(A025581(n))` -/
def P1716319160841031381.Spec : Prop :=
  ∀ n, P1716319160841031381.a n = A228524 (n + 1)

theorem P1716319160841031381.correct : P1716319160841031381.Spec := by
  intro n
  simp only [A228524, Nat.add_sub_cancel]

end A228524

/-! ## A228524.P14163347154974906507

`A045891(log2(A130321(n)))`
-/

namespace A228524.P14163347154974906507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A228524.P14163347154974906507

namespace A228524

/-- `A045891(log2(A130321(n)))` -/
def P14163347154974906507.Spec : Prop :=
  ∀ n, P14163347154974906507.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P8210258670879689404

`A045891(A193592(n+1))`
-/

namespace A228524.P8210258670879689404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (A193592 (n + 1)).toNat

end

end A228524.P8210258670879689404

namespace A228524

/-- `A045891(A193592(n+1))` -/
def P8210258670879689404.Spec : Prop :=
  ∀ n, P8210258670879689404.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P9865976533829057118

`A143275(A130321(n))`
-/

namespace A228524.P9865976533829057118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143275 (A130321 n).toNat

end

end A228524.P9865976533829057118

namespace A228524

/-- `A143275(A130321(n))` -/
def P9865976533829057118.Spec : Prop :=
  ∀ n, P9865976533829057118.a n = A228524 (n + 1)

end A228524

/-! ## A228524.P13900268701017456318

`A228527(n+1)/A002260(n+1)`
-/

namespace A228524.P13900268701017456318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228527 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A228524.P13900268701017456318

namespace A228524

/-- `A228527(n+1)/A002260(n+1)` -/
def P13900268701017456318.Spec : Prop :=
  ∀ n, P13900268701017456318.a n = (A228524 (n + 1) : ℚ)

end A228524

/-! ## A228524.P12407251108274488449

`A221876(n+1)/A228526(n+1)*A228527(n+1)`
-/

namespace A228524.P12407251108274488449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221876 (n + 1) : ℚ) / (A228526 (n + 1) : ℚ) * (A228527 (n + 1) : ℚ)

end

end A228524.P12407251108274488449

namespace A228524

/-- `A221876(n+1)/A228526(n+1)*A228527(n+1)` -/
def P12407251108274488449.Spec : Prop :=
  ∀ n, P12407251108274488449.a n = (A228524 (n + 1) : ℚ)

end A228524

/-!
# A228525: Triangle read by rows in which row n lists the compositions (ordered partitions) of n in colexicographic order.

The programs for A228525, there is no canonical definition to state claims against.
-/

/-! ## A228525.P15529712362554297761

`A337260(∑[A022553(floor(n/5))])`
-/

namespace A228525.P15529712362554297761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 ⌊(n : ℚ) / 5⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228525.P15529712362554297761

/-! ## A228525.P6175991356105346499

`A054065(A337785(n+1)%A258698(n))`
-/

namespace A228525.P6175991356105346499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054065 (Int.tmod (A337785 (n + 1)) (A258698 n)).toNat

end

end A228525.P6175991356105346499

/-! ## A228525.P17471284903091627170

`A054065(A337785(n+1))%A158661(n+4)`
-/

namespace A228525.P17471284903091627170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054065 (A337785 (n + 1)).toNat) (A158661 (n + 4))

end

end A228525.P17471284903091627170

/-! ## A228525.P11766695081694104343

`A337260(∑[A059197(n+1)²])`
-/

namespace A228525.P11766695081694104343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059197 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A228525.P11766695081694104343

/-!
# A228526: Triangle read by rows: T(n,k) = sum of all parts of size k in all compositions (ordered partitions) of n.

The programs for A228526, there is no canonical definition to state claims against.
-/

/-! ## A228526.P11393055066100056090

`(1-C(∑[char[∑[n]]], 2)+n)*A045623(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A228526.P11393055066100056090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A045623 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A228526.P11393055066100056090

/-! ## A228526.P3448942306758885120

`A002260(n+1)*A221876(n+1)`
-/

namespace A228526.P3448942306758885120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A221876 (n + 1)

end

end A228526.P3448942306758885120

/-! ## A228526.P1635703980636882466

`(A002262(n)+1)*A221876(n+1)`
-/

namespace A228526.P1635703980636882466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A221876 (n + 1)

end

end A228526.P1635703980636882466

/-! ## A228526.P4772370424041117199

`A057555(Δ[n²])*A221876(n+1)`
-/

namespace A228526.P4772370424041117199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A221876 (n + 1)

end

end A228526.P4772370424041117199

/-! ## A228526.P8607775825507668391

`abs(A140756(n+1)*A221876(n+1))`
-/

namespace A228526.P8607775825507668391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A221876 (n + 1)|

end

end A228526.P8607775825507668391

/-! ## A228526.P16297956595424346290

`sqrt(A133819(n+1))*A221876(n+1)`
-/

namespace A228526.P16297956595424346290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A221876 (n + 1) : ℝ)

end

end A228526.P16297956595424346290

/-! ## A228526.P4712682542927301680

`(sqrt(A143844(n))+1)*A221876(n+1)`
-/

namespace A228526.P4712682542927301680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 1) * (A221876 (n + 1) : ℝ)

end

end A228526.P4712682542927301680

/-! ## A228526.P6753450860108198548

`A097285(2*n+1)*A221876(n+1)`
-/

namespace A228526.P6753450860108198548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * n + 1) * A221876 (n + 1)

end

end A228526.P6753450860108198548

/-! ## A228526.P1493004790678370233

`A000005(2^(n-C(∑[char[∑[n]]], 2)))*A221876(n+1)`
-/

namespace A228526.P1493004790678370233
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat * A221876 (n + 1)

end

end A228526.P1493004790678370233

/-! ## A228526.P11344936984315989772

`A000005(A059268(n))*A221876(n+1)`
-/

namespace A228526.P11344936984315989772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A221876 (n + 1)

end

end A228526.P11344936984315989772

/-!
# A228527: Triangle read by rows: T(n,k) is the sum of all parts of size k of the n-th section of the set of compositions ( ordered partitions) of any integer >= n.

The programs for A228527, there is no canonical definition to state claims against.
-/

/-! ## A228527.P7092609533519070972

`(1-(C(comp[∑[n-1]]-n, 2)-n))*A228524(n+1)`
-/

namespace A228527.P7092609533519070972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))) * A228524 (n + 1)

end

end A228527.P7092609533519070972

/-! ## A228527.P14098286890659343171

`(1-C(∑[char[∑[n]]], 2)+n)*A045891(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A228527.P14098286890659343171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A045891 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A228527.P14098286890659343171

/-! ## A228527.P9151185751698356355

`A002260(n+1)*A228524(n+1)`
-/

namespace A228527.P9151185751698356355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A228524 (n + 1)

end

end A228527.P9151185751698356355

/-! ## A228527.P18061938410999430696

`(A002262(n)+1)*A228524(n+1)`
-/

namespace A228527.P18061938410999430696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A228524 (n + 1)

end

end A228527.P18061938410999430696

/-! ## A228527.P3572550104997983676

`A057555(Δ[n²])*A228524(n+1)`
-/

namespace A228527.P3572550104997983676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A228524 (n + 1)

end

end A228527.P3572550104997983676

/-! ## A228527.P14634188767779915255

`abs(A140756(n+1)*A228524(n+1))`
-/

namespace A228527.P14634188767779915255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1) * A228524 (n + 1)|

end

end A228527.P14634188767779915255

/-! ## A228527.P1401629403946638886

`sqrt(A133819(n+1))*A228524(n+1)`
-/

namespace A228527.P1401629403946638886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A228524 (n + 1) : ℝ)

end

end A228527.P1401629403946638886

/-! ## A228527.P14550939426135219854

`A228524(n+1)*A349520(2*n+1)`
-/

namespace A228527.P14550939426135219854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228524 (n + 1) * A349520 (2 * n + 1)

end

end A228527.P14550939426135219854

/-! ## A228527.P11216192593535659851

`A002260(n+1)*A045891(A025581(n))`
-/

namespace A228527.P11216192593535659851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A045891 (A025581 n).toNat

end

end A228527.P11216192593535659851

/-! ## A228527.P8424675264963118413

`A000005(A059268(n))*A228524(n+1)`
-/

namespace A228527.P8424675264963118413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A228524 (n + 1)

end

end A228527.P8424675264963118413

/-!
# A228528: Triangle read by rows in which row n lists the compositions (ordered partitions) of n (see Comments lines for definition).

The programs for A228528, there is no canonical definition to state claims against.
-/

/-! ## A228528.P521593080039643092

`gcd(A000726(n), A095389(A145131(n)))`
-/

namespace A228528.P521593080039643092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000726 n) (A095389 (A145131 n).toNat)

end

end A228528.P521593080039643092

/-! ## A228528.P8944033130935067665

`A014963(gcd(A082990(n), A224704(n)))`
-/

namespace A228528.P8944033130935067665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A082990 n) (A224704 n))

end

end A228528.P8944033130935067665

/-! ## A228528.P9311448286536286175

`A385817(A378980(3*n+4)%A289440(2*n+5))`
-/

namespace A228528.P9311448286536286175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385817 (Int.tmod (A378980 (3 * n + 4)) (A289440 (2 * n + 5))).toNat

end

end A228528.P9311448286536286175

/-! ## A228528.P7542954939373361622

`A043279(A126063(n)+A072637(n))`
-/

namespace A228528.P7542954939373361622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043279 (A126063 n + A072637 n).toNat

end

end A228528.P7542954939373361622

/-! ## A228528.P6535127226279438520

`gcd(A020639(A224704(n)), A215694(n))`
-/

namespace A228528.P6535127226279438520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A224704 n).toNat) (A215694 n)

end

end A228528.P6535127226279438520

/-!
# A228529: a(n) = prime(n*prime(n)).

The programs for A228529, the canonical program `A228529.P12052301848896517561` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228529 has offset 1).

The definition of A228529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228529.P12052301848896517561

`A000040(A033286(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A228529

/-- `A000040(A033286(n+1))` -/
def P12052301848896517561.Spec : Prop :=
  ∀ n, P12052301848896517561.a n = A228529 (n + 1)

theorem P12052301848896517561.correct : P12052301848896517561.Spec := by
  intro n
  simp only [A228529, Nat.add_sub_cancel]

end A228529

/-! ## A228529.P5530170658092524767

`A352028(A000040(n+1))`
-/

namespace A228529.P5530170658092524767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (A000040 (n + 1)).toNat

end

end A228529.P5530170658092524767

namespace A228529

/-- `A352028(A000040(n+1))` -/
def P5530170658092524767.Spec : Prop :=
  ∀ n, P5530170658092524767.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P3048481398502679137

`A352028(A008578(n+2))`
-/

namespace A228529.P3048481398502679137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (A008578 (n + 2)).toNat

end

end A228529.P3048481398502679137

namespace A228529

/-- `A352028(A008578(n+2))` -/
def P3048481398502679137.Spec : Prop :=
  ∀ n, P3048481398502679137.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P11889629915147743172

`A352028(record[A006530(n+2)])`
-/

namespace A228529.P11889629915147743172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228529.P11889629915147743172

namespace A228529

/-- `A352028(record[A006530(n+2)])` -/
def P11889629915147743172.Spec : Prop :=
  ∀ n, P11889629915147743172.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P14139292451291806995

`A352028(record[A014963(n+2)])`
-/

namespace A228529.P14139292451291806995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228529.P14139292451291806995

namespace A228529

/-- `A352028(record[A014963(n+2)])` -/
def P14139292451291806995.Spec : Prop :=
  ∀ n, P14139292451291806995.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P4549876317617843877

`A352028(record[A020639(n+2)])`
-/

namespace A228529.P4549876317617843877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A228529.P4549876317617843877

namespace A228529

/-- `A352028(record[A020639(n+2)])` -/
def P4549876317617843877.Spec : Prop :=
  ∀ n, P4549876317617843877.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P10098482645399036705

`A352028(A014689(n+1)+1+n)`
-/

namespace A228529.P10098482645399036705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A228529.P10098482645399036705

namespace A228529

/-- `A352028(A014689(n+1)+1+n)` -/
def P10098482645399036705.Spec : Prop :=
  ∀ n, P10098482645399036705.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P13765879717370236930

`A352028(A033286(n+1)/(n+1))`
-/

namespace A228529.P13765879717370236930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A228529.P13765879717370236930

namespace A228529

/-- `A352028(A033286(n+1)/(n+1))` -/
def P13765879717370236930.Spec : Prop :=
  ∀ n, P13765879717370236930.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P11513372308651984966

`A352028(A007504(n+1)-A007504(n))`
-/

namespace A228529.P11513372308651984966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (A007504 (n + 1) - A007504 n).toNat

end

end A228529.P11513372308651984966

namespace A228529

/-- `A352028(A007504(n+1)-A007504(n))` -/
def P11513372308651984966.Spec : Prop :=
  ∀ n, P11513372308651984966.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P4532814520446473230

`A352028(A080697(n+1)-A230285(n+1))`
-/

namespace A228529.P4532814520446473230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (A080697 (n + 1) - A230285 (n + 1)).toNat

end

end A228529.P4532814520446473230

namespace A228529

/-- `A352028(A080697(n+1)-A230285(n+1))` -/
def P4532814520446473230.Spec : Prop :=
  ∀ n, P4532814520446473230.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P17476427657571589668

`A352028(A272211(n+1)/A000203(n+1))`
-/

namespace A228529.P17476427657571589668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352028 (SequenceMachineLib.roundAway ((A272211 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A228529.P17476427657571589668

namespace A228529

/-- `A352028(A272211(n+1)/A000203(n+1))` -/
def P17476427657571589668.Spec : Prop :=
  ∀ n, P17476427657571589668.a n = A228529 (n + 1)

end A228529

/-! ## A228529.P14332368205664627381

`A247665(A248387((n+1)*A000040(n+1)))`
-/

namespace A228529.P14332368205664627381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 ((n + 1 : ℤ) * A000040 (n + 1)).toNat).toNat

end

end A228529.P14332368205664627381

namespace A228529

/-- `A247665(A248387((n+1)*A000040(n+1)))` -/
def P14332368205664627381.Spec : Prop :=
  ∀ n, P14332368205664627381.a n = A228529 (n + 1)

end A228529

/-!
# A228531: Triangle read by rows in which row n lists the partitions of n in reverse lexicographic order.

The programs for A228531, there is no canonical definition to state claims against.
-/

/-! ## A228531.P12278991966042120261

`A344091(n)+A185284(A138117(n+1))`
-/

namespace A228531.P12278991966042120261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344091 n + A185284 (A138117 (n + 1)).toNat

end

end A228531.P12278991966042120261

/-!
# A228532: a(n) = order of the torsion subgroup of the elliptic curve y^2 = x^3 + n if n is a sixth-power-free integer, otherwise -1.

The programs for A228532, there is no canonical definition to state claims against.
-/

/-! ## A228532.P8751849816718301098

`A106224(∏{e}[n+1, 4*#+#])`
-/

namespace A228532.P8751849816718301098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106224 (∏ p ∈ Nat.primeFactors (f1 n), (4 * Nat.factorization (f1 n) p + Nat.factorization (f1 n) p))

end

end A228532.P8751849816718301098

/-! ## A228532.P10435191776018340641

`A106224(A360996(n+1))`
-/

namespace A228532.P10435191776018340641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106224 (A360996 (n + 1)).toNat

end

end A228532.P10435191776018340641

/-!
# A228535: 

The programs for A228535, there is no canonical definition to state claims against.
-/

/-! ## A228535.P18141452628142578140

`A041090(A017281(n)+3)`
-/

namespace A228535.P18141452628142578140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041090 (A017281 n + 3).toNat

end

end A228535.P18141452628142578140

/-! ## A228535.P5494952024033744886

`A041090(2*A016873(n))`
-/

namespace A228535.P5494952024033744886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041090 (2 * A016873 n).toNat

end

end A228535.P5494952024033744886

/-!
# A228536: 

The programs for A228536, there is no canonical definition to state claims against.
-/

/-! ## A228536.P17712508682707481580

`A042637(6*n+2)`
-/

namespace A228536.P17712508682707481580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042637 (6 * n + 2)

end

end A228536.P17712508682707481580

/-!
# A228538: 

The programs for A228538, there is no canonical definition to state claims against.
-/

/-! ## A228538.P10992268753323562253

`A041101(xor(1, A063205(3*n+2)))`
-/

namespace A228538.P10992268753323562253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041101 (Int.xor 1 (A063205 (3 * n + 2))).toNat

end

end A228538.P10992268753323562253

/-!
# A228539: Rows of binary Walsh matrices interpreted as reverse binary numbers.

The programs for A228539, there is no canonical definition to state claims against.
-/

/-! ## A228539.P8384498289796240460

`A286865(2*(n+1))-A228540(n)`
-/

namespace A228539.P8384498289796240460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286865 (2 * (n + 1)) - A228540 n

end

end A228539.P8384498289796240460

/-! ## A228539.P7915559629152700571

`A197818(2^floor(log2(n+1))-1)-A228540(n)`
-/

namespace A228539.P7915559629152700571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197818 (2 ^ Nat.log 2 (n + 1) - 1) - A228540 n

end

end A228539.P7915559629152700571

/-! ## A228539.P4267888647050563358

`A228540(2^floor(log2(n+1))-1)-A228540(n)`
-/

namespace A228539.P4267888647050563358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228540 (2 ^ Nat.log 2 (n + 1) - 1) - A228540 n

end

end A228539.P4267888647050563358

/-! ## A228539.P3561941199433398791

`xor(A228540(n), A286865(A004755(n+1)))`
-/

namespace A228539.P3561941199433398791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228540 n) (A286865 (A004755 (n + 1)).toNat)

end

end A228539.P3561941199433398791

/-! ## A228539.P8983203658849507734

`xor(A228540(n), A286865(A206332(n+1)))`
-/

namespace A228539.P8983203658849507734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228540 n) (A286865 (A206332 (n + 1)).toNat)

end

end A228539.P8983203658849507734

/-!
# A228540: Rows of negated binary Walsh matrices interpreted as reverse binary numbers.

The programs for A228540, there is no canonical definition to state claims against.
-/

/-! ## A228540.P15432318851600095330

`A286865(2*(n+1))-A228539(n)`
-/

namespace A228540.P15432318851600095330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286865 (2 * (n + 1)) - A228539 n

end

end A228540.P15432318851600095330

/-! ## A228540.P6559902919100632372

`A197818(2^floor(log2(n+1))-1)-A228539(n)`
-/

namespace A228540.P6559902919100632372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197818 (2 ^ Nat.log 2 (n + 1) - 1) - A228539 n

end

end A228540.P6559902919100632372

/-! ## A228540.P15335948935302694726

`xor(A228539(n), A286865(A004755(n+1)))`
-/

namespace A228540.P15335948935302694726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228539 n) (A286865 (A004755 (n + 1)).toNat)

end

end A228540.P15335948935302694726

/-! ## A228540.P405354688588772340

`xor(A228539(n), A286865(A206332(n+1)))`
-/

namespace A228540.P405354688588772340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228539 n) (A286865 (A206332 (n + 1)).toNat)

end

end A228540.P405354688588772340

/-! ## A228540.P13614200334042156389

`xor(A228539(n), A286865(A000027(2*n+3)))`
-/

namespace A228540.P13614200334042156389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228539 n) (A286865 (A000027 (2 * n + 3)).toNat)

end

end A228540.P13614200334042156389

/-!
# A228541: Numbers having at least one prime factor of the form 30*k + 1.

The programs for A228541, there is no canonical definition to state claims against.
-/

/-! ## A228541.P17278131313566234906

`∩[A066500(n+1), A347831(n+1)]`
-/

namespace A228541.P17278131313566234906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228541.P17278131313566234906

/-! ## A228541.P17568863623938733619

`∩[A347831(n+1), A374365(n+1)]`
-/

namespace A228541.P17568863623938733619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228541.P17568863623938733619

/-!
# A228542: Numbers that are sums of two coprime positive fifth powers.

The programs for A228542, there is no canonical definition to state claims against.
-/

/-! ## A228542.P6149355336261160597

`filter[A003347(n+1), A307430(#)]`
-/

namespace A228542.P6149355336261160597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A228542.P6149355336261160597

/-! ## A228542.P6545797236521836929

`filter[A004842(n+3), A307430(#)]`
-/

namespace A228542.P6545797236521836929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A228542.P6545797236521836929

/-! ## A228542.P13711649921406509751

`A003347(lt[A357189(n), A341971(n+1)])`
-/

namespace A228542.P13711649921406509751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A228542.P13711649921406509751

/-!
# A228543: a(n) is the integer-valued average gap between successive primes from prime(1) to prime(k(n)), where k(n) = A049036(n).

The programs for A228543, there is no canonical definition to state claims against.
-/

/-! ## A228543.P4522702262977835597

`A049066(n+1)+1`
-/

namespace A228543.P4522702262977835597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049066 (n + 1) + 1

end

end A228543.P4522702262977835597

/-! ## A228543.P12745350935472685740

`(A049038(n+1)-2)/(A049036(n+1)-1)`
-/

namespace A228543.P12745350935472685740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049038 (n + 1) - 2 : ℚ) / (A049036 (n + 1) - 1 : ℚ)

end

end A228543.P12745350935472685740

/-!
# A228551: Number of connected labeled graded posets on n vertices.

The programs for A228551, there is no canonical definition to state claims against.
-/

/-! ## A228551.P14886758377887944399

`A076895(A001035(n))`
-/

namespace A228551.P14886758377887944399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076895 (A001035 n).toNat

end

end A228551.P14886758377887944399

/-! ## A228551.P17718090805265499882

`A076895(A245767(∑[n]))`
-/

namespace A228551.P17718090805265499882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076895 (A245767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A228551.P17718090805265499882

/-!
# A228552: Square root of the absolute value of A069191(n).

The programs for A228552, there is no canonical definition to state claims against.
-/

/-! ## A228552.P416282165458885157

`sqrt(abs(A069191(n+1)))`
-/

namespace A228552.P416282165458885157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|A069191 (n + 1)| : ℝ)

end

end A228552.P416282165458885157

/-! ## A228552.P10810585663031405204

`sqrt(A069191(n+1)*A087960(n))`
-/

namespace A228552.P10810585663031405204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069191 (n + 1) * A087960 n : ℝ)

end

end A228552.P10810585663031405204

/-! ## A228552.P4195457539302381397

`sqrt(gcd(A000038(n), A069191(n+1)))`
-/

namespace A228552.P4195457539302381397
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A000038 n) (A069191 (n + 1)) : ℝ)

end

end A228552.P4195457539302381397

/-! ## A228552.P4683209559910417083

`sqrt(lcm(A033999(n), A069191(n+1)))`
-/

namespace A228552.P4683209559910417083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (A033999 n) (A069191 (n + 1)) : ℝ)

end

end A228552.P4683209559910417083

/-! ## A228552.P6748413528971191506

`abs(A069191(n+1))^(A008486(n)/A008458(n))`
-/

namespace A228552.P6748413528971191506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (|A069191 (n + 1)| : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

end

end A228552.P6748413528971191506

/-!
# A228553: Sum of the products formed by multiplying together the smaller and larger parts of each Goldbach partition of 2n.

The programs for A228553, there is no canonical definition to state claims against.
-/

/-! ## A228553.P7006369088282230848

`A243485(2*(n+1))`
-/

namespace A228553.P7006369088282230848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243485 (2 * (n + 1))

end

end A228553.P7006369088282230848

/-! ## A228553.P17099312127235295477

`abs(A243485(n+2+n)-n)+n`
-/

namespace A228553.P17099312127235295477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A243485 (n + 2 + n) - (n : ℤ)| + (n : ℤ)

end

end A228553.P17099312127235295477

/-! ## A228553.P8087411437399623793

`A243485(n+2+n)%∑[A007202(n)]`
-/

namespace A228553.P8087411437399623793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (n + 2 + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228553.P8087411437399623793

/-! ## A228553.P5493589857730053772

`A243485(A103517(n))%Δ[A002817(n)]`
-/

namespace A228553.P5493589857730053772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (A103517 n).toNat) (f1 (n + 1) - f1 n)

end

end A228553.P5493589857730053772

/-! ## A228553.P11767494243229527891

`A057979(2*n)*A243485(A103517(n))`
-/

namespace A228553.P11767494243229527891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A243485 (A103517 n).toNat

end

end A228553.P11767494243229527891

/-! ## A228553.P8190853399913923297

`A243485(A051755(n+2))%A006322(n+1)`
-/

namespace A228553.P8190853399913923297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (A051755 (n + 2)).toNat) (A006322 (n + 1))

end

end A228553.P8190853399913923297

/-! ## A228553.P8222353881640884462

`char[A057979(n)]*A243485(A103517(n))`
-/

namespace A228553.P8222353881640884462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A243485 (A103517 n).toNat

end

end A228553.P8222353881640884462

/-! ## A228553.P12844106998704377

`A280652(A000124(n))+A243485(A103517(n))`
-/

namespace A228553.P12844106998704377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280652 (A000124 n).toNat + A243485 (A103517 n).toNat

end

end A228553.P12844106998704377

/-! ## A228553.P3935854640964145938

`A243485(n+2+n)+A010054(A000096(n+3))`
-/

namespace A228553.P3935854640964145938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243485 (n + 2 + n) + A010054 (A000096 (n + 3)).toNat

end

end A228553.P3935854640964145938

/-!
# A228554: 

The programs for A228554, there is no canonical definition to state claims against.
-/

/-! ## A228554.P2357499505225765540

`A041150(A017281(n)+3)`
-/

namespace A228554.P2357499505225765540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041150 (A017281 n + 3).toNat

end

end A228554.P2357499505225765540

/-! ## A228554.P13879224696138529782

`A041150(2*A016873(n))`
-/

namespace A228554.P13879224696138529782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041150 (2 * A016873 n).toNat

end

end A228554.P13879224696138529782

/-!
# A228555: 

The programs for A228555, there is no canonical definition to state claims against.
-/

/-! ## A228555.P6818952982580874210

`A041151(A017281(n)+3)`
-/

namespace A228555.P6818952982580874210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041151 (A017281 n + 3).toNat

end

end A228555.P6818952982580874210

/-! ## A228555.P1581901592124619800

`A041151(2*A016873(n))`
-/

namespace A228555.P1581901592124619800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041151 (2 * A016873 n).toNat

end

end A228555.P1581901592124619800

/-!
# A228557: Determinant of the n X n matrix with (i,j)-entry equal to 1 or 0 according as i + j and i + j + 2 are twin primes or not.

The programs for A228557, there is no canonical definition to state claims against.
-/

/-! ## A228557.P346080776312424592

`A348608(A001511(n+5))%A095345(3*n+5)`
-/

namespace A228557.P346080776312424592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348608 (A001511 (n + 5)).toNat) (A095345 (3 * n + 5))

end

end A228557.P346080776312424592

/-! ## A228557.P12036425439677834021

`Δ[A289034(A295962(A008619(n)))]`
-/

namespace A228557.P12036425439677834021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A295962 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228557.P12036425439677834021

/-! ## A228557.P17388450382125983419

`Δ[A292077(A151800(A007931(n+1)))]`
-/

namespace A228557.P17388450382125983419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (A151800 (A007931 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228557.P17388450382125983419

/-! ## A228557.P3259915809729630411

`A030302(A138137(n+1))*A056594(n+1)`
-/

namespace A228557.P3259915809729630411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A138137 (n + 1)).toNat * A056594 (n + 1)

end

end A228557.P3259915809729630411

/-! ## A228557.P8219561811144082508

`A163805(n)%A106788(∑[A105047(n+1)])`
-/

namespace A228557.P8219561811144082508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163805 n) (A106788 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A228557.P8219561811144082508

/-!
# A228559: Determinant of the n X n matrix with (i,j)-entry equal to 1 or 0 according as i + j is a Sophie Germain prime or not.

The programs for A228559, there is no canonical definition to state claims against.
-/

/-! ## A228559.P779425916426730128

`((-1)^∑[n])%A072560(2^n)`
-/

namespace A228559.P779425916426730128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A072560 (2 ^ n))

end

end A228559.P779425916426730128

/-! ## A228559.P13737646122837531575

`((-1)^∑[n])%dr(A198081(2^n))`
-/

namespace A228559.P13737646122837531575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (SequenceMachineLib.digitalRoot (A198081 (2 ^ n)) : ℤ)

end

end A228559.P13737646122837531575

/-! ## A228559.P5912521760795030629

`(-A157012(n-gcd(n, ∑[n])))^∑[n^5]`
-/

namespace A228559.P5912521760795030629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A157012 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A228559.P5912521760795030629

/-! ## A228559.P13744173381102349154

`A092220(A259592(n))`
-/

namespace A228559.P13744173381102349154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (A259592 n).toNat

end

end A228559.P13744173381102349154

/-! ## A228559.P5398426708799218483

`A011584(A354080(n+1))`
-/

namespace A228559.P5398426708799218483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011584 (A354080 (n + 1)).toNat

end

end A228559.P5398426708799218483

/-!
# A228560: Curvature (rounded down) of the circle inscribed in the n-th golden triangle arranged in a spiral form.

The programs for A228560, there is no canonical definition to state claims against.
-/

/-! ## A228560.P5240389206276381211

`floor(sqrt(∑[ϕ*floor(ϕ*a(n-1))]))` with `a(0)=5`
-/

namespace A228560.P5240389206276381211
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [5] fun n f1 =>
  Real.goldenRatio * (⌊Real.goldenRatio * f1 (n - 1)⌋ : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A228560.P5240389206276381211

/-! ## A228560.P3470048156014400290

`floor(2*sqrt(A048575(n)))`
-/

namespace A228560.P3470048156014400290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A048575 n : ℝ)⌋

end

end A228560.P3470048156014400290

/-! ## A228560.P13062550709785652027

`floor(sqrt(A022406(Δ[n²])))`
-/

namespace A228560.P13062550709785652027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A022406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A228560.P13062550709785652027

/-! ## A228560.P12439547047800032852

`floor(sqrt(Δ[A022406(2*n)]))`
-/

namespace A228560.P12439547047800032852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A228560.P12439547047800032852

/-! ## A228560.P4610137378733328991

`floor(2*sqrt(Δ[A035508(n)]))`
-/

namespace A228560.P4610137378733328991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌋

end

end A228560.P4610137378733328991

/-!
# A228561: Determinant of the n X n matrix with (i,j)-entry equal to 1 or 0 according as i + j and 4*(i + j)^2 + 1 are both prime or not.

The programs for A228561, there is no canonical definition to state claims against.
-/

/-! ## A228561.P13340244478960128509

`(-(∑[A000027(A230694(n+3))]%2))^∑[n]`
-/

namespace A228561.P13340244478960128509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A230694 (n + 3)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A228561.P13340244478960128509

/-! ## A228561.P10622067988200006333

`A016349(A089601(n+1))`
-/

namespace A228561.P10622067988200006333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 (A089601 (n + 1)).toNat

end

end A228561.P10622067988200006333

/-! ## A228561.P7979081813457886655

`A008683(Δ[A000225(n)-A078391(n)])`
-/

namespace A228561.P7979081813457886655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A078391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A228561.P7979081813457886655

/-! ## A228561.P15714923862054090705

`A008683(A132738(n)-(n-∑{digits}[n, #])/9)`
-/

namespace A228561.P15714923862054090705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A132738 n : ℚ) - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)).toNat

end

end A228561.P15714923862054090705

/-! ## A228561.P6661550538455409381

`A008683(A132738(n)-A031346(n))`
-/

namespace A228561.P6661550538455409381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A132738 n - A031346 n).toNat

end

end A228561.P6661550538455409381

/-!
# A228563: E.g.f: A(x) = Sum_{n>=0} (1 + x*A(x)^n)^n * x^n/n!.

The programs for A228563, there is no canonical definition to state claims against.
-/

/-! ## A228563.P12928745917614749895

`A267806(A177473(n)²)`
-/

namespace A228563.P12928745917614749895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A177473 n ^ 2).toNat

end

end A228563.P12928745917614749895

/-! ## A228563.P6430615467329973284

`or(1, A172264(A031973(n)))`
-/

namespace A228563.P6430615467329973284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A172264 (A031973 n).toNat)

end

end A228563.P6430615467329973284

/-!
# A228564: Largest odd divisor of n^2 + 1.

The programs for A228564, the canonical program `A228564.P4195238143443137268` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228564 has offset 0).

The definition of A228564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228564.P12087542005617948199

`(n²+1)*(3+(-1)^n)/4`
-/

namespace A228564.P12087542005617948199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 1 : ℤ) * (3 + (-1) ^ n) : ℚ) / 4

end

end A228564.P12087542005617948199

namespace A228564

/-- `(n²+1)*(3+(-1)^n)/4` -/
def P12087542005617948199.Spec : Prop :=
  ∀ n, P12087542005617948199.a n = (A228564 n : ℚ)

theorem P12087542005617948199.correct : P12087542005617948199.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A228564, Nat.add_sub_cancel, A228564.P12087542005617948199.a, A228564.P4195238143443137268.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A228564, Nat.add_sub_cancel, A228564.P12087542005617948199.a, A228564.P4195238143443137268.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A228564

/-! ## A228564.P4195238143443137268

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=5, a(4)=17, a(5)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228564

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P4195238143443137268.Spec : Prop :=
  ∀ n, P4195238143443137268.a n = A228564 n

theorem P4195238143443137268.correct : P4195238143443137268.Spec := by
  intro n
  simp only [A228564]

end A228564

/-! ## A228564.P330870425506188507

`A000265(A002522(n))`
-/

namespace A228564.P330870425506188507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002522 n).toNat

end

end A228564.P330870425506188507

namespace A228564

/-- `A000265(A002522(n))` -/
def P330870425506188507.Spec : Prop :=
  ∀ n, P330870425506188507.a n = A228564 n

end A228564

/-! ## A228564.P5365478131992637139

`4*round(lcm(n+1, 1-n)/4)+1`
-/

namespace A228564.P5365478131992637139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4) + 1

end

end A228564.P5365478131992637139

namespace A228564

/-- `4*round(lcm(n+1, 1-n)/4)+1` -/
def P5365478131992637139.Spec : Prop :=
  ∀ n, P5365478131992637139.a n = A228564 n

end A228564

/-! ## A228564.P13235995817719690393

`floor((∑[2*n]-(n-1))/gcd(n-1, 2*n))`
-/

namespace A228564.P13235995817719690393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) : ℚ) / (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℚ)⌋

end

end A228564.P13235995817719690393

namespace A228564

/-- `floor((∑[2*n]-(n-1))/gcd(n-1, 2*n))` -/
def P13235995817719690393.Spec : Prop :=
  ∀ n, P13235995817719690393.a n = A228564 n

end A228564

/-! ## A228564.P6404262572765566896

`4*A123596(n)+1`
-/

namespace A228564.P6404262572765566896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123596 n + 1

end

end A228564.P6404262572765566896

namespace A228564

/-- `4*A123596(n)+1` -/
def P6404262572765566896.Spec : Prop :=
  ∀ n, P6404262572765566896.a n = A228564 n

end A228564

/-! ## A228564.P16773828580399049816

`gcd(n²+1, A006003(n))`
-/

namespace A228564.P16773828580399049816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + 1 : ℤ) (A006003 n)

end

end A228564.P16773828580399049816

namespace A228564

/-- `gcd(n²+1, A006003(n))` -/
def P16773828580399049816.Spec : Prop :=
  ∀ n, (P16773828580399049816.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P10501010847787954402

`A071289(n)-A062158(n)`
-/

namespace A228564.P10501010847787954402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071289 n - A062158 n

end

end A228564.P10501010847787954402

namespace A228564

/-- `A071289(n)-A062158(n)` -/
def P10501010847787954402.Spec : Prop :=
  ∀ n, P10501010847787954402.a n = A228564 n

end A228564

/-! ## A228564.P16695050500118410593

`gcd(A002604(n), A037270(n))`
-/

namespace A228564.P16695050500118410593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002604 n) (A037270 n)

end

end A228564.P16695050500118410593

namespace A228564

/-- `gcd(A002604(n), A037270(n))` -/
def P16695050500118410593.Spec : Prop :=
  ∀ n, (P16695050500118410593.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P8736282774320112647

`gcd(A005893(n), A058919(n))`
-/

namespace A228564.P8736282774320112647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005893 n) (A058919 n)

end

end A228564.P8736282774320112647

namespace A228564

/-- `gcd(A005893(n), A058919(n))` -/
def P8736282774320112647.Spec : Prop :=
  ∀ n, (P8736282774320112647.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P2474473310394201222

`gcd(A024002(n), A075664(n))`
-/

namespace A228564.P2474473310394201222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024002 n) (A075664 n)

end

end A228564.P2474473310394201222

namespace A228564

/-- `gcd(A024002(n), A075664(n))` -/
def P2474473310394201222.Spec : Prop :=
  ∀ n, (P2474473310394201222.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P1083531772092247044

`gcd(A006003(n), A105067(n))`
-/

namespace A228564.P1083531772092247044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006003 n) (A105067 n)

end

end A228564.P1083531772092247044

namespace A228564

/-- `gcd(A006003(n), A105067(n))` -/
def P1083531772092247044.Spec : Prop :=
  ∀ n, (P1083531772092247044.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P13499739802432640706

`gcd(A002522(n), A168119(n))`
-/

namespace A228564.P13499739802432640706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002522 n) (A168119 n)

end

end A228564.P13499739802432640706

namespace A228564

/-- `gcd(A002522(n), A168119(n))` -/
def P13499739802432640706.Spec : Prop :=
  ∀ n, (P13499739802432640706.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P8301266837199097265

`gcd(A059830(n), A135509(n))`
-/

namespace A228564.P8301266837199097265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059830 n) (A135509 n)

end

end A228564.P8301266837199097265

namespace A228564

/-- `gcd(A059830(n), A135509(n))` -/
def P8301266837199097265.Spec : Prop :=
  ∀ n, (P8301266837199097265.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P5120044176358648451

`gcd(A053698(n), A170784(n))`
-/

namespace A228564.P5120044176358648451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053698 n) (A170784 n)

end

end A228564.P5120044176358648451

namespace A228564

/-- `gcd(A053698(n), A170784(n))` -/
def P5120044176358648451.Spec : Prop :=
  ∀ n, (P5120044176358648451.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P408226957097565494

`gcd(A069779(n), A168029(n))`
-/

namespace A228564.P408226957097565494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069779 n) (A168029 n)

end

end A228564.P408226957097565494

namespace A228564

/-- `gcd(A069779(n), A168029(n))` -/
def P408226957097565494.Spec : Prop :=
  ∀ n, (P408226957097565494.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P3545970249712210893

`gcd(A168187(n), A281660(n))`
-/

namespace A228564.P3545970249712210893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168187 n) (A281660 n)

end

end A228564.P3545970249712210893

namespace A228564

/-- `gcd(A168187(n), A281660(n))` -/
def P3545970249712210893.Spec : Prop :=
  ∀ n, (P3545970249712210893.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P842821182469348017

`gcd(A168527(n), A281661(n))`
-/

namespace A228564.P842821182469348017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168527 n) (A281661 n)

end

end A228564.P842821182469348017

namespace A228564

/-- `gcd(A168527(n), A281661(n))` -/
def P842821182469348017.Spec : Prop :=
  ∀ n, (P842821182469348017.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P7507690564585470349

`gcd(A168636(n), A288487(n))`
-/

namespace A228564.P7507690564585470349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168636 n) (A288487 n)

end

end A228564.P7507690564585470349

namespace A228564

/-- `gcd(A168636(n), A288487(n))` -/
def P7507690564585470349.Spec : Prop :=
  ∀ n, (P7507690564585470349.a n : ℤ) = A228564 n

end A228564

/-! ## A228564.P12635189628018533925

`A168059(n+1)-A165355(n)`
-/

namespace A228564.P12635189628018533925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168059 (n + 1) - A165355 n

end

end A228564.P12635189628018533925

namespace A228564

/-- `A168059(n+1)-A165355(n)` -/
def P12635189628018533925.Spec : Prop :=
  ∀ n, P12635189628018533925.a n = A228564 n

end A228564

/-!
# A228565: Triangle read by rows: coefficients of descending powers of the polynomial V(n,x) = cos((2n+1)(arccos(x)/2))/cos(arccos(x)/2), n >= 0.

The programs for A228565, there is no canonical definition to state claims against.
-/

/-! ## A228565.P15704277816201597583

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A108299(n)`
-/

namespace A228565.P15704277816201597583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A108299 n : ℚ)

end

end A228565.P15704277816201597583

/-! ## A228565.P6694822180053068242

`A108299(n)*A130321(n)`
-/

namespace A228565.P6694822180053068242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n * A130321 n

end

end A228565.P6694822180053068242

/-! ## A228565.P14958056189792236493

`sqrt(A262616(n))*A108299(n)`
-/

namespace A228565.P14958056189792236493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A108299 n : ℝ)

end

end A228565.P14958056189792236493

/-! ## A228565.P12716246098592689243

`A039961(n+2)*A130321(n)`
-/

namespace A228565.P12716246098592689243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039961 (n + 2) * A130321 n

end

end A228565.P12716246098592689243

/-! ## A228565.P7859091911557489514

`2^A025581(n)*A108299(n)`
-/

namespace A228565.P7859091911557489514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A108299 n : ℚ)

end

end A228565.P7859091911557489514

/-! ## A228565.P16233958224034124080

`A090988(n+1)/2*A108299(n)`
-/

namespace A228565.P16233958224034124080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) : ℚ) / 2 * (A108299 n : ℚ)

end

end A228565.P16233958224034124080

/-! ## A228565.P9511611946328437705

`A000079(A025581(n))*A108299(n)`
-/

namespace A228565.P9511611946328437705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A108299 n

end

end A228565.P9511611946328437705

/-! ## A228565.P9291436390886917972

`A006519(A054582(n))*A108299(n)`
-/

namespace A228565.P9291436390886917972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A054582 n).toNat * A108299 n

end

end A228565.P9291436390886917972

/-! ## A228565.P13390823523738165573

`A016116(A099375(n))*A108299(n)`
-/

namespace A228565.P13390823523738165573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A099375 n).toNat * A108299 n

end

end A228565.P13390823523738165573

/-! ## A228565.P14682603821917408570

`A059268(A061579(n))*A108299(n)`
-/

namespace A228565.P14682603821917408570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A108299 n

end

end A228565.P14682603821917408570

/-!
# A228567: Primes expressible as sigma(sigma(n)) - sigma(n), in order of their occurrence.

The programs for A228567, the canonical program `A228567.P5446309147432854246` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228567 has offset 1).

The definition of A228567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228567.P5446309147432854246

`p?[A000203(A000203(n+1))-A000203(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228567

/-- `p?[A000203(A000203(n+1))-A000203(n+1)]` -/
def P5446309147432854246.Spec : Prop :=
  ∀ n, P5446309147432854246.a n = A228567 (n + 1)

theorem P5446309147432854246.correct : P5446309147432854246.Spec := by
  intro n
  simp only [A228567, Nat.add_sub_cancel]

end A228567

/-! ## A228567.P1274103813144394387

`p?[A227758(n+1)+1+n]`
-/

namespace A228567.P1274103813144394387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227758 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P1274103813144394387

namespace A228567

/-- `p?[A227758(n+1)+1+n]` -/
def P1274103813144394387.Spec : Prop :=
  ∀ n, P1274103813144394387.a n = A228567 (n + 1)

theorem P1274103813144394387.correct : P1274103813144394387.Spec := by
  intro n
  simp only [A228567, Nat.add_sub_cancel, A228567.P1274103813144394387.f1, A228567.P1274103813144394387.a, A228567.P5446309147432854246.f1, A228567.P5446309147432854246.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A227758, A227758.P8934593272528539020.a, A051027, A051027.P5984083100296461897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228567

/-! ## A228567.P15399623699975196213

`p?[A051027(n+1)-A000203(n+1)]`
-/

namespace A228567.P15399623699975196213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P15399623699975196213

namespace A228567

/-- `p?[A051027(n+1)-A000203(n+1)]` -/
def P15399623699975196213.Spec : Prop :=
  ∀ n, P15399623699975196213.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P3351446764299582275

`p?[A001065(A000203(n+1))]`
-/

namespace A228567.P3351446764299582275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P3351446764299582275

namespace A228567

/-- `p?[A001065(A000203(n+1))]` -/
def P3351446764299582275.Spec : Prop :=
  ∀ n, P3351446764299582275.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P14894401056053709697

`p?[A001065(A039653(n)+1)]`
-/

namespace A228567.P14894401056053709697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A039653 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P14894401056053709697

namespace A228567

/-- `p?[A001065(A039653(n)+1)]` -/
def P14894401056053709697.Spec : Prop :=
  ∀ n, P14894401056053709697.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P4711536069978233580

`p?[A173455(A000203(n+2))]`
-/

namespace A228567.P4711536069978233580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (A000203 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P4711536069978233580

namespace A228567

/-- `p?[A173455(A000203(n+2))]` -/
def P4711536069978233580.Spec : Prop :=
  ∀ n, P4711536069978233580.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P12786282600471449228

`p?[A001065(abs(A143348(n+1)))]`
-/

namespace A228567.P12786282600471449228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 |A143348 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P12786282600471449228

namespace A228567

/-- `p?[A001065(abs(A143348(n+1)))]` -/
def P12786282600471449228.Spec : Prop :=
  ∀ n, P12786282600471449228.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P15434586400359606280

`p?[A001065(sqrt(A072861(n+1)))]`
-/

namespace A228567.P15434586400359606280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P15434586400359606280

namespace A228567

/-- `p?[A001065(sqrt(A072861(n+1)))]` -/
def P15434586400359606280.Spec : Prop :=
  ∀ n, P15434586400359606280.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P1920716665654756952

`p?[A001065(A088580(n+1)-1)]`
-/

namespace A228567.P1920716665654756952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A088580 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P1920716665654756952

namespace A228567

/-- `p?[A001065(A088580(n+1)-1)]` -/
def P1920716665654756952.Spec : Prop :=
  ∀ n, P1920716665654756952.a n = A228567 (n + 1)

end A228567

/-! ## A228567.P9953850861976896635

`p?[A001065(A245092(2*n+1))]`
-/

namespace A228567.P9953850861976896635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A245092 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A228567.P9953850861976896635

namespace A228567

/-- `p?[A001065(A245092(2*n+1))]` -/
def P9953850861976896635.Spec : Prop :=
  ∀ n, P9953850861976896635.a n = A228567 (n + 1)

end A228567

/-!
# A228568: a(n) = 2^n*A056236(n).

The programs for A228568, the canonical program `A228568.P10699281856534938319` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228568 has offset 0).

The definition of A228568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228568.P13015140683193510750

`8*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=8`
-/

namespace A228568.P13015140683193510750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2)

end

end A228568.P13015140683193510750

namespace A228568

/-- `8*a(n-1)-8*a(n-2)` -/
def P13015140683193510750.Spec : Prop :=
  ∀ n, P13015140683193510750.a n = A228568 n

end A228568

/-! ## A228568.P15714460433355734010

`2*A084130(n)`
-/

namespace A228568.P15714460433355734010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084130 n

end

end A228568.P15714460433355734010

namespace A228568

/-- `2*A084130(n)` -/
def P15714460433355734010.Spec : Prop :=
  ∀ n, P15714460433355734010.a n = A228568 n

end A228568

/-! ## A228568.P10699281856534938319

`2^n*A056236(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A228568

/-- `2^n*A056236(n)` -/
def P10699281856534938319.Spec : Prop :=
  ∀ n, P10699281856534938319.a n = A228568 n

theorem P10699281856534938319.correct : P10699281856534938319.Spec := by
  intro n
  simp only [A228568]

end A228568

/-! ## A228568.P2841339654761627990

`ogf((2-8x)/(1-8x+8x^2))`
-/

namespace A228568.P2841339654761627990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -8] [1, -8, 8] n

end

end A228568.P2841339654761627990

namespace A228568

/-- `ogf((2-8x)/(1-8x+8x^2))` -/
def P2841339654761627990.Spec : Prop :=
  ∀ n, P2841339654761627990.a n = A228568 n

end A228568

/-! ## A228568.P13554560247151594675

`8*(a(n-1)-a(n-2))` with `a(0)=2, a(1)=8`
-/

namespace A228568.P13554560247151594675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  8 * (a (n - 1) - a (n - 2))

end

end A228568.P13554560247151594675

namespace A228568

/-- `8*(a(n-1)-a(n-2))` -/
def P13554560247151594675.Spec : Prop :=
  ∀ n, P13554560247151594675.a n = A228568 n

end A228568

/-! ## A228568.P16947839682349724242

`(4-2*sqrt(2))^n+(2*(2+sqrt(2)))^n`
-/

namespace A228568.P16947839682349724242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 - 2 * Real.sqrt (2 : ℝ)) ^ n + (2 * (2 + Real.sqrt (2 : ℝ))) ^ n

end

end A228568.P16947839682349724242

namespace A228568

/-- `(4-2*sqrt(2))^n+(2*(2+sqrt(2)))^n` -/
def P16947839682349724242.Spec : Prop :=
  ∀ n, P16947839682349724242.a n = (A228568 n : ℝ)

end A228568

/-! ## A228568.P11178077923183468397

`∑[lcm(2, A123357(n))]`
-/

namespace A228568.P11178077923183468397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A123357 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228568.P11178077923183468397

namespace A228568

/-- `∑[lcm(2, A123357(n))]` -/
def P11178077923183468397.Spec : Prop :=
  ∀ n, (P11178077923183468397.a n : ℤ) = A228568 n

end A228568

/-! ## A228568.P15699973501831764884

`2^(n+1)*A006012(n)`
-/

namespace A228568.P15699973501831764884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A006012 n

end

end A228568.P15699973501831764884

namespace A228568

/-- `2^(n+1)*A006012(n)` -/
def P15699973501831764884.Spec : Prop :=
  ∀ n, P15699973501831764884.a n = A228568 n

end A228568

/-! ## A228568.P15803040020726326364

`2^(n-1)*A265185(n)`
-/

namespace A228568.P15803040020726326364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A265185 n : ℚ)

end

end A228568.P15803040020726326364

namespace A228568

/-- `2^(n-1)*A265185(n)` -/
def P15803040020726326364.Spec : Prop :=
  ∀ n, P15803040020726326364.a n = (A228568 n : ℚ)

end A228568

/-! ## A228568.P5908900406023591651

`A006012(n)*A011782(n+2)`
-/

namespace A228568.P5908900406023591651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A011782 (n + 2)

end

end A228568.P5908900406023591651

namespace A228568

/-- `A006012(n)*A011782(n+2)` -/
def P5908900406023591651.Spec : Prop :=
  ∀ n, P5908900406023591651.a n = A228568 n

end A228568

/-! ## A228568.P946533334603978858

`A006012(n)*A131577(n+2)`
-/

namespace A228568.P946533334603978858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A131577 (n + 2)

end

end A228568.P946533334603978858

namespace A228568

/-- `A006012(n)*A131577(n+2)` -/
def P946533334603978858.Spec : Prop :=
  ∀ n, P946533334603978858.a n = A228568 n

end A228568

/-! ## A228568.P4145701252918795524

`2*A000079(n)*A006012(n)`
-/

namespace A228568.P4145701252918795524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A006012 n)

end

end A228568.P4145701252918795524

namespace A228568

/-- `2*A000079(n)*A006012(n)` -/
def P4145701252918795524.Spec : Prop :=
  ∀ n, P4145701252918795524.a n = A228568 n

end A228568

/-! ## A228568.P10735605792866000905

`A056236(n)*A077957(2*n)`
-/

namespace A228568.P10735605792866000905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n * A077957 (2 * n)

end

end A228568.P10735605792866000905

namespace A228568

/-- `A056236(n)*A077957(2*n)` -/
def P10735605792866000905.Spec : Prop :=
  ∀ n, P10735605792866000905.a n = A228568 n

end A228568

/-! ## A228568.P9918338227699255348

`A006012(n)*A135530(2*n)`
-/

namespace A228568.P9918338227699255348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A135530 (2 * n)

end

end A228568.P9918338227699255348

namespace A228568

/-- `A006012(n)*A135530(2*n)` -/
def P9918338227699255348.Spec : Prop :=
  ∀ n, P9918338227699255348.a n = A228568 n

end A228568

/-! ## A228568.P111927303214909552

`2*A079496(n)*A094015(n)`
-/

namespace A228568.P111927303214909552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079496 n * A094015 n)

end

end A228568.P111927303214909552

namespace A228568

/-- `2*A079496(n)*A094015(n)` -/
def P111927303214909552.Spec : Prop :=
  ∀ n, P111927303214909552.a n = A228568 n

end A228568

/-! ## A228568.P1831969565866159850

`2*lcm(A006012(n), A094015(n))`
-/

namespace A228568.P1831969565866159850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.lcm (A006012 n) (A094015 n)

end

end A228568.P1831969565866159850

namespace A228568

/-- `2*lcm(A006012(n), A094015(n))` -/
def P1831969565866159850.Spec : Prop :=
  ∀ n, (P1831969565866159850.a n : ℤ) = A228568 n

end A228568

/-! ## A228568.P16878700908729541317

`2*A006012(n)*∑[A011782(n)]`
-/

namespace A228568.P16878700908729541317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006012 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A228568.P16878700908729541317

namespace A228568

/-- `2*A006012(n)*∑[A011782(n)]` -/
def P16878700908729541317.Spec : Prop :=
  ∀ n, P16878700908729541317.a n = A228568 n

end A228568

/-! ## A228568.P2499930818825311322

`∏[2*A000034(n)]*A079496(n)`
-/

namespace A228568.P2499930818825311322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A079496 n

end

end A228568.P2499930818825311322

namespace A228568

/-- `∏[2*A000034(n)]*A079496(n)` -/
def P2499930818825311322.Spec : Prop :=
  ∀ n, P2499930818825311322.a n = A228568 n

end A228568

/-! ## A228568.P11606936543322812898

`A006012(n)*A016116(2*(n+1))`
-/

namespace A228568.P11606936543322812898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A016116 (2 * (n + 1))

end

end A228568.P11606936543322812898

namespace A228568

/-- `A006012(n)*A016116(2*(n+1))` -/
def P11606936543322812898.Spec : Prop :=
  ∀ n, P11606936543322812898.a n = A228568 n

end A228568

/-! ## A228568.P3547491423466306579

`A000079(n+1)*A030436(2*n)`
-/

namespace A228568.P3547491423466306579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A030436 (2 * n)

end

end A228568.P3547491423466306579

namespace A228568

/-- `A000079(n+1)*A030436(2*n)` -/
def P3547491423466306579.Spec : Prop :=
  ∀ n, P3547491423466306579.a n = A228568 n

end A228568

/-!
# A228569: Binomial transform of A006497.

The programs for A228569, the canonical program `A228569.P347337203425200261` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228569 has offset 0).

The definition of A228569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A228569.P3710550462835731780

`ogf((2-5x)/(1-5x+3x^2))`
-/

namespace A228569.P3710550462835731780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -5, 3] n

end

end A228569.P3710550462835731780

namespace A228569

/-- `ogf((2-5x)/(1-5x+3x^2))` -/
def P3710550462835731780.Spec : Prop :=
  ∀ n, P3710550462835731780.a n = A228569 n

end A228569

/-! ## A228569.P347337203425200261

`5*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228569

/-- `5*a(n-1)-3*a(n-2)` -/
def P347337203425200261.Spec : Prop :=
  ∀ n, P347337203425200261.a n = A228569 n

theorem P347337203425200261.correct : P347337203425200261.Spec := by
  intro n
  simp only [A228569]

end A228569

/-! ## A228569.P11677806200946710066

`A081704(n)+A052961(n)`
-/

namespace A228569.P11677806200946710066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + A052961 n

end

end A228569.P11677806200946710066

namespace A228569

/-- `A081704(n)+A052961(n)` -/
def P11677806200946710066.Spec : Prop :=
  ∀ n, P11677806200946710066.a n = A228569 n

end A228569

/-! ## A228569.P1659330923921300823

`A052961(n)+∑[A095939(n)]`
-/

namespace A228569.P1659330923921300823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228569.P1659330923921300823

namespace A228569

/-- `A052961(n)+∑[A095939(n)]` -/
def P1659330923921300823.Spec : Prop :=
  ∀ n, P1659330923921300823.a n = A228569 n

end A228569

/-! ## A228569.P14420752004401238165

`A106732(n)+2*A018902(n)`
-/

namespace A228569.P14420752004401238165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106732 n + 2 * A018902 n

end

end A228569.P14420752004401238165

namespace A228569

/-- `A106732(n)+2*A018902(n)` -/
def P14420752004401238165.Spec : Prop :=
  ∀ n, P14420752004401238165.a n = A228569 n

end A228569

/-! ## A228569.P14789528782633291

`3*A081704(n)-A018902(n)`
-/

namespace A228569.P14789528782633291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081704 n - A018902 n

end

end A228569.P14789528782633291

namespace A228569

/-- `3*A081704(n)-A018902(n)` -/
def P14789528782633291.Spec : Prop :=
  ∀ n, P14789528782633291.a n = A228569 n

end A228569

/-! ## A228569.P15551163194157794003

`∑[A095940(n)]+2*A052961(n)`
-/

namespace A228569.P15551163194157794003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A052961 n

end

end A228569.P15551163194157794003

namespace A228569

/-- `∑[A095940(n)]+2*A052961(n)` -/
def P15551163194157794003.Spec : Prop :=
  ∀ n, P15551163194157794003.a n = A228569 n

end A228569

/-! ## A228569.P9227732237530320723

`2*A081704(n)-∑[A095940(n)]`
-/

namespace A228569.P9227732237530320723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081704 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228569.P9227732237530320723

namespace A228569

/-- `2*A081704(n)-∑[A095940(n)]` -/
def P9227732237530320723.Spec : Prop :=
  ∀ n, P9227732237530320723.a n = A228569 n

end A228569

/-! ## A228569.P15183923806787970869

`∑[2*A095939(n)-A095940(n)]`
-/

namespace A228569.P15183923806787970869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095939 n - A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228569.P15183923806787970869

namespace A228569

/-- `∑[2*A095939(n)-A095940(n)]` -/
def P15183923806787970869.Spec : Prop :=
  ∀ n, P15183923806787970869.a n = A228569 n

end A228569

/-! ## A228569.P3634350547718723743

`2*A052961(n+1)-A095939(n+1)`
-/

namespace A228569.P3634350547718723743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052961 (n + 1) - A095939 (n + 1)

end

end A228569.P3634350547718723743

namespace A228569

/-- `2*A052961(n+1)-A095939(n+1)` -/
def P3634350547718723743.Spec : Prop :=
  ∀ n, P3634350547718723743.a n = A228569 n

end A228569

/-! ## A228569.P11691537790304447361

`A052961(n+1)+A052961(n)-A018902(n)`
-/

namespace A228569.P11691537790304447361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) + (A052961 n - A018902 n)

end

end A228569.P11691537790304447361

namespace A228569

/-- `A052961(n+1)+A052961(n)-A018902(n)` -/
def P11691537790304447361.Spec : Prop :=
  ∀ n, P11691537790304447361.a n = A228569 n

end A228569

/-! ## A228569.P2837264300710316464

`A052961(n+1)+A052961(n)-A095940(n+1)`
-/

namespace A228569.P2837264300710316464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) + (A052961 n - A095940 (n + 1))

end

end A228569.P2837264300710316464

namespace A228569

/-- `A052961(n+1)+A052961(n)-A095940(n+1)` -/
def P2837264300710316464.Spec : Prop :=
  ∀ n, P2837264300710316464.a n = A228569 n

end A228569

/-! ## A228569.P18230955801091935014

`A018902(n+1)-A109114(n)-A109114(n)`
-/

namespace A228569.P18230955801091935014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 (n + 1) - A109114 n - A109114 n

end

end A228569.P18230955801091935014

namespace A228569

/-- `A018902(n+1)-A109114(n)-A109114(n)` -/
def P18230955801091935014.Spec : Prop :=
  ∀ n, P18230955801091935014.a n = A228569 n

end A228569

/-!
# A228570: Triangle read by rows, formed from antidiagonals of triangle A102541. T(n, k) = A034851(n-2*k, k), n >= 0 and 0 <= k <= floor(n/3).

The programs for A228570, there is no canonical definition to state claims against.
-/

/-! ## A228570.P4878726572991456856

`A055642(A026748(n)%A010048(3*n))`
-/

namespace A228570.P4878726572991456856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A026748 n) (A010048 (3 * n))).toNat

end

end A228570.P4878726572991456856

/-! ## A228570.P5852698346022908023

`A328902(A289871(A328901(n+1)+n+1))`
-/

namespace A228570.P5852698346022908023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328902 (A289871 (A328901 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A228570.P5852698346022908023

/-! ## A228570.P14690129787743398575

`A115583(A357643(n)+A002260(n+1))`
-/

namespace A228570.P14690129787743398575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A357643 n + A002260 (n + 1)).toNat

end

end A228570.P14690129787743398575

/-! ## A228570.P3363072600593694555

`A055642(A090617(n)^A055509(n+1))`
-/

namespace A228570.P3363072600593694555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A090617 n : ℚ) ^ (A055509 (n + 1) : ℤ))).toNat

end

end A228570.P3363072600593694555

/-! ## A228570.P2687795635075996558

`gcd(A008287(n), A043562(A060172(n+1)))`
-/

namespace A228570.P2687795635075996558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008287 n) (A043562 (A060172 (n + 1)).toNat)

end

end A228570.P2687795635075996558

/-!
# A228572: Triangle read by rows, formed from antidiagonals of triangle A228570: T(n,k) = A034851(n-3*k, k) for n >= 0 and 0 <= k <= floor(n/4).

The programs for A228572, there is no canonical definition to state claims against.
-/

/-! ## A228572.P16318663030007874346

`A227481(A306910(A036696(n))+1)`
-/

namespace A228572.P16318663030007874346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227481 (A306910 (A036696 n).toNat + 1).toNat

end

end A228572.P16318663030007874346

/-! ## A228572.P1374250351219460687

`gcd(A054567(n+1), A055642(A001678(n)))`
-/

namespace A228572.P1374250351219460687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054567 (n + 1)) (A055642 (A001678 n).toNat)

end

end A228572.P1374250351219460687

/-! ## A228572.P6933593708517276530

`A098388(A180184(n+4))%A321796(n+1)`
-/

namespace A228572.P6933593708517276530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098388 (A180184 (n + 4)).toNat) (A321796 (n + 1))

end

end A228572.P6933593708517276530

/-! ## A228572.P6795547537110640057

`gcd(A049814(n+1), A192048(A049814(2*n+5)))`
-/

namespace A228572.P6795547537110640057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049814 (n + 1)) (A192048 (A049814 (2 * n + 5)).toNat)

end

end A228572.P6795547537110640057

/-! ## A228572.P15837696560577255978

`A091887(A001350(n+1))`
-/

namespace A228572.P15837696560577255978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (A001350 (n + 1)).toNat

end

end A228572.P15837696560577255978

/-!
# A228574: Determinant of the 2*n X 2*n matrix with (i,j)-entry equal to 1 or 0 according as i + j is a prime congruent to 1 mod 4 or not.

The programs for A228574, there is no canonical definition to state claims against.
-/

/-! ## A228574.P6781906465309126182

`A007814(A101400(n))^(xor(n, n+1)+1)`
-/

namespace A228574.P6781906465309126182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A101400 n).toNat ^ (Nat.xor n (n + 1) + 1)

end

end A228574.P6781906465309126182

/-! ## A228574.P5086242930384288223

`sqrt(A129308(n+1)^A167227(3*n+4))`
-/

namespace A228574.P5086242930384288223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A129308 (n + 1) : ℚ) ^ (A167227 (3 * n + 4) : ℤ) : ℝ)

end

end A228574.P5086242930384288223

/-! ## A228574.P11045878990832342357

`A129308(n+1)^A063787(∑[2^n-3]+6)`
-/

namespace A228574.P11045878990832342357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129308 (n + 1) : ℚ) ^ (A063787 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat : ℤ)

end

end A228574.P11045878990832342357

/-! ## A228574.P2603432497426304189

`A129308(n+1)^∏{e}[A238937(n+1)+1, #+1]`
-/

namespace A228574.P2603432497426304189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238937 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A228574.P2603432497426304189

/-! ## A228574.P17453525330242679223

`A129308(n+1)^A376680(A376703(n+1))`
-/

namespace A228574.P17453525330242679223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129308 (n + 1) : ℚ) ^ (A376680 (A376703 (n + 1)).toNat : ℤ)

end

end A228574.P17453525330242679223

/-!
# A228575: Pseudoprimes n to base 2 such that n-4, n-2 and n+2 are primes.

The programs for A228575, there is no canonical definition to state claims against.
-/

/-! ## A228575.P12063116025500943555

`∩[A230488(n+1), A230808(n+1)+2]`
-/

namespace A228575.P12063116025500943555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228575.P12063116025500943555

/-! ## A228575.P5967648622535229321

`∩[A230488(n+1), A230715(n+1)+4]`
-/

namespace A228575.P5967648622535229321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230715 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228575.P5967648622535229321

/-! ## A228575.P14864016355584901294

`∩[A057942(n+1), A230488(n+1)]`
-/

namespace A228575.P14864016355584901294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228575.P14864016355584901294

/-! ## A228575.P17523760088978850218

`∩[A057942(n+1), A230715(n+1)+4]`
-/

namespace A228575.P17523760088978850218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230715 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228575.P17523760088978850218

/-! ## A228575.P13387004856008729677

`∩[A057942(n+1), A230808(n+1)+4]`
-/

namespace A228575.P13387004856008729677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A228575.P13387004856008729677

/-!
# A228577: The number of 1-length gaps in all possible covers of n-length line by 2-length segments.

The programs for A228577, the canonical program `A228577.P10796262877423973678` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228577 has offset 0).

The definition of A228577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228577.P10796262877423973678

`2*a(n-2)+2*a(n-3)-a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228577

/-- `2*a(n-2)+2*a(n-3)-a(n-4)-2*a(n-5)-a(n-6)` -/
def P10796262877423973678.Spec : Prop :=
  ∀ n, P10796262877423973678.a n = A228577 n

theorem P10796262877423973678.correct : P10796262877423973678.Spec := by
  intro n
  simp only [A228577]

end A228577

/-! ## A228577.P6260956347315542396

`Δ[A228364(n+1)-A023434(n)]`
-/

namespace A228577.P6260956347315542396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 1) - A023434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228577.P6260956347315542396

namespace A228577

/-- `Δ[A228364(n+1)-A023434(n)]` -/
def P6260956347315542396.Spec : Prop :=
  ∀ n, P6260956347315542396.a n = A228577 n

end A228577

/-! ## A228577.P4444700522296857430

`Δ[A228364(n+1)]-A182097(n)`
-/

namespace A228577.P4444700522296857430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A182097 n

end

end A228577.P4444700522296857430

namespace A228577

/-- `Δ[A228364(n+1)]-A182097(n)` -/
def P4444700522296857430.Spec : Prop :=
  ∀ n, P4444700522296857430.a n = A228577 n

end A228577

/-! ## A228577.P5934113361465116439

`Δ[A228364(n+1)]-A000931(n+3)`
-/

namespace A228577.P5934113361465116439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000931 (n + 3)

end

end A228577.P5934113361465116439

namespace A228577

/-- `Δ[A228364(n+1)]-A000931(n+3)` -/
def P5934113361465116439.Spec : Prop :=
  ∀ n, P5934113361465116439.a n = A228577 n

end A228577

/-! ## A228577.P15923731549228996427

`Δ[A228364(n+1)-A134816(n+3)]`
-/

namespace A228577.P15923731549228996427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 1) - A134816 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228577.P15923731549228996427

namespace A228577

/-- `Δ[A228364(n+1)-A134816(n+3)]` -/
def P15923731549228996427.Spec : Prop :=
  ∀ n, P15923731549228996427.a n = A228577 n

end A228577

/-! ## A228577.P5960812654017734914

`Δ[A228364(n+1)]-A133034(n+7)`
-/

namespace A228577.P5960812654017734914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A133034 (n + 7)

end

end A228577.P5960812654017734914

namespace A228577

/-- `Δ[A228364(n+1)]-A133034(n+7)` -/
def P5960812654017734914.Spec : Prop :=
  ∀ n, P5960812654017734914.a n = A228577 n

end A228577

/-! ## A228577.P17466709754137256145

`A104578(∑[n]+1)`
-/

namespace A228577.P17466709754137256145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A228577.P17466709754137256145

namespace A228577

/-- `A104578(∑[n]+1)` -/
def P17466709754137256145.Spec : Prop :=
  ∀ n, P17466709754137256145.a n = A228577 n

end A228577

/-!
# A228578: Sum of the distinct prime factors of the squarefree semiprimes (A006881).

The programs for A228578, the canonical program `A228578.P5147593138796748701` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228578 has offset 1).

The definition of A228578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A006881, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A228578.P5147593138796748701

`A001414(A006881(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A228578

/-- `A001414(A006881(n+1))` -/
def P5147593138796748701.Spec : Prop :=
  ∀ n, P5147593138796748701.a n = A228578 (n + 1)

theorem P5147593138796748701.correct : P5147593138796748701.Spec := by
  intro n
  simp only [A228578, Nat.add_sub_cancel]

end A228578

/-! ## A228578.P2660598748017708856

`A001414(sqrt(A085986(n+1)))`
-/

namespace A228578.P2660598748017708856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A228578.P2660598748017708856

namespace A228578

/-- `A001414(sqrt(A085986(n+1)))` -/
def P2660598748017708856.Spec : Prop :=
  ∀ n, P2660598748017708856.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P8268530840489431642

`A008472(sqrt(A085986(n+1)))`
-/

namespace A228578.P8268530840489431642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A085986 (n + 1) : ℝ))).toNat

end

end A228578.P8268530840489431642

namespace A228578

/-- `A008472(sqrt(A085986(n+1)))` -/
def P8268530840489431642.Spec : Prop :=
  ∀ n, P8268530840489431642.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P14889990516232729610

`A008472(A006881(abs(xor(n, -1))))`
-/

namespace A228578.P14889990516232729610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006881 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A228578.P14889990516232729610

namespace A228578

/-- `A008472(A006881(abs(xor(n, -1))))` -/
def P14889990516232729610.Spec : Prop :=
  ∀ n, P14889990516232729610.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P9720682287151560209

`A001414(eq[2, A046645(n+1)]+1)`
-/

namespace A228578.P9720682287151560209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A228578.P9720682287151560209

namespace A228578

/-- `A001414(eq[2, A046645(n+1)]+1)` -/
def P9720682287151560209.Spec : Prop :=
  ∀ n, P9720682287151560209.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P11915639126549654096

`A096916(n+1)+A070647(n+1)`
-/

namespace A228578.P11915639126549654096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 (n + 1) + A070647 (n + 1)

end

end A228578.P11915639126549654096

namespace A228578

/-- `A096916(n+1)+A070647(n+1)` -/
def P11915639126549654096.Spec : Prop :=
  ∀ n, P11915639126549654096.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P1881802177399147968

`A008472(A006881(2*n+1-n))`
-/

namespace A228578.P1881802177399147968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006881 (2 * n + 1 - n)).toNat

end

end A228578.P1881802177399147968

namespace A228578

/-- `A008472(A006881(2*n+1-n))` -/
def P1881802177399147968.Spec : Prop :=
  ∀ n, P1881802177399147968.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P2524036992836024129

`A343004(2*n+1)+A070647(n+1)`
-/

namespace A228578.P2524036992836024129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1) + A070647 (n + 1)

end

end A228578.P2524036992836024129

namespace A228578

/-- `A343004(2*n+1)+A070647(n+1)` -/
def P2524036992836024129.Spec : Prop :=
  ∀ n, P2524036992836024129.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P11361083309259117541

`A343004(2*(n+1))+A096916(n+1)`
-/

namespace A228578.P11361083309259117541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * (n + 1)) + A096916 (n + 1)

end

end A228578.P11361083309259117541

namespace A228578

/-- `A343004(2*(n+1))+A096916(n+1)` -/
def P11361083309259117541.Spec : Prop :=
  ∀ n, P11361083309259117541.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P13663906058744430894

`A343004(2*n+1)+A343004(2*(n+1))`
-/

namespace A228578.P13663906058744430894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343004 (2 * n + 1) + A343004 (2 * (n + 1))

end

end A228578.P13663906058744430894

namespace A228578

/-- `A343004(2*n+1)+A343004(2*(n+1))` -/
def P13663906058744430894.Spec : Prop :=
  ∀ n, P13663906058744430894.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P2545737033067979455

`∑{p}[eq[A008683(n+1)+1, A001222(n+1)]+1, #]`
-/

namespace A228578.P2545737033067979455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A228578.P2545737033067979455

namespace A228578

/-- `∑{p}[eq[A008683(n+1)+1, A001222(n+1)]+1, #]` -/
def P2545737033067979455.Spec : Prop :=
  ∀ n, (P2545737033067979455.a n : ℤ) = A228578 (n + 1)

end A228578

/-! ## A228578.P15376761494349870188

`A070647(n+1)+A020639(A006881(n+1))`
-/

namespace A228578.P15376761494349870188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070647 (n + 1) + A020639 (A006881 (n + 1)).toNat

end

end A228578.P15376761494349870188

namespace A228578

/-- `A070647(n+1)+A020639(A006881(n+1))` -/
def P15376761494349870188.Spec : Prop :=
  ∀ n, P15376761494349870188.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P9563338652175115643

`A096916(n+1)+A006530(A006881(n+1))`
-/

namespace A228578.P9563338652175115643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 (n + 1) + A006530 (A006881 (n + 1)).toNat

end

end A228578.P9563338652175115643

namespace A228578

/-- `A096916(n+1)+A006530(A006881(n+1))` -/
def P9563338652175115643.Spec : Prop :=
  ∀ n, P9563338652175115643.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P12532049689938725352

`A008472(eq[A001222(n+1)+2, A000005(n+1)]+1)`
-/

namespace A228578.P12532049689938725352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A228578.P12532049689938725352

namespace A228578

/-- `A008472(eq[A001222(n+1)+2, A000005(n+1)]+1)` -/
def P12532049689938725352.Spec : Prop :=
  ∀ n, P12532049689938725352.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P13198143899769264894

`∑{p}[eq[2, A066882(n)], #]`
-/

namespace A228578.P13198143899769264894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A228578.P13198143899769264894

namespace A228578

/-- `∑{p}[eq[2, A066882(n)], #]` -/
def P13198143899769264894.Spec : Prop :=
  ∀ n, (P13198143899769264894.a n : ℤ) = A228578 (n + 1)

end A228578

/-! ## A228578.P2548895590746049588

`A062830(A161918(n+2))`
-/

namespace A228578.P2548895590746049588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (A161918 (n + 2)).toNat

end

end A228578.P2548895590746049588

namespace A228578

/-- `A062830(A161918(n+2))` -/
def P2548895590746049588.Spec : Prop :=
  ∀ n, P2548895590746049588.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P1747568041119683184

`A003415(eq[2, A066882(n)])`
-/

namespace A228578.P1747568041119683184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228578.P1747568041119683184

namespace A228578

/-- `A003415(eq[2, A066882(n)])` -/
def P1747568041119683184.Spec : Prop :=
  ∀ n, P1747568041119683184.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P17293769506237332739

`A003415(eq[3, A074206(n)])`
-/

namespace A228578.P17293769506237332739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228578.P17293769506237332739

namespace A228578

/-- `A003415(eq[3, A074206(n)])` -/
def P17293769506237332739.Spec : Prop :=
  ∀ n, P17293769506237332739.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P16263635851129274123

`A003415(eq[3, A211110(n)])`
-/

namespace A228578.P16263635851129274123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A228578.P16263635851129274123

namespace A228578

/-- `A003415(eq[3, A211110(n)])` -/
def P16263635851129274123.Spec : Prop :=
  ∀ n, P16263635851129274123.a n = A228578 (n + 1)

end A228578

/-! ## A228578.P3153629504105619955

`A048050(A006881(A027750(A006218(n+1))))`
-/

namespace A228578.P3153629504105619955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A006881 (A027750 (A006218 (n + 1)).toNat).toNat).toNat

end

end A228578.P3153629504105619955

namespace A228578

/-- `A048050(A006881(A027750(A006218(n+1))))` -/
def P3153629504105619955.Spec : Prop :=
  ∀ n, P3153629504105619955.a n = A228578 (n + 1)

end A228578

/-!
# A228581: The number of binary pattern classes in the (2,n)-rectangular grid with 6 '1's and (2n-6) '0's: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A228581, the canonical program `A228581.P15730722438650250077` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228581 has offset 0).

The definition of A228581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228581.P15730722438650250077

`1/4*(C(2*n, 6)+3*C(n, 3))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228581

/-- `1/4*(C(2*n, 6)+3*C(n, 3))` -/
def P15730722438650250077.Spec : Prop :=
  ∀ n, P15730722438650250077.a n = (A228581 n : ℚ)

end A228581

/-! ## A228581.P14162435789011022660

`A320801(A274343(n+2))`
-/

namespace A228581.P14162435789011022660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320801 (A274343 (n + 2)).toNat

end

end A228581.P14162435789011022660

namespace A228581

/-- `A320801(A274343(n+2))` -/
def P14162435789011022660.Spec : Prop :=
  ∀ n, P14162435789011022660.a n = A228581 n

end A228581

/-! ## A228581.P11458061059732577915

`A240862(xor(lcm(2, n), A293353(n)))`
-/

namespace A228581.P11458061059732577915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 (Int.xor (Nat.lcm 2 n : ℤ) (A293353 n)).toNat

end

end A228581.P11458061059732577915

namespace A228581

/-- `A240862(xor(lcm(2, n), A293353(n)))` -/
def P11458061059732577915.Spec : Prop :=
  ∀ n, P11458061059732577915.a n = A228581 n

end A228581

/-!
# A228582: The number of binary pattern classes in the (2,n)-rectangular grid with 7 '1's and (2n-7) '0's: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A228582, there is no canonical definition to state claims against.
-/

/-! ## A228582.P12807280677395807322

`A381624(A061994(n))`
-/

namespace A228582.P12807280677395807322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381624 (A061994 n).toNat

end

end A228582.P12807280677395807322

/-! ## A228582.P690120272504209403

`A326456(A355548(n))`
-/

namespace A228582.P690120272504209403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 (A355548 n).toNat

end

end A228582.P690120272504209403

/-! ## A228582.P16703502694374098016

`A054900(A377840(n+1))`
-/

namespace A228582.P16703502694374098016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A377840 (n + 1)).toNat

end

end A228582.P16703502694374098016

/-!
# A228583: The number of binary pattern classes in the (2,n)-rectangular grid with 8 '1's and (2n-8) '0's: two patterns are in same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A228583, the canonical program `A228583.P7475177840628221852` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228583 has offset 0).

The definition of A228583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228583.P7475177840628221852

`1/4*(C(2*n, 8)+3*C(n, 4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228583

/-- `1/4*(C(2*n, 8)+3*C(n, 4))` -/
def P7475177840628221852.Spec : Prop :=
  ∀ n, P7475177840628221852.a n = (A228583 n : ℚ)

end A228583

/-! ## A228583.P14367475746630597728

`∑[A182195(C(n+2, 6))]`
-/

namespace A228583.P14367475746630597728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (Nat.choose (n + 2) 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228583.P14367475746630597728

namespace A228583

/-- `∑[A182195(C(n+2, 6))]` -/
def P14367475746630597728.Spec : Prop :=
  ∀ n, P14367475746630597728.a n = A228583 n

end A228583

/-! ## A228583.P1912812990092617217

`∏[Δ[n²]]%A066304(n)`
-/

namespace A228583.P1912812990092617217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A066304 n)

end

end A228583.P1912812990092617217

namespace A228583

/-- `∏[Δ[n²]]%A066304(n)` -/
def P1912812990092617217.Spec : Prop :=
  ∀ n, P1912812990092617217.a n = A228583 n

end A228583

/-!
# A228588: Starting from a(1)=1, a(n) is the minimum integer greater than a(n-1) such that a(n)+a(n-1) and a(n)*a(n-1)+1 are both primes.

The programs for A228588, there is no canonical definition to state claims against.
-/

/-! ## A228588.P15540951807732317773

`A120225(a(n-1))` with `a(0)=1`
-/

namespace A228588.P15540951807732317773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120225 (a (n - 1)).toNat

end

end A228588.P15540951807732317773

/-! ## A228588.P8652802860813751142

`A120224(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A228588.P8652802860813751142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A120224 (a (n - 1)).toNat

end

end A228588.P8652802860813751142

/-! ## A228588.P5903885564776775919

`record[A120225(a(A196438(n)))]` with `a(0)=1`
-/

namespace A228588.P5903885564776775919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A120225 (f1 (A196438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A228588.P5903885564776775919

/-! ## A228588.P6016423743972778441

`A196386(A003432(n))+n`
-/

namespace A228588.P6016423743972778441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196386 (A003432 n).toNat + (n : ℤ)

end

end A228588.P6016423743972778441

/-! ## A228588.P9410723031635930374

`∑[A274515(A319559(n)²)]`
-/

namespace A228588.P9410723031635930374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274515 (A319559 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228588.P9410723031635930374

/-!
# A228593: Products of 2 successive primorials.

The programs for A228593, there is no canonical definition to state claims against.
-/

/-! ## A228593.P1839706933872037999

`A002110(n)*A002110(n+1)`
-/

namespace A228593.P1839706933872037999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A002110 (n + 1)

end

end A228593.P1839706933872037999

/-! ## A228593.P5035007866777237023

`∏[A083221(∑[n+2])]`
-/

namespace A228593.P5035007866777237023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228593.P5035007866777237023

/-! ## A228593.P13566128263177951329

`∏[A246278(∑[n+2])]`
-/

namespace A228593.P13566128263177951329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246278 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228593.P13566128263177951329

/-! ## A228593.P6544644193416338839

`∏[record[A119416(n+1)]]`
-/

namespace A228593.P6544644193416338839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228593.P6544644193416338839

/-! ## A228593.P14200462785081974031

`∏[A057602(2*n+1)]`
-/

namespace A228593.P14200462785081974031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A228593.P14200462785081974031

/-!
# A228594: Triangle T(n,k,r,u) read by rows: number of partitions of an n X k X r rectangular cuboid on a cubic grid into integer-sided cubes containing u nodes that are unconnected to any of their neighbors, considering only the number of parts; irregular triangle T(n,k,r,u), n >= k >= r >= 1, u >= 0.

The programs for A228594, there is no canonical definition to state claims against.
-/

/-! ## A228594.P3199179464090153495

`A316829(A187800(n+1)^A104248(3*n+4))`
-/

namespace A228594.P3199179464090153495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (SequenceMachineLib.roundAway ((A187800 (n + 1) : ℚ) ^ (A104248 (3 * n + 4) : ℤ))).toNat

end

end A228594.P3199179464090153495

/-! ## A228594.P3343811462815404722

`ceil(A187800(n+1)/A364349(n))`
-/

namespace A228594.P3343811462815404722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187800 (n + 1) : ℚ) / (A364349 n : ℚ)⌉

end

end A228594.P3343811462815404722

/-! ## A228594.P17171555391706768524

`ceil(A187800(n+1)/A187773(n+1))`
-/

namespace A228594.P17171555391706768524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187800 (n + 1) : ℚ) / (A187773 (n + 1) : ℚ)⌉

end

end A228594.P17171555391706768524

/-! ## A228594.P11722667758735102302

`1-A000007(A187800(n+1)%A187773(n+1))`
-/

namespace A228594.P11722667758735102302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (Int.tmod (A187800 (n + 1)) (A187773 (n + 1))).toNat

end

end A228594.P11722667758735102302

/-! ## A228594.P12836941052256672905

`A187800(n^∏{p}[A187800(n+1), A285071(#)]+1)`
-/

namespace A228594.P12836941052256672905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187800 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A285071 p : ℤ) + 1)).toNat

end

end A228594.P12836941052256672905

/-! ## A228594.P9743139799441369806

`A011558(A187800(n+1)²)`
-/

namespace A228594.P9743139799441369806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A187800 (n + 1) ^ 2).toNat

end

end A228594.P9743139799441369806

/-! ## A228594.P5802493580928583302

`A319710((A187800(n+1)+1)²)`
-/

namespace A228594.P5802493580928583302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 ((A187800 (n + 1) + 1) ^ 2).toNat

end

end A228594.P5802493580928583302

/-! ## A228594.P2350450735098339099

`A002828(A187800(n+1)²)`
-/

namespace A228594.P2350450735098339099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A187800 (n + 1) ^ 2).toNat

end

end A228594.P2350450735098339099

/-! ## A228594.P8448448831907690766

`A000290(A187800(n+1)²)%5`
-/

namespace A228594.P8448448831907690766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A187800 (n + 1) ^ 2).toNat) 5

end

end A228594.P8448448831907690766

/-! ## A228594.P18027455751332622284

`ceil(A187800(n+1)/A187791(n))`
-/

namespace A228594.P18027455751332622284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187800 (n + 1) : ℚ) / (A187791 n : ℚ)⌉

end

end A228594.P18027455751332622284

/-!
# A228596: The number of simple labeled graphs on n nodes with no components of size 3.

The programs for A228596, there is no canonical definition to state claims against.
-/

/-! ## A228596.P6661875634279304817

`A053213(A077686(n+1))`
-/

namespace A228596.P6661875634279304817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053213 (A077686 (n + 1)).toNat

end

end A228596.P6661875634279304817

/-! ## A228596.P14738517655538392760

`A335279(A303836(n))+1`
-/

namespace A228596.P14738517655538392760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335279 (A303836 n).toNat + 1

end

end A228596.P14738517655538392760

/-!
# A228597: The Wiener index of the graph obtained by applying Mycielski's construction to a benzenoid consisting of a linear chain of n hexagons.

The programs for A228597, the canonical program `A228597.P14789666235509196895` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228597 has offset 1).

The definition of A228597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228597.P14789666235509196895

`96*(n+1)²+16*(n+1)+29`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228597

/-- `96*(n+1)²+16*(n+1)+29` -/
def P14789666235509196895.Spec : Prop :=
  ∀ n, (P14789666235509196895.a n : ℤ) = A228597 (n + 1)

theorem P14789666235509196895.correct : P14789666235509196895.Spec := by
  intro n
  simp only [A228597, Nat.add_sub_cancel]

end A228597

/-! ## A228597.P2980780005381293644

`Δ[A144619(n)+A110451(2*n+1)]`
-/

namespace A228597.P2980780005381293644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A110451 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228597.P2980780005381293644

namespace A228597

/-- `Δ[A144619(n)+A110451(2*n+1)]` -/
def P2980780005381293644.Spec : Prop :=
  ∀ n, P2980780005381293644.a n = A228597 (n + 1)

theorem P2980780005381293644.correct : P2980780005381293644.Spec := by
  intro n
  simp only [A228597, Nat.add_sub_cancel, A228597.P2980780005381293644.f1, A228597.P2980780005381293644.a, A228597.P14789666235509196895.a, A110451, A110451.P14386301386351783775.a, A144619, A144619.P2448196201524924374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228597

/-! ## A228597.P13953850999180687973

`Δ[A194268(n)+Δ[A194268(n²)]]`
-/

namespace A228597.P13953850999180687973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A228597.P13953850999180687973

namespace A228597

/-- `Δ[A194268(n)+Δ[A194268(n²)]]` -/
def P13953850999180687973.Spec : Prop :=
  ∀ n, P13953850999180687973.a n = A228597 (n + 1)

theorem P13953850999180687973.correct : P13953850999180687973.Spec := by
  intro n
  simp only [A228597, Nat.add_sub_cancel, A228597.P13953850999180687973.f2, A228597.P13953850999180687973.f1, A228597.P13953850999180687973.a, A228597.P14789666235509196895.a, A194268, A194268.P13709870917259288745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228597

/-!
# A228598: The Wiener index of the graph obtained by applying Mycielski's construction to the crown graph G(n) (n>=3).

The programs for A228598, the canonical program `A228598.P17614579087272263701` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A228598 has offset 3).

The definition of A228598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A228598.P17614579087272263701

`(n+3)*(13*(n+3)+8)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A228598

/-- `(n+3)*(13*(n+3)+8)` -/
def P17614579087272263701.Spec : Prop :=
  ∀ n, (P17614579087272263701.a n : ℤ) = A228598 (n + 3)

theorem P17614579087272263701.correct : P17614579087272263701.Spec := by
  intro n
  simp only [A228598, Nat.add_sub_cancel]

end A228598

/-! ## A228598.P6202088664655774663

`A168240(n+3)+2+n`
-/

namespace A228598.P6202088664655774663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168240 (n + 3) + 2 + (n : ℤ)

end

end A228598.P6202088664655774663

namespace A228598

/-- `A168240(n+3)+2+n` -/
def P6202088664655774663.Spec : Prop :=
  ∀ n, P6202088664655774663.a n = A228598 (n + 3)

theorem P6202088664655774663.correct : P6202088664655774663.Spec := by
  intro n
  simp only [A228598, Nat.add_sub_cancel, A228598.P6202088664655774663.a, A228598.P17614579087272263701.a, A168240, A168240.P4961287680406946690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228598

/-! ## A228598.P5523966821720312719

`A165806(n+3)-A091823(n+1)`
-/

namespace A228598.P5523966821720312719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165806 (n + 3) - A091823 (n + 1)

end

end A228598.P5523966821720312719

namespace A228598

/-- `A165806(n+3)-A091823(n+1)` -/
def P5523966821720312719.Spec : Prop :=
  ∀ n, P5523966821720312719.a n = A228598 (n + 3)

theorem P5523966821720312719.correct : P5523966821720312719.Spec := by
  intro n
  simp only [A228598, Nat.add_sub_cancel, A228598.P5523966821720312719.a, A228598.P17614579087272263701.a, A091823, A091823.P12621649529631280262.a, A165806, A165806.P10747791400727031512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228598

/-! ## A228598.P15810720380060186259

`A161587(n+3)-Δ[(n+3)²]`
-/

namespace A228598.P15810720380060186259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161587 (n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A228598.P15810720380060186259

namespace A228598

/-- `A161587(n+3)-Δ[(n+3)²]` -/
def P15810720380060186259.Spec : Prop :=
  ∀ n, P15810720380060186259.a n = A228598 (n + 3)

theorem P15810720380060186259.correct : P15810720380060186259.Spec := by
  intro n
  simp only [A228598, Nat.add_sub_cancel, A228598.P15810720380060186259.f1, A228598.P15810720380060186259.a, A228598.P17614579087272263701.a, A161587, A161587.P766217848207806068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A228598

/-! ## A228598.P4442775367479038880

`A166146(Δ[A028557(n)])-A028557(n)`
-/

namespace A228598.P4442775367479038880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166146 (f1 (n + 1) - f1 n).toNat - A028557 n

end

end A228598.P4442775367479038880

namespace A228598

/-- `A166146(Δ[A028557(n)])-A028557(n)` -/
def P4442775367479038880.Spec : Prop :=
  ∀ n, P4442775367479038880.a n = A228598 (n + 3)

end A228598

/-! ## A228598.P4923895865580790608

`A016945(A142463(n+3))+A005563(n)`
-/

namespace A228598.P4923895865580790608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A142463 (n + 3)).toNat + A005563 n

end

end A228598.P4923895865580790608

namespace A228598

/-- `A016945(A142463(n+3))+A005563(n)` -/
def P4923895865580790608.Spec : Prop :=
  ∀ n, P4923895865580790608.a n = A228598 (n + 3)

end A228598

