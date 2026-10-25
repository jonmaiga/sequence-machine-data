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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A107300: a(n) = 2*a(n-1) + 2*a(n-2) - 2*a(n-3) with a(0)=3, a(1)=2, a(3)=8.

The programs for A107300, the canonical program `A107300.P13665623543183127721` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107300 has offset 0).

The definition of A107300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-2*a(n-3)` (program `A107300.P13665623543183127721`, by `A107300.P13665623543183127721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107300.P13665623543183127721

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107300

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P13665623543183127721.Spec : Prop :=
  ∀ n, P13665623543183127721.a n = A107300 n

theorem P13665623543183127721.correct : P13665623543183127721.Spec := by
  intro n
  simp only [A107300]

end A107300

/-! ## A107300.P15022786713587084291

`ogf((-3+4x+2x^2)/(-1+2x+2x^2-2x^3))`
-/

namespace A107300.P15022786713587084291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -2] [1, -2, -2, 2] n

end

end A107300.P15022786713587084291

namespace A107300

/-- `ogf((-3+4x+2x^2)/(-1+2x+2x^2-2x^3))` -/
def P15022786713587084291.Spec : Prop :=
  ∀ n, P15022786713587084291.a n = A107300 n

end A107300

/-! ## A107300.P15040313483356213869

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=3, a(1)=2, a(2)=8`
-/

namespace A107300.P15040313483356213869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 8] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A107300.P15040313483356213869

namespace A107300

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P15040313483356213869.Spec : Prop :=
  ∀ n, P15040313483356213869.a n = A107300 n

theorem P15040313483356213869.correct : P15040313483356213869.Spec := by
  intro n
  simp only [A107300, Nat.add_sub_cancel, A107300.P15040313483356213869.a, A107300.P13665623543183127721.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107300

/-! ## A107300.P11894599996553646725

`A052987(n)+2*A052970(n)`
-/

namespace A107300.P11894599996553646725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 n + 2 * A052970 n

end

end A107300.P11894599996553646725

namespace A107300

/-- `A052987(n)+2*A052970(n)` -/
def P11894599996553646725.Spec : Prop :=
  ∀ n, P11894599996553646725.a n = A107300 n

end A107300

/-! ## A107300.P14771015532258418755

`A052970(n+1)+3*A052970(n)`
-/

namespace A107300.P14771015532258418755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (n + 1) + 3 * A052970 n

end

end A107300.P14771015532258418755

namespace A107300

/-- `A052970(n+1)+3*A052970(n)` -/
def P14771015532258418755.Spec : Prop :=
  ∀ n, P14771015532258418755.a n = A107300 n

end A107300

/-! ## A107300.P8427174499617804303

`3*A052528(n)-A285186(n)`
-/

namespace A107300.P8427174499617804303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052528 n - A285186 n

end

end A107300.P8427174499617804303

namespace A107300

/-- `3*A052528(n)-A285186(n)` -/
def P8427174499617804303.Spec : Prop :=
  ∀ n, P8427174499617804303.a n = A107300 n

end A107300

/-! ## A107300.P11349358638873102063

`3*A052528(n)-A285185(n)/2`
-/

namespace A107300.P11349358638873102063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A052528 n : ℚ) - (A285185 n : ℚ) / 2

end

end A107300.P11349358638873102063

namespace A107300

/-- `3*A052528(n)-A285185(n)/2` -/
def P11349358638873102063.Spec : Prop :=
  ∀ n, P11349358638873102063.a n = (A107300 n : ℚ)

end A107300

/-! ## A107300.P6756981628233221953

`3*A052528(n)-(abs(A078053(n))-A052987(n))`
-/

namespace A107300.P6756981628233221953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052528 n - (|A078053 n| - A052987 n)

end

end A107300.P6756981628233221953

namespace A107300

/-- `3*A052528(n)-(abs(A078053(n))-A052987(n))` -/
def P6756981628233221953.Spec : Prop :=
  ∀ n, P6756981628233221953.a n = A107300 n

end A107300

/-!
# A107303: Numbers k such that (3*k - 5) is prime.

The programs for A107303, the canonical program `A107303.P6905371674303678170` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107303 has offset 1).

The definition of A107303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107303.P2225665512203458246

`(p?[3*n+1]+5)/3`
-/

namespace A107303.P2225665512203458246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 5 : ℚ) / 3

end

end A107303.P2225665512203458246

namespace A107303

/-- `(p?[3*n+1]+5)/3` -/
def P2225665512203458246.Spec : Prop :=
  ∀ n, P2225665512203458246.a n = (A107303 (n + 1) : ℚ)

end A107303

/-! ## A107303.P11147071466037962018

`A153183(n+1)+1`
-/

namespace A107303.P11147071466037962018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) + 1

end

end A107303.P11147071466037962018

namespace A107303

/-- `A153183(n+1)+1` -/
def P11147071466037962018.Spec : Prop :=
  ∀ n, P11147071466037962018.a n = A107303 (n + 1)

theorem P11147071466037962018.correct : P11147071466037962018.Spec := by
  intro n
  simp only [A107303, Nat.add_sub_cancel, A107303.P11147071466037962018.a, A107303.P6905371674303678170.a, A034936, A034936.P1115765045630556781.a, A153183, A153183.P10933182994355425075.a, A024892, A024892.P16415756405401507162.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107303

/-! ## A107303.P7233413067348629993

`A024892(n+1)+2`
-/

namespace A107303.P7233413067348629993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) + 2

end

end A107303.P7233413067348629993

namespace A107303

/-- `A024892(n+1)+2` -/
def P7233413067348629993.Spec : Prop :=
  ∀ n, P7233413067348629993.a n = A107303 (n + 1)

theorem P7233413067348629993.correct : P7233413067348629993.Spec := by
  intro n
  simp only [A107303, Nat.add_sub_cancel, A107303.P7233413067348629993.a, A107303.P6905371674303678170.a, A024892, A024892.P16415756405401507162.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107303

/-! ## A107303.P6905371674303678170

`A034936(n+1)+3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107303

/-- `A034936(n+1)+3` -/
def P6905371674303678170.Spec : Prop :=
  ∀ n, P6905371674303678170.a n = A107303 (n + 1)

theorem P6905371674303678170.correct : P6905371674303678170.Spec := by
  intro n
  simp only [A107303, Nat.add_sub_cancel]

end A107303

/-! ## A107303.P11852117399358915544

`A089953(n+1)+4`
-/

namespace A107303.P11852117399358915544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 4

end

end A107303.P11852117399358915544

namespace A107303

/-- `A089953(n+1)+4` -/
def P11852117399358915544.Spec : Prop :=
  ∀ n, P11852117399358915544.a n = A107303 (n + 1)

theorem P11852117399358915544.correct : P11852117399358915544.Spec := by
  intro n
  simp only [A107303, Nat.add_sub_cancel, A107303.P11852117399358915544.a, A107303.P6905371674303678170.a, A034936, A034936.P1115765045630556781.a, A089953, A089953.P3265903741196432824.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107303

/-! ## A107303.P3580399395912563004

`2*(A024899(n+1)+1)`
-/

namespace A107303.P3580399395912563004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024899 (n + 1) + 1)

end

end A107303.P3580399395912563004

namespace A107303

/-- `2*(A024899(n+1)+1)` -/
def P3580399395912563004.Spec : Prop :=
  ∀ n, P3580399395912563004.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P12240625526684450822

`2*(A153218(n+1)+2)`
-/

namespace A107303.P12240625526684450822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153218 (n + 1) + 2)

end

end A107303.P12240625526684450822

namespace A107303

/-- `2*(A153218(n+1)+2)` -/
def P12240625526684450822.Spec : Prop :=
  ∀ n, P12240625526684450822.a n = A107303 (n + 1)

theorem P12240625526684450822.correct : P12240625526684450822.Spec := by
  intro n
  simp only [A107303, Nat.add_sub_cancel, A107303.P12240625526684450822.a, A107303.P6905371674303678170.a, A034936, A034936.P1115765045630556781.a, A153218, A153218.P3785772997736358194.f1, A153218.P3785772997736358194.f2, A153218.P3785772997736358194.a, A245838, A245838.P8667444233947326687.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A016777, A016777.P9931792138852554157.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107303

/-! ## A107303.P3169840401410412516

`(A002476(n+1)+5)/3`
-/

namespace A107303.P3169840401410412516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) + 5 : ℚ) / 3

end

end A107303.P3169840401410412516

namespace A107303

/-- `(A002476(n+1)+5)/3` -/
def P3169840401410412516.Spec : Prop :=
  ∀ n, P3169840401410412516.a n = (A107303 (n + 1) : ℚ)

end A107303

/-! ## A107303.P11476976872047254982

`A022760(n+1)+A139394(n+1)+2`
-/

namespace A107303.P11476976872047254982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022760 (n + 1) + (A139394 (n + 1) + 2)

end

end A107303.P11476976872047254982

namespace A107303

/-- `A022760(n+1)+A139394(n+1)+2` -/
def P11476976872047254982.Spec : Prop :=
  ∀ n, P11476976872047254982.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P8539717975116296070

`A002476(n+1)-(A173177(n+1)+A024899(n+1))`
-/

namespace A107303.P8539717975116296070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) - (A173177 (n + 1) + A024899 (n + 1))

end

end A107303.P8539717975116296070

namespace A107303

/-- `A002476(n+1)-(A173177(n+1)+A024899(n+1))` -/
def P8539717975116296070.Spec : Prop :=
  ∀ n, P8539717975116296070.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P15093126263327224468

`A181709(A138972(n+1))+1`
-/

namespace A107303.P15093126263327224468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (A138972 (n + 1)).toNat + 1

end

end A107303.P15093126263327224468

namespace A107303

/-- `A181709(A138972(n+1))+1` -/
def P15093126263327224468.Spec : Prop :=
  ∀ n, P15093126263327224468.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P18324233829975244009

`A144769(A091178(n+1))+2`
-/

namespace A107303.P18324233829975244009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A091178 (n + 1)).toNat + 2

end

end A107303.P18324233829975244009

namespace A107303

/-- `A144769(A091178(n+1))+2` -/
def P18324233829975244009.Spec : Prop :=
  ∀ n, P18324233829975244009.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P9601938867584432800

`A144769(A171820(n+2))+2`
-/

namespace A107303.P9601938867584432800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (A171820 (n + 2)).toNat + 2

end

end A107303.P9601938867584432800

namespace A107303

/-- `A144769(A171820(n+2))+2` -/
def P9601938867584432800.Spec : Prop :=
  ∀ n, P9601938867584432800.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P10279639397466340106

`eq[1, A001222(3*n+1)]+2`
-/

namespace A107303.P10279639397466340106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107303.P10279639397466340106

namespace A107303

/-- `eq[1, A001222(3*n+1)]+2` -/
def P10279639397466340106.Spec : Prop :=
  ∀ n, (P10279639397466340106.a n : ℤ) = A107303 (n + 1)

end A107303

/-! ## A107303.P11807355932748929705

`eq[2, A000005(3*n+1)]+2`
-/

namespace A107303.P11807355932748929705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107303.P11807355932748929705

namespace A107303

/-- `eq[2, A000005(3*n+1)]+2` -/
def P11807355932748929705.Spec : Prop :=
  ∀ n, (P11807355932748929705.a n : ℤ) = A107303 (n + 1)

end A107303

/-! ## A107303.P9729723839541676865

`lt[n+1, A020639(3*n+1)]+2`
-/

namespace A107303.P9729723839541676865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A107303.P9729723839541676865

namespace A107303

/-- `lt[n+1, A020639(3*n+1)]+2` -/
def P9729723839541676865.Spec : Prop :=
  ∀ n, (P9729723839541676865.a n : ℤ) = A107303 (n + 1)

end A107303

/-! ## A107303.P1445299058944811794

`lt[2*n+1, A006530(2*n+1+n)]+2`
-/

namespace A107303.P1445299058944811794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A107303.P1445299058944811794

namespace A107303

/-- `lt[2*n+1, A006530(2*n+1+n)]+2` -/
def P1445299058944811794.Spec : Prop :=
  ∀ n, (P1445299058944811794.a n : ℤ) = A107303 (n + 1)

end A107303

/-! ## A107303.P9996215755406261882

`eq[1, A054024(3*n+1)]+2`
-/

namespace A107303.P9996215755406261882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107303.P9996215755406261882

namespace A107303

/-- `eq[1, A054024(3*n+1)]+2` -/
def P9996215755406261882.Spec : Prop :=
  ∀ n, (P9996215755406261882.a n : ℤ) = A107303 (n + 1)

end A107303

/-! ## A107303.P481998284949664943

`A103517(A024899(n+1))`
-/

namespace A107303.P481998284949664943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A024899 (n + 1)).toNat

end

end A107303.P481998284949664943

namespace A107303

/-- `A103517(A024899(n+1))` -/
def P481998284949664943.Spec : Prop :=
  ∀ n, P481998284949664943.a n = A107303 (n + 1)

end A107303

/-! ## A107303.P16443563307797670325

`A005843(A024899(n+1)+1)`
-/

namespace A107303.P16443563307797670325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024899 (n + 1) + 1).toNat

end

end A107303.P16443563307797670325

namespace A107303

/-- `A005843(A024899(n+1)+1)` -/
def P16443563307797670325.Spec : Prop :=
  ∀ n, P16443563307797670325.a n = A107303 (n + 1)

end A107303

/-!
# A107304: Numbers k such that 5k - 7 is prime.

The programs for A107304, the canonical program `A107304.P8298507591522945342` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107304 has offset 1).

The definition of A107304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107304.P8298507591522945342

`A024896(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107304

/-- `A024896(n+1)+1` -/
def P8298507591522945342.Spec : Prop :=
  ∀ n, P8298507591522945342.a n = A107304 (n + 1)

theorem P8298507591522945342.correct : P8298507591522945342.Spec := by
  intro n
  simp only [A107304, Nat.add_sub_cancel]

end A107304

/-! ## A107304.P1954138145176536640

`A087505(n+1)+2`
-/

namespace A107304.P1954138145176536640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1) + 2

end

end A107304.P1954138145176536640

namespace A107304

/-- `A087505(n+1)+2` -/
def P1954138145176536640.Spec : Prop :=
  ∀ n, P1954138145176536640.a n = A107304 (n + 1)

theorem P1954138145176536640.correct : P1954138145176536640.Spec := by
  intro n
  simp only [A107304, Nat.add_sub_cancel, A107304.P1954138145176536640.a, A107304.P8298507591522945342.a, A024896, A024896.P16795519031503293182.f1, A024896.P16795519031503293182.a, A087505, A087505.P2303323204147198729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107304

/-! ## A107304.P919202158929204707

`2*A024913(n+1)`
-/

namespace A107304.P919202158929204707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024913 (n + 1)

end

end A107304.P919202158929204707

namespace A107304

/-- `2*A024913(n+1)` -/
def P919202158929204707.Spec : Prop :=
  ∀ n, P919202158929204707.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P112056240012637183

`2*(A102338(n+1)+1)`
-/

namespace A107304.P112056240012637183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102338 (n + 1) + 1)

end

end A107304.P112056240012637183

namespace A107304

/-- `2*(A102338(n+1)+1)` -/
def P112056240012637183.Spec : Prop :=
  ∀ n, P112056240012637183.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P4464426385709431891

`2*(A108584(n+1)-9)`
-/

namespace A107304.P4464426385709431891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108584 (n + 1) - 9)

end

end A107304.P4464426385709431891

namespace A107304

/-- `2*(A108584(n+1)-9)` -/
def P4464426385709431891.Spec : Prop :=
  ∀ n, P4464426385709431891.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P15956374805882842314

`floor(A030431(n+1)/5)+2`
-/

namespace A107304.P15956374805882842314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030431 (n + 1) : ℚ) / 5⌋ + 2

end

end A107304.P15956374805882842314

namespace A107304

/-- `floor(A030431(n+1)/5)+2` -/
def P15956374805882842314.Spec : Prop :=
  ∀ n, P15956374805882842314.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P8971915973692492675

`A024913(n+1)+A102338(n+1)+1`
-/

namespace A107304.P8971915973692492675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) + (A102338 (n + 1) + 1)

end

end A107304.P8971915973692492675

namespace A107304

/-- `A024913(n+1)+A102338(n+1)+1` -/
def P8971915973692492675.Spec : Prop :=
  ∀ n, P8971915973692492675.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P8891021892963475395

`2*A185322(A049508(n+1))`
-/

namespace A107304.P8891021892963475395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185322 (A049508 (n + 1)).toNat

end

end A107304.P8891021892963475395

namespace A107304

/-- `2*A185322(A049508(n+1))` -/
def P8891021892963475395.Spec : Prop :=
  ∀ n, P8891021892963475395.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P17555712650910465834

`2*A185322(A244739(n+2))`
-/

namespace A107304.P17555712650910465834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185322 (A244739 (n + 2)).toNat

end

end A107304.P17555712650910465834

namespace A107304

/-- `2*A185322(A244739(n+2))` -/
def P17555712650910465834.Spec : Prop :=
  ∀ n, P17555712650910465834.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P9936633286639034198

`A005843(A102338(n+1))+2`
-/

namespace A107304.P9936633286639034198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A102338 (n + 1)).toNat + 2

end

end A107304.P9936633286639034198

namespace A107304

/-- `A005843(A102338(n+1))+2` -/
def P9936633286639034198.Spec : Prop :=
  ∀ n, P9936633286639034198.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P14932069498578266562

`eq[2, A000005(5*n+3)]+2`
-/

namespace A107304.P14932069498578266562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107304.P14932069498578266562

namespace A107304

/-- `eq[2, A000005(5*n+3)]+2` -/
def P14932069498578266562.Spec : Prop :=
  ∀ n, (P14932069498578266562.a n : ℤ) = A107304 (n + 1)

end A107304

/-! ## A107304.P1748353548689019576

`lt[A001222(5*n+3), 2]+2`
-/

namespace A107304.P1748353548689019576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A107304.P1748353548689019576

namespace A107304

/-- `lt[A001222(5*n+3), 2]+2` -/
def P1748353548689019576.Spec : Prop :=
  ∀ n, (P1748353548689019576.a n : ℤ) = A107304 (n + 1)

end A107304

/-! ## A107304.P9878561647570758345

`lt[n+1, A020639(5*n+3)]+2`
-/

namespace A107304.P9878561647570758345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A107304.P9878561647570758345

namespace A107304

/-- `lt[n+1, A020639(5*n+3)]+2` -/
def P9878561647570758345.Spec : Prop :=
  ∀ n, (P9878561647570758345.a n : ℤ) = A107304 (n + 1)

end A107304

/-! ## A107304.P18405642054909702389

`eq[1, A001222(abs(3-5*n)+1)]+1`
-/

namespace A107304.P18405642054909702389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|3 - (5 * n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107304.P18405642054909702389

namespace A107304

/-- `eq[1, A001222(abs(3-5*n)+1)]+1` -/
def P18405642054909702389.Spec : Prop :=
  ∀ n, (P18405642054909702389.a n : ℤ) = A107304 (n + 1)

end A107304

/-! ## A107304.P17279243620097392089

`lt[A000005(4*(n+1)+n-1), 3]+2`
-/

namespace A107304.P17279243620097392089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((4 * (n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A107304.P17279243620097392089

namespace A107304

/-- `lt[A000005(4*(n+1)+n-1), 3]+2` -/
def P17279243620097392089.Spec : Prop :=
  ∀ n, (P17279243620097392089.a n : ℤ) = A107304 (n + 1)

end A107304

/-! ## A107304.P14585290988082716338

`A004277(A024913(n+1))`
-/

namespace A107304.P14585290988082716338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024913 (n + 1)).toNat

end

end A107304.P14585290988082716338

namespace A107304

/-- `A004277(A024913(n+1))` -/
def P14585290988082716338.Spec : Prop :=
  ∀ n, P14585290988082716338.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P1382253581814916875

`A004273(A102338(n+1)+1)+1`
-/

namespace A107304.P1382253581814916875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102338 (n + 1) + 1).toNat + 1

end

end A107304.P1382253581814916875

namespace A107304

/-- `A004273(A102338(n+1)+1)+1` -/
def P1382253581814916875.Spec : Prop :=
  ∀ n, P1382253581814916875.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P3408775941151788324

`A004273(A024913(n+1)+1)-1`
-/

namespace A107304.P3408775941151788324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024913 (n + 1) + 1).toNat - 1

end

end A107304.P3408775941151788324

namespace A107304

/-- `A004273(A024913(n+1)+1)-1` -/
def P3408775941151788324.Spec : Prop :=
  ∀ n, P3408775941151788324.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P7705483252952744769

`2*A023451(A108584(n+1))`
-/

namespace A107304.P7705483252952744769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023451 (A108584 (n + 1)).toNat

end

end A107304.P7705483252952744769

namespace A107304

/-- `2*A023451(A108584(n+1))` -/
def P7705483252952744769.Spec : Prop :=
  ∀ n, P7705483252952744769.a n = A107304 (n + 1)

end A107304

/-! ## A107304.P5407469749597380616

`2*A023454(A108854(n+1))`
-/

namespace A107304.P5407469749597380616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023454 (A108854 (n + 1)).toNat

end

end A107304.P5407469749597380616

namespace A107304

/-- `2*A023454(A108854(n+1))` -/
def P5407469749597380616.Spec : Prop :=
  ∀ n, P5407469749597380616.a n = A107304 (n + 1)

end A107304

/-!
# A107305: Numbers k such that 11*k - 13 is prime.

The programs for A107305, the canonical program `A107305.P9243721585746097380` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107305 has offset 1).

The definition of A107305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107305.P14830193219934360364

`A107994(n+1)+1`
-/

namespace A107305.P14830193219934360364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107994 (n + 1) + 1

end

end A107305.P14830193219934360364

namespace A107305

/-- `A107994(n+1)+1` -/
def P14830193219934360364.Spec : Prop :=
  ∀ n, P14830193219934360364.a n = A107305 (n + 1)

end A107305

/-! ## A107305.P11193172585810420460

`A108727(n+1)+4`
-/

namespace A107305.P11193172585810420460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108727 (n + 1) + 4

end

end A107305.P11193172585810420460

namespace A107305

/-- `A108727(n+1)+4` -/
def P11193172585810420460.Spec : Prop :=
  ∀ n, P11193172585810420460.a n = A107305 (n + 1)

end A107305

/-! ## A107305.P9243721585746097380

`(A141856(n+1)+2)/11+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107305

/-- `(A141856(n+1)+2)/11+1` -/
def P9243721585746097380.Spec : Prop :=
  ∀ n, P9243721585746097380.a n = (A107305 (n + 1) : ℚ)

end A107305

/-! ## A107305.P2415888114485251320

`ceil(p?[a(n-1)+11]/11)+1` with `a(0)=6, a(1)=9`
-/

namespace A107305.P2415888114485251320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 9] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ + 1

end

end A107305.P2415888114485251320

namespace A107305

/-- `ceil(p?[a(n-1)+11]/11)+1` -/
def P2415888114485251320.Spec : Prop :=
  ∀ n, P2415888114485251320.a n = A107305 (n + 1)

end A107305

/-! ## A107305.P14425259309102684662

`round(p?[a(n-1)+11]/11)+1` with `a(0)=10, a(1)=9`
-/

namespace A107305.P14425259309102684662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 9] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11) + 1

end

end A107305.P14425259309102684662

namespace A107305

/-- `round(p?[a(n-1)+11]/11)+1` -/
def P14425259309102684662.Spec : Prop :=
  ∀ n, P14425259309102684662.a n = A107305 (n + 1)

end A107305

/-! ## A107305.P5248654733408698979

`A014681(A107994(n+1))`
-/

namespace A107305.P5248654733408698979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A107994 (n + 1)).toNat

end

end A107305.P5248654733408698979

namespace A107305

/-- `A014681(A107994(n+1))` -/
def P5248654733408698979.Spec : Prop :=
  ∀ n, P5248654733408698979.a n = A107305 (n + 1)

end A107305

/-! ## A107305.P2143010539096832101

`A020705(A108727(n+1))`
-/

namespace A107305.P2143010539096832101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A108727 (n + 1)).toNat

end

end A107305.P2143010539096832101

namespace A107305

/-- `A020705(A108727(n+1))` -/
def P2143010539096832101.Spec : Prop :=
  ∀ n, P2143010539096832101.a n = A107305 (n + 1)

end A107305

/-! ## A107305.P6205725139458691632

`eq[1, A001222(abs(3-11*n)+1)]+1`
-/

namespace A107305.P6205725139458691632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|3 - (11 * n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107305.P6205725139458691632

namespace A107305

/-- `eq[1, A001222(abs(3-11*n)+1)]+1` -/
def P6205725139458691632.Spec : Prop :=
  ∀ n, (P6205725139458691632.a n : ℤ) = A107305 (n + 1)

end A107305

/-! ## A107305.P9734180260442083645

`lt[A001222(9*(n+1)+n+n), 2]+2`
-/

namespace A107305.P9734180260442083645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * (n + 1) + n + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A107305.P9734180260442083645

namespace A107305

/-- `lt[A001222(9*(n+1)+n+n), 2]+2` -/
def P9734180260442083645.Spec : Prop :=
  ∀ n, (P9734180260442083645.a n : ℤ) = A107305 (n + 1)

end A107305

/-! ## A107305.P54325053069052682

`lt[A000005(Δ[n²]+9*n+8), 3]+2`
-/

namespace A107305.P54325053069052682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (9 * n + 8 : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A107305.P54325053069052682

namespace A107305

/-- `lt[A000005(Δ[n²]+9*n+8), 3]+2` -/
def P54325053069052682.Spec : Prop :=
  ∀ n, (P54325053069052682.a n : ℤ) = A107305 (n + 1)

end A107305

/-! ## A107305.P15169109645398087718

`eq[2, A000005(A017497(n))]+2`
-/

namespace A107305.P15169109645398087718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107305.P15169109645398087718

namespace A107305

/-- `eq[2, A000005(A017497(n))]+2` -/
def P15169109645398087718.Spec : Prop :=
  ∀ n, (P15169109645398087718.a n : ℤ) = A107305 (n + 1)

end A107305

/-! ## A107305.P5311599180379442965

`lt[A000005(record[(11*n+5)/A020639(n+1)]+1), 3]`
-/

namespace A107305.P5311599180379442965
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * n + 5 : ℚ) / (A020639 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A107305.P5311599180379442965

namespace A107305

/-- `lt[A000005(record[(11*n+5)/A020639(n+1)]+1), 3]` -/
def P5311599180379442965.Spec : Prop :=
  ∀ n, (P5311599180379442965.a n : ℤ) = A107305 (n + 1)

end A107305

/-! ## A107305.P8300906901671067762

`eq[A000010(A017497(n)), A017485(n)]+2`
-/

namespace A107305.P8300906901671067762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017497 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A107305.P8300906901671067762

namespace A107305

/-- `eq[A000010(A017497(n)), A017485(n)]+2` -/
def P8300906901671067762.Spec : Prop :=
  ∀ n, (P8300906901671067762.a n : ℤ) = A107305 (n + 1)

end A107305

/-! ## A107305.P8968981304419239054

`lt[n+2, A014963(abs(2-11*n))]+1`
-/

namespace A107305.P8968981304419239054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |2 - (11 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A107305.P8968981304419239054

namespace A107305

/-- `lt[n+2, A014963(abs(2-11*n))]+1` -/
def P8968981304419239054.Spec : Prop :=
  ∀ n, (P8968981304419239054.a n : ℤ) = A107305 (n + 1)

end A107305

/-!
# A107306: Numbers k such that (17*k - 19) is prime.

The programs for A107306, the canonical program `A107306.P10736151722270908272` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107306 has offset 1).

The definition of A107306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107306.P10736151722270908272

`(A140543(n+1)+19)/17`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107306

/-- `(A140543(n+1)+19)/17` -/
def P10736151722270908272.Spec : Prop :=
  ∀ n, P10736151722270908272.a n = (A107306 (n + 1) : ℚ)

end A107306

/-! ## A107306.P3354706554924059185

`floor(p?[a(n-1)+17]/17)+2` with `a(0)=32`
-/

namespace A107306.P3354706554924059185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 17⌋ + 2

end

end A107306.P3354706554924059185

namespace A107306

/-- `floor(p?[a(n-1)+17]/17)+2` -/
def P3354706554924059185.Spec : Prop :=
  ∀ n, P3354706554924059185.a n = A107306 (n + 1)

end A107306

/-! ## A107306.P4901282772606190792

`eq[2, A000005(abs(3-17*n)+1)]+1`
-/

namespace A107306.P4901282772606190792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|3 - (17 * n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107306.P4901282772606190792

namespace A107306

/-- `eq[2, A000005(abs(3-17*n)+1)]+1` -/
def P4901282772606190792.Spec : Prop :=
  ∀ n, (P4901282772606190792.a n : ℤ) = A107306 (n + 1)

end A107306

/-! ## A107306.P13633908862797796052

`lt[A001222(A125169(n)+n), 2]+2`
-/

namespace A107306.P13633908862797796052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125169 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A107306.P13633908862797796052

namespace A107306

/-- `lt[A001222(A125169(n)+n), 2]+2` -/
def P13633908862797796052.Spec : Prop :=
  ∀ n, (P13633908862797796052.a n : ℤ) = A107306 (n + 1)

end A107306

/-! ## A107306.P7396164795304870058

`eq[1, A001222(abs(20-A008599(n))+1)]`
-/

namespace A107306.P7396164795304870058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|20 - A008599 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107306.P7396164795304870058

namespace A107306

/-- `eq[1, A001222(abs(20-A008599(n))+1)]` -/
def P7396164795304870058.Spec : Prop :=
  ∀ n, (P7396164795304870058.a n : ℤ) = A107306 (n + 1)

end A107306

/-!
# A107307: Expansion of g.f. (1-x-2*x^2-x^3+x^4)/((x-1)^3*(6*x^2+2*x-1)).

The programs for A107307, the canonical program `A107307.P8957626330043279586` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107307 has offset 0).

The definition of A107307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2-x^3+x^4)/(1-5x+3x^2+11x^3-16x^4+6x^5))` (program `A107307.P8957626330043279586`, by `A107307.P8957626330043279586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107307.P8957626330043279586

`ogf((1-x-2x^2-x^3+x^4)/(1-5x+3x^2+11x^3-16x^4+6x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107307

/-- `ogf((1-x-2x^2-x^3+x^4)/(1-5x+3x^2+11x^3-16x^4+6x^5))` -/
def P8957626330043279586.Spec : Prop :=
  ∀ n, P8957626330043279586.a n = A107307 n

theorem P8957626330043279586.correct : P8957626330043279586.Spec := by
  intro n
  simp only [A107307]

end A107307

/-! ## A107307.P18333316381261182354

`or(A057361(A088854(n+1)), A346051(n))`
-/

namespace A107307.P18333316381261182354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057361 (A088854 (n + 1)).toNat) (A346051 n)

end

end A107307.P18333316381261182354

namespace A107307

/-- `or(A057361(A088854(n+1)), A346051(n))` -/
def P18333316381261182354.Spec : Prop :=
  ∀ n, P18333316381261182354.a n = A107307 n

end A107307

/-!
# A107308: Numbers k such that (29*k - 31) is prime.

The programs for A107308, the canonical program `A107308.P4460867256935608592` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107308 has offset 1).

The definition of A107308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107308.P4460867256935608592

`eq[1, A001222(A161714(n+4)+n+1)]+5`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A107308

/-- `eq[1, A001222(A161714(n+4)+n+1)]+5` -/
def P4460867256935608592.Spec : Prop :=
  ∀ n, (P4460867256935608592.a n : ℤ) = A107308 (n + 1)

theorem P4460867256935608592.correct : P4460867256935608592.Spec := by
  intro n
  simp only [A107308, Nat.add_sub_cancel]

end A107308

/-! ## A107308.P8488764599422920931

`lt[A059886(n+1)², A317256(n)]`
-/

namespace A107308.P8488764599422920931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059886 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107308.P8488764599422920931

namespace A107308

/-- `lt[A059886(n+1)², A317256(n)]` -/
def P8488764599422920931.Spec : Prop :=
  ∀ n, (P8488764599422920931.a n : ℤ) = A107308 (n + 1)

end A107308

/-! ## A107308.P12901342775463454947

`lt[A059886(n+1)², A344607(n)]`
-/

namespace A107308.P12901342775463454947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059886 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344607 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107308.P12901342775463454947

namespace A107308

/-- `lt[A059886(n+1)², A344607(n)]` -/
def P12901342775463454947.Spec : Prop :=
  ∀ n, (P12901342775463454947.a n : ℤ) = A107308 (n + 1)

end A107308

/-! ## A107308.P1744152123733452035

`lt[A059886(n+1)², A082103(n+1)]`
-/

namespace A107308.P1744152123733452035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059886 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107308.P1744152123733452035

namespace A107308

/-- `lt[A059886(n+1)², A082103(n+1)]` -/
def P1744152123733452035.Spec : Prop :=
  ∀ n, (P1744152123733452035.a n : ℤ) = A107308 (n + 1)

end A107308

/-! ## A107308.P6623619958977491217

`lt[A000670(A057957(n+1)), A364345(n)]`
-/

namespace A107308.P6623619958977491217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A057957 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107308.P6623619958977491217

namespace A107308

/-- `lt[A000670(A057957(n+1)), A364345(n)]` -/
def P6623619958977491217.Spec : Prop :=
  ∀ n, (P6623619958977491217.a n : ℤ) = A107308 (n + 1)

end A107308

/-!
# A107309: Concatenation of twin primes in reverse order.

The programs for A107309, the canonical program `A107309.P11158848255490810356` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107309 has offset 0).

The definition of A107309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107309.P839985687026774870

`A001704(A006512(n+1))-3`
-/

namespace A107309.P839985687026774870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A006512 (n + 1)).toNat - 3

end

end A107309.P839985687026774870

namespace A107309

/-- `A001704(A006512(n+1))-3` -/
def P839985687026774870.Spec : Prop :=
  ∀ n, P839985687026774870.a n = A107309 n

end A107309

/-! ## A107309.P4682635054076854638

`A127421(A006512(n+1)+1)-3`
-/

namespace A107309.P4682635054076854638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A006512 (n + 1) + 1).toNat - 3

end

end A107309.P4682635054076854638

namespace A107309

/-- `A127421(A006512(n+1)+1)-3` -/
def P4682635054076854638.Spec : Prop :=
  ∀ n, P4682635054076854638.a n = A107309 n

end A107309

/-! ## A107309.P11158848255490810356

`A001704(p?[A000040(n+1)+2])-3`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107309

/-- `A001704(p?[A000040(n+1)+2])-3` -/
def P11158848255490810356.Spec : Prop :=
  ∀ n, P11158848255490810356.a n = A107309 n

theorem P11158848255490810356.correct : P11158848255490810356.Spec := by
  intro n
  simp only [A107309]

end A107309

/-! ## A107309.P5396607239857018249

`A001704(p?[A001359(n+1)+2])-3`
-/

namespace A107309.P5396607239857018249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A107309.P5396607239857018249

namespace A107309

/-- `A001704(p?[A001359(n+1)+2])-3` -/
def P5396607239857018249.Spec : Prop :=
  ∀ n, P5396607239857018249.a n = A107309 n

end A107309

/-! ## A107309.P2247144947228550309

`A127423(A094743(n+2))-1`
-/

namespace A107309.P2247144947228550309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A094743 (n + 2)).toNat - 1

end

end A107309.P2247144947228550309

namespace A107309

/-- `A127423(A094743(n+2))-1` -/
def P2247144947228550309.Spec : Prop :=
  ∀ n, P2247144947228550309.a n = A107309 n

end A107309

/-! ## A107309.P16653460986469693671

`A020338(A014574(n+1)+1)-2`
-/

namespace A107309.P16653460986469693671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A014574 (n + 1) + 1).toNat - 2

end

end A107309.P16653460986469693671

namespace A107309

/-- `A020338(A014574(n+1)+1)-2` -/
def P16653460986469693671.Spec : Prop :=
  ∀ n, P16653460986469693671.a n = A107309 n

end A107309

/-! ## A107309.P3116200164540396952

`A127423(A001359(n+1)+2)-1`
-/

namespace A107309.P3116200164540396952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (A001359 (n + 1) + 2).toNat - 1

end

end A107309.P3116200164540396952

namespace A107309

/-- `A127423(A001359(n+1)+2)-1` -/
def P3116200164540396952.Spec : Prop :=
  ∀ n, P3116200164540396952.a n = A107309 n

end A107309

/-! ## A107309.P5315966788574220020

`A127423(p?[A000040(n+1)+2])-1`
-/

namespace A107309.P5315966788574220020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A107309.P5315966788574220020

namespace A107309

/-- `A127423(p?[A000040(n+1)+2])-1` -/
def P5315966788574220020.Spec : Prop :=
  ∀ n, P5315966788574220020.a n = A107309 n

end A107309

/-! ## A107309.P8154589143765096138

`A020338(p?[A000040(n+1)+2])-2`
-/

namespace A107309.P8154589143765096138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A107309.P8154589143765096138

namespace A107309

/-- `A020338(p?[A000040(n+1)+2])-2` -/
def P8154589143765096138.Spec : Prop :=
  ∀ n, P8154589143765096138.a n = A107309 n

end A107309

/-! ## A107309.P3768947762294852776

`A109958(p?[A000040(n+1)+2])-2`
-/

namespace A107309.P3768947762294852776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A107309.P3768947762294852776

namespace A107309

/-- `A109958(p?[A000040(n+1)+2])-2` -/
def P3768947762294852776.Spec : Prop :=
  ∀ n, P3768947762294852776.a n = A107309 n

end A107309

/-!
# A107312: Primes p such that p + 2 and p^2 + 2^2 are primes.

The programs for A107312, there is no canonical definition to state claims against.
-/

/-! ## A107312.P14971906243675724032

`∩[A001359(n+1), A192794(n+1)]`
-/

namespace A107312.P14971906243675724032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P14971906243675724032

/-! ## A107312.P12767613048735024383

`∩[A141830(n+1), A192794(n+1)]`
-/

namespace A107312.P12767613048735024383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P12767613048735024383

/-! ## A107312.P8357955218716549554

`∩[A001359(n+1), A062324(n+1)]`
-/

namespace A107312.P8357955218716549554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P8357955218716549554

/-! ## A107312.P6519360688966467725

`∩[A062324(n+1), A192794(n+1)]`
-/

namespace A107312.P6519360688966467725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P6519360688966467725

/-! ## A107312.P17439586875706217844

`∩[A062324(n+1), A378983(n+1)]`
-/

namespace A107312.P17439586875706217844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P17439586875706217844

/-! ## A107312.P6892787702608077273

`∩[A062324(n+1), A124588(n+1)]`
-/

namespace A107312.P6892787702608077273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P6892787702608077273

/-! ## A107312.P16727029709529683679

`∩[A062324(n+1), A181747(n+1)]`
-/

namespace A107312.P16727029709529683679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P16727029709529683679

/-! ## A107312.P15209098169314489588

`∩[A124588(n+1), A192794(n+1)]`
-/

namespace A107312.P15209098169314489588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P15209098169314489588

/-! ## A107312.P4361280049681514670

`∩[A192794(n+1), A238528(n+1)]`
-/

namespace A107312.P4361280049681514670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P4361280049681514670

/-! ## A107312.P962997515178625352

`∩[A054799(n+1), A062324(n+1)]`
-/

namespace A107312.P962997515178625352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P962997515178625352

/-! ## A107312.P11122718226593348331

`∩[A062324(n+1), A063700(n+1)]`
-/

namespace A107312.P11122718226593348331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P11122718226593348331

/-! ## A107312.P6694714138762480519

`∩[A054799(n+1), A192794(n+1)]`
-/

namespace A107312.P6694714138762480519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P6694714138762480519

/-! ## A107312.P7743496981972999034

`∩[A062324(n+1), A280255(n+1)]`
-/

namespace A107312.P7743496981972999034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P7743496981972999034

/-! ## A107312.P15632098484775869432

`∩[A062324(n+1), A063693(n+1)]`
-/

namespace A107312.P15632098484775869432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P15632098484775869432

/-! ## A107312.P15068097169493204422

`∩[A063693(n+1), A192794(n+1)]`
-/

namespace A107312.P15068097169493204422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P15068097169493204422

/-! ## A107312.P5164089567180239349

`∩[A192794(n+1), A267944(n+1)]`
-/

namespace A107312.P5164089567180239349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P5164089567180239349

/-! ## A107312.P358935676507005151

`∩[A062324(n+1), A394509(n+1)]`
-/

namespace A107312.P358935676507005151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P358935676507005151

/-! ## A107312.P8021101123368368039

`∩[A062324(n+1), A395788(n+1)]`
-/

namespace A107312.P8021101123368368039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P8021101123368368039

/-! ## A107312.P2208713823836593379

`∩[A192794(n+1), A394509(n+1)]`
-/

namespace A107312.P2208713823836593379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P2208713823836593379

/-! ## A107312.P5881920629222084874

`∩[A192794(n+1), A395788(n+1)]`
-/

namespace A107312.P5881920629222084874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107312.P5881920629222084874

/-!
# A107313: Odd squares written backwards and sorted.

The programs for A107313, there is no canonical definition to state claims against.
-/

/-! ## A107313.P15515812530689349438

`A118715(A066408(n+1)%A104154(3*n+5))`
-/

namespace A107313.P15515812530689349438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (Int.tmod (A066408 (n + 1)) (A104154 (3 * n + 5))).toNat

end

end A107313.P15515812530689349438

/-! ## A107313.P2973550605655638012

`A118715(A066408(n+1))`
-/

namespace A107313.P2973550605655638012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118715 (A066408 (n + 1)).toNat

end

end A107313.P2973550605655638012

/-!
# A107314: Odd cubes written backwards and sorted.

The programs for A107314, there is no canonical definition to state claims against.
-/

/-! ## A107314.P8953473909081550853

`A004086(A264983(n)^A070939(n+3))`
-/

namespace A107314.P8953473909081550853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A264983 n : ℚ) ^ (A070939 (n + 3) : ℤ))).toNat

end

end A107314.P8953473909081550853

/-!
# A107315: Odd numbers written backwards and sorted.

The programs for A107315, there is no canonical definition to state claims against.
-/

/-! ## A107315.P13791252782058387476

`comp[A321474(2*n)]`
-/

namespace A107315.P13791252782058387476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A107315.P13791252782058387476

/-! ## A107315.P8649498790530443220

`comp[A336956(2*n)]`
-/

namespace A107315.P8649498790530443220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336956 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A107315.P8649498790530443220

/-! ## A107315.P10541425343732455603

`comp[A352152(2*n)]`
-/

namespace A107315.P10541425343732455603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352152 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A107315.P10541425343732455603

/-! ## A107315.P17210383171403431633

`lt[0, A336956(n)%2]`
-/

namespace A107315.P17210383171403431633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336956 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107315.P17210383171403431633

/-! ## A107315.P14815229367053266051

`eq[0, A027656(A321474(n))]`
-/

namespace A107315.P14815229367053266051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A321474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107315.P14815229367053266051

/-! ## A107315.P360689417088148882

`eq[0, A035363(A352152(n))]`
-/

namespace A107315.P360689417088148882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A352152 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107315.P360689417088148882

/-! ## A107315.P12077257784891243609

`eq[0, A056594(A336956(n))]`
-/

namespace A107315.P12077257784891243609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A336956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107315.P12077257784891243609

/-! ## A107315.P11264290766332120288

`lt[n, A019430(A004086(n))]`
-/

namespace A107315.P11264290766332120288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107315.P11264290766332120288

/-! ## A107315.P12946933495363290904

`record[A004151(A306590(n+1))]`
-/

namespace A107315.P12946933495363290904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A306590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107315.P12946933495363290904

/-!
# A107316: a(n) = floor(exp(n)/n).

The programs for A107316, the canonical program `A107316.P10103449567522407407` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107316 has offset 1).

The definition of A107316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(n+1)/(n+1))` (program `A107316.P10103449567522407407`, by `A107316.P10103449567522407407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107316.P10103449567522407407

`floor(exp(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107316

/-- `floor(exp(n+1)/(n+1))` -/
def P10103449567522407407.Spec : Prop :=
  ∀ n, P10103449567522407407.a n = A107316 (n + 1)

theorem P10103449567522407407.correct : P10103449567522407407.Spec := by
  intro n
  simp only [A107316, Nat.add_sub_cancel]

end A107316

/-! ## A107316.P13380186559279956000

`A132407(n+1)-1`
-/

namespace A107316.P13380186559279956000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132407 (n + 1) - 1

end

end A107316.P13380186559279956000

namespace A107316

/-- `A132407(n+1)-1` -/
def P13380186559279956000.Spec : Prop :=
  ∀ n, P13380186559279956000.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P2523633362492391296

`A001478(n+1)+A132407(n+1)+n`
-/

namespace A107316.P2523633362492391296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A132407 (n + 1) + (n : ℤ))

end

end A107316.P2523633362492391296

namespace A107316

/-- `A001478(n+1)+A132407(n+1)+n` -/
def P2523633362492391296.Spec : Prop :=
  ∀ n, P2523633362492391296.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P15090934463284454780

`A163805(gcd(n, n+1))+A132407(n+1)`
-/

namespace A107316.P15090934463284454780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (Nat.gcd n (n + 1)) + A132407 (n + 1)

end

end A107316.P15090934463284454780

namespace A107316

/-- `A163805(gcd(n, n+1))+A132407(n+1)` -/
def P15090934463284454780.Spec : Prop :=
  ∀ n, P15090934463284454780.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P1915356186890551846

`A132429(2*(2*n+1))+A132407(n+1)`
-/

namespace A107316.P1915356186890551846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (2 * (2 * n + 1)) + A132407 (n + 1)

end

end A107316.P1915356186890551846

namespace A107316

/-- `A132429(2*(2*n+1))+A132407(n+1)` -/
def P1915356186890551846.Spec : Prop :=
  ∀ n, P1915356186890551846.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P6694224711321631593

`A144432(Δ[A014601(n)])+A132407(n+1)`
-/

namespace A107316.P6694224711321631593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (f1 (n + 1) - f1 n).toNat + A132407 (n + 1)

end

end A107316.P6694224711321631593

namespace A107316

/-- `A144432(Δ[A014601(n)])+A132407(n+1)` -/
def P6694224711321631593.Spec : Prop :=
  ∀ n, P6694224711321631593.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P9309220239020748341

`A280193(A028310(2*n+1))+A132407(n+1)`
-/

namespace A107316.P9309220239020748341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A028310 (2 * n + 1)).toNat + A132407 (n + 1)

end

end A107316.P9309220239020748341

namespace A107316

/-- `A280193(A028310(2*n+1))+A132407(n+1)` -/
def P9309220239020748341.Spec : Prop :=
  ∀ n, P9309220239020748341.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P762344477157474651

`A128104(n+1)/(n+1)`
-/

namespace A107316.P762344477157474651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128104 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A107316.P762344477157474651

namespace A107316

/-- `A128104(n+1)/(n+1)` -/
def P762344477157474651.Spec : Prop :=
  ∀ n, P762344477157474651.a n = (A107316 (n + 1) : ℚ)

end A107316

/-! ## A107316.P6068737233644533803

`A128105(n+1)/(n+1)-1`
-/

namespace A107316.P6068737233644533803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128105 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A107316.P6068737233644533803

namespace A107316

/-- `A128105(n+1)/(n+1)-1` -/
def P6068737233644533803.Spec : Prop :=
  ∀ n, P6068737233644533803.a n = (A107316 (n + 1) : ℚ)

end A107316

/-! ## A107316.P18180218344598177457

`record[A128104(A028920(n))/A028920(n)]`
-/

namespace A107316.P18180218344598177457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128104 (A028920 n).toNat : ℚ) / (A028920 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107316.P18180218344598177457

namespace A107316

/-- `record[A128104(A028920(n))/A028920(n)]` -/
def P18180218344598177457.Spec : Prop :=
  ∀ n, P18180218344598177457.a n = (A107316 (n + 1) : ℚ)

end A107316

/-! ## A107316.P9971035397741641845

`A208769(A031368(n+1))+A132407(n+1)`
-/

namespace A107316.P9971035397741641845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208769 (A031368 (n + 1)).toNat + A132407 (n + 1)

end

end A107316.P9971035397741641845

namespace A107316

/-- `A208769(A031368(n+1))+A132407(n+1)` -/
def P9971035397741641845.Spec : Prop :=
  ∀ n, P9971035397741641845.a n = A107316 (n + 1)

end A107316

/-! ## A107316.P3379867768553125490

`A144432(A007318(∑[n]))+A132407(n+1)`
-/

namespace A107316.P3379867768553125490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A132407 (n + 1)

end

end A107316.P3379867768553125490

namespace A107316

/-- `A144432(A007318(∑[n]))+A132407(n+1)` -/
def P3379867768553125490.Spec : Prop :=
  ∀ n, P3379867768553125490.a n = A107316 (n + 1)

end A107316

/-!
# A107317: Semiprimes of the form 2*(m^2 + m + 1) (implying that m^2 + m + 1 is a prime).

The programs for A107317, there is no canonical definition to state claims against.
-/

/-! ## A107317.P8065896896280569376

`2*A002383(n+1)`
-/

namespace A107317.P8065896896280569376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002383 (n + 1)

end

end A107317.P8065896896280569376

/-! ## A107317.P8533886710363926348

`2*(A002384(n+1)²+A002384(n+1)+1)`
-/

namespace A107317.P8533886710363926348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002384 (n + 1) ^ 2 + A002384 (n + 1) + 1)

end

end A107317.P8533886710363926348

/-! ## A107317.P2984357047666022579

`(A110284(n+1)+3)/2`
-/

namespace A107317.P2984357047666022579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110284 (n + 1) + 3 : ℚ) / 2

end

end A107317.P2984357047666022579

/-! ## A107317.P18283438016299748711

`2*ceil((A088503(n+1)/2)²)`
-/

namespace A107317.P18283438016299748711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((A088503 (n + 1) : ℚ) / 2) ^ 2⌉

end

end A107317.P18283438016299748711

/-! ## A107317.P1191883740175744482

`2*(A055494(n+1)+A002384(n+1)²)`
-/

namespace A107317.P1191883740175744482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055494 (n + 1) + A002384 (n + 1) ^ 2)

end

end A107317.P1191883740175744482

/-! ## A107317.P14002179161238973801

`A002383(A000027(n+1))+A002383(n+1)`
-/

namespace A107317.P14002179161238973801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (A000027 (n + 1)).toNat + A002383 (n + 1)

end

end A107317.P14002179161238973801

/-! ## A107317.P3085645268057253905

`A089358(n+1)+A002384(n+1)*A088503(n+1)`
-/

namespace A107317.P3085645268057253905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089358 (n + 1) + A002384 (n + 1) * A088503 (n + 1)

end

end A107317.P3085645268057253905

/-! ## A107317.P3930203441867872395

`2*∩[A059055(n+1), A172979(n+1)]`
-/

namespace A107317.P3930203441867872395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107317.P3930203441867872395

/-! ## A107317.P16059365269112661175

`2*∩[A059055(n+1), A262587(n+1)]`
-/

namespace A107317.P16059365269112661175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107317.P16059365269112661175

/-! ## A107317.P16587441014873400566

`record[2*A081256(n+2)]`
-/

namespace A107317.P16587441014873400566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107317.P16587441014873400566

/-! ## A107317.P889566002973081265

`record[2*A108154(n+2)]`
-/

namespace A107317.P889566002973081265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108154 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107317.P889566002973081265

/-! ## A107317.P15960008481997102478

`2*A002061(A055494(n+1))`
-/

namespace A107317.P15960008481997102478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002061 (A055494 (n + 1)).toNat

end

end A107317.P15960008481997102478

/-! ## A107317.P10259477951776462394

`2*A182047(A002384(n+1))`
-/

namespace A107317.P10259477951776462394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182047 (A002384 (n + 1)).toNat

end

end A107317.P10259477951776462394

/-! ## A107317.P17082963815397378655

`2*A002061(A002384(n+1)+1)`
-/

namespace A107317.P17082963815397378655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002061 (A002384 (n + 1) + 1).toNat

end

end A107317.P17082963815397378655

/-! ## A107317.P14605708446677475414

`2*∩[A059055(n+1), A182047(n)]`
-/

namespace A107317.P14605708446677475414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107317.P14605708446677475414

/-! ## A107317.P911873463489371129

`2*∩[A206946(n+1), A182047(n)]`
-/

namespace A107317.P911873463489371129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107317.P911873463489371129

/-! ## A107317.P3868208104012206683

`2*∩[A346156(n+1), A182047(n)]`
-/

namespace A107317.P3868208104012206683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107317.P3868208104012206683

/-! ## A107317.P4807562795967507348

`A002383(n+1)+A002061(A055494(n+1))`
-/

namespace A107317.P4807562795967507348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1) + A002061 (A055494 (n + 1)).toNat

end

end A107317.P4807562795967507348

/-! ## A107317.P11887802029923038239

`A051890(A055494(n+1))`
-/

namespace A107317.P11887802029923038239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 (A055494 (n + 1)).toNat

end

end A107317.P11887802029923038239

/-!
# A107318: Number of ordered Goldbach partitions of 10^n.

The programs for A107318, there is no canonical definition to state claims against.
-/

/-! ## A107318.P6670894430030221612

`2*A065577(n+1)-floor(acot(n))`
-/

namespace A107318.P6670894430030221612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065577 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A107318.P6670894430030221612

/-! ## A107318.P2731434736950063488

`2*A065577(n+1)-A000007(n)`
-/

namespace A107318.P2731434736950063488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065577 (n + 1) - A000007 n

end

end A107318.P2731434736950063488

/-! ## A107318.P6672886653656955336

`2*A065577(n+1)-A080339((n+1)²)`
-/

namespace A107318.P6672886653656955336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065577 (n + 1) - A080339 ((n + 1) ^ 2)

end

end A107318.P6672886653656955336

/-!
# A107319: a(n) = C(n+8,8) * C(n+6,6).

The programs for A107319, the canonical program `A107319.P18000696003333290887` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107319 has offset 0).

The definition of A107319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*C(n+6, 6)` (program `A107319.P18000696003333290887`, by `A107319.P18000696003333290887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107319.P6522717241363836932

`C(n+6, 6)*C(n+8, 8)`
-/

namespace A107319.P6522717241363836932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 6 * Nat.choose (n + 8) 8

end

end A107319.P6522717241363836932

namespace A107319

/-- `C(n+6, 6)*C(n+8, 8)` -/
def P6522717241363836932.Spec : Prop :=
  ∀ n, (P6522717241363836932.a n : ℤ) = A107319 n

theorem P6522717241363836932.correct : P6522717241363836932.Spec := by
  intro n
  simp only [A107319, Nat.add_sub_cancel, A107319.P6522717241363836932.a, A107319.P18000696003333290887.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107319

/-! ## A107319.P18000696003333290887

`C(n+8, 8)*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107319

/-- `C(n+8, 8)*C(n+6, 6)` -/
def P18000696003333290887.Spec : Prop :=
  ∀ n, (P18000696003333290887.a n : ℤ) = A107319 n

theorem P18000696003333290887.correct : P18000696003333290887.Spec := by
  intro n
  simp only [A107319]

end A107319

/-! ## A107319.P4370994770262205631

`∑[n+1]*A133355(n)`
-/

namespace A107319.P4370994770262205631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A133355 n

end

end A107319.P4370994770262205631

namespace A107319

/-- `∑[n+1]*A133355(n)` -/
def P4370994770262205631.Spec : Prop :=
  ∀ n, P4370994770262205631.a n = A107319 n

end A107319

/-! ## A107319.P17795353047352884440

`C(n+6, 6)*A000581(n+8)`
-/

namespace A107319.P17795353047352884440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * A000581 (n + 8)

end

end A107319.P17795353047352884440

namespace A107319

/-- `C(n+6, 6)*A000581(n+8)` -/
def P17795353047352884440.Spec : Prop :=
  ∀ n, P17795353047352884440.a n = A107319 n

theorem P17795353047352884440.correct : P17795353047352884440.Spec := by
  intro n
  simp only [A107319, Nat.add_sub_cancel, A107319.P17795353047352884440.a, A107319.P18000696003333290887.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107319

/-! ## A107319.P5490673748675016455

`A253946(n+5)/6*∑[∑[A253946(n+5)/6]]`
-/

namespace A107319.P5490673748675016455
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) : ℚ) / 6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107319.P5490673748675016455

namespace A107319

/-- `A253946(n+5)/6*∑[∑[A253946(n+5)/6]]` -/
def P5490673748675016455.Spec : Prop :=
  ∀ n, P5490673748675016455.a n = (A107319 n : ℚ)

end A107319

/-! ## A107319.P11907186131108610421

`A000579(n+6)*A000581(n+8)`
-/

namespace A107319.P11907186131108610421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000581 (n + 8)

end

end A107319.P11907186131108610421

namespace A107319

/-- `A000579(n+6)*A000581(n+8)` -/
def P11907186131108610421.Spec : Prop :=
  ∀ n, P11907186131108610421.a n = A107319 n

theorem P11907186131108610421.correct : P11907186131108610421.Spec := by
  intro n
  simp only [A107319, Nat.add_sub_cancel, A107319.P11907186131108610421.a, A107319.P18000696003333290887.a, A000579, A000579.P13663713855180125612.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107319

/-! ## A107319.P1925572682755201136

`∑[∑[A299338(2*n)]]*A299338(2*n)`
-/

namespace A107319.P1925572682755201136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A299338 (2 * n)

end

end A107319.P1925572682755201136

namespace A107319

/-- `∑[∑[A299338(2*n)]]*A299338(2*n)` -/
def P1925572682755201136.Spec : Prop :=
  ∀ n, P1925572682755201136.a n = A107319 n

end A107319

/-! ## A107319.P2862512733434304598

`A007318(A000096(n+5)+7)*A000581(n+8)`
-/

namespace A107319.P2862512733434304598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 5) + 7).toNat * A000581 (n + 8)

end

end A107319.P2862512733434304598

namespace A107319

/-- `A007318(A000096(n+5)+7)*A000581(n+8)` -/
def P2862512733434304598.Spec : Prop :=
  ∀ n, P2862512733434304598.a n = A107319 n

end A107319

/-! ## A107319.P12905926182193386810

`A007318(eq[6, A002262(n)])*A000581(n+8)`
-/

namespace A107319.P12905926182193386810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A000581 (n + 8)

end

end A107319.P12905926182193386810

namespace A107319

/-- `A007318(eq[6, A002262(n)])*A000581(n+8)` -/
def P12905926182193386810.Spec : Prop :=
  ∀ n, P12905926182193386810.a n = A107319 n

end A107319

/-!
# A107320: a(1)=1 then a(n)=f(n)-a(f(n))+a(f(n)-a(f(n))) where f(n)=floor(n/2).

The programs for A107320, the canonical program `A107320.P10705132611720524248` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107320 has offset 1).

The definition of A107320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107320.P10705132611720524248

`floor((n+1)/2)-a(floor((n+1)/2)-1)+a(floor((n+1)/2)-a(floor((n+1)/2)-1)-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107320

/-- `floor((n+1)/2)-a(floor((n+1)/2)-1)+a(floor((n+1)/2)-a(floor((n+1)/2)-1)-1)` -/
def P10705132611720524248.Spec : Prop :=
  ∀ n, P10705132611720524248.a n = A107320 (n + 1)

theorem P10705132611720524248.correct : P10705132611720524248.Spec := by
  intro n
  simp only [A107320, Nat.add_sub_cancel]

end A107320

/-!
# A107321: a(n)=Sum(i+j+k+l+...+r+s=n) A005316(i)*A005316(j)*...*A005316(s) and the ordered partition of n runs over all odd i, all even j,k,.., r, all i,j,...,r,s>=1.

The programs for A107321, there is no canonical definition to state claims against.
-/

/-! ## A107321.P6281227757586544762

`A224447(A005578(n))+A007165(n+1)`
-/

namespace A107321.P6281227757586544762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224447 (A005578 n).toNat + A007165 (n + 1)

end

end A107321.P6281227757586544762

/-! ## A107321.P16691528215776071829

`A178798(A086246(n))+A007165(n+1)`
-/

namespace A107321.P16691528215776071829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A086246 n).toNat + A007165 (n + 1)

end

end A107321.P16691528215776071829

/-! ## A107321.P11699736689316800757

`A343606(A195684(n))+A007165(n+1)`
-/

namespace A107321.P11699736689316800757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343606 (A195684 n).toNat + A007165 (n + 1)

end

end A107321.P11699736689316800757

/-! ## A107321.P6615868494065065973

`A005316(n+1)-A137579(A026007(n))`
-/

namespace A107321.P6615868494065065973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 (n + 1) - A137579 (A026007 n).toNat

end

end A107321.P6615868494065065973

/-! ## A107321.P1770970952088435771

`or(A007165(n+1), A025443(A275594(n+1)))`
-/

namespace A107321.P1770970952088435771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007165 (n + 1)) (A025443 (A275594 (n + 1)).toNat)

end

end A107321.P1770970952088435771

/-!
# A107323: If n-th prime is 6m-1, then a(n) = 6m+1. If n-th prime is 6m+1, then a(n) = 6m-1.

The programs for A107323, the canonical program `A107323.P12283925054271668122` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107323 has offset 3).

The definition of A107323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107323.P12283925054271668122

`A000040(n+3)+2*A173950(n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107323

/-- `A000040(n+3)+2*A173950(n+3)` -/
def P12283925054271668122.Spec : Prop :=
  ∀ n, P12283925054271668122.a n = A107323 (n + 3)

theorem P12283925054271668122.correct : P12283925054271668122.Spec := by
  intro n
  simp only [A107323, Nat.add_sub_cancel]

end A107323

/-! ## A107323.P12004804082640452415

`abs(Δ[A051356(n)]+2)`
-/

namespace A107323.P12004804082640452415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A107323.P12004804082640452415

namespace A107323

/-- `abs(Δ[A051356(n)]+2)` -/
def P12004804082640452415.Spec : Prop :=
  ∀ n, P12004804082640452415.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P18389706756421608729

`A263483(n+3)-3`
-/

namespace A107323.P18389706756421608729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263483 (n + 3) - 3

end

end A107323.P18389706756421608729

namespace A107323

/-- `A263483(n+3)-3` -/
def P18389706756421608729.Spec : Prop :=
  ∀ n, P18389706756421608729.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P2052735391514047803

`A007310(xor(1, A181709(n+1)))`
-/

namespace A107323.P2052735391514047803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (Int.xor 1 (A181709 (n + 1))).toNat

end

end A107323.P2052735391514047803

namespace A107323

/-- `A007310(xor(1, A181709(n+1)))` -/
def P2052735391514047803.Spec : Prop :=
  ∀ n, P2052735391514047803.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P4201161725993126689

`A074066(p?[2*n+5])`
-/

namespace A107323.P4201161725993126689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A107323.P4201161725993126689

namespace A107323

/-- `A074066(p?[2*n+5])` -/
def P4201161725993126689.Spec : Prop :=
  ∀ n, P4201161725993126689.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P10721057987202218297

`A074066(A215848(n+1))`
-/

namespace A107323.P10721057987202218297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A215848 (n + 1)).toNat

end

end A107323.P10721057987202218297

namespace A107323

/-- `A074066(A215848(n+1))` -/
def P10721057987202218297.Spec : Prop :=
  ∀ n, P10721057987202218297.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P3870893523815863287

`A074066(A045344(n+2))`
-/

namespace A107323.P3870893523815863287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A045344 (n + 2)).toNat

end

end A107323.P3870893523815863287

namespace A107323

/-- `A074066(A045344(n+2))` -/
def P3870893523815863287.Spec : Prop :=
  ∀ n, P3870893523815863287.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P13291389470909827191

`A074066(A065091(n+2))`
-/

namespace A107323.P13291389470909827191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A065091 (n + 2)).toNat

end

end A107323.P13291389470909827191

namespace A107323

/-- `A074066(A065091(n+2))` -/
def P13291389470909827191.Spec : Prop :=
  ∀ n, P13291389470909827191.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P8755004082799026219

`A074066(A140475(n+2))`
-/

namespace A107323.P8755004082799026219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A140475 (n + 2)).toNat

end

end A107323.P8755004082799026219

namespace A107323

/-- `A074066(A140475(n+2))` -/
def P8755004082799026219.Spec : Prop :=
  ∀ n, P8755004082799026219.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P5127070200899971523

`A074066(A000040(n+3))`
-/

namespace A107323.P5127070200899971523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A000040 (n + 3)).toNat

end

end A107323.P5127070200899971523

namespace A107323

/-- `A074066(A000040(n+3))` -/
def P5127070200899971523.Spec : Prop :=
  ∀ n, P5127070200899971523.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P13347218918643569450

`A113655(A172367(n+1))+4`
-/

namespace A107323.P13347218918643569450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A172367 (n + 1)).toNat + 4

end

end A107323.P13347218918643569450

namespace A107323

/-- `A113655(A172367(n+1))+4` -/
def P13347218918643569450.Spec : Prop :=
  ∀ n, P13347218918643569450.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P1743013058439237073

`A113655(A040976(n+3)+1)+1`
-/

namespace A107323.P1743013058439237073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113655 (A040976 (n + 3) + 1).toNat + 1

end

end A107323.P1743013058439237073

namespace A107323

/-- `A113655(A040976(n+3)+1)+1` -/
def P1743013058439237073.Spec : Prop :=
  ∀ n, P1743013058439237073.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P15670566549061318661

`A007310(A099471(p?[A007310(n+1)]))`
-/

namespace A107323.P15670566549061318661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A099471 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A107323.P15670566549061318661

namespace A107323

/-- `A007310(A099471(p?[A007310(n+1)]))` -/
def P15670566549061318661.Spec : Prop :=
  ∀ n, P15670566549061318661.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P13552819064905713391

`A054966(A065091(n+2)+1)%(2*A065091(n+2))`
-/

namespace A107323.P13552819064905713391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054966 (A065091 (n + 2) + 1).toNat) (2 * A065091 (n + 2))

end

end A107323.P13552819064905713391

namespace A107323

/-- `A054966(A065091(n+2)+1)%(2*A065091(n+2))` -/
def P13552819064905713391.Spec : Prop :=
  ∀ n, P13552819064905713391.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P9308854984041932416

`A208296(n+1)-2*A207336(n+1)`
-/

namespace A107323.P9308854984041932416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208296 (n + 1) - 2 * A207336 (n + 1)

end

end A107323.P9308854984041932416

namespace A107323

/-- `A208296(n+1)-2*A207336(n+1)` -/
def P9308854984041932416.Spec : Prop :=
  ∀ n, P9308854984041932416.a n = A107323 (n + 3)

end A107323

/-! ## A107323.P8442084318140912130

`A215415(A208296(n+1))`
-/

namespace A107323.P8442084318140912130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215415 (A208296 (n + 1)).toNat

end

end A107323.P8442084318140912130

namespace A107323

/-- `A215415(A208296(n+1))` -/
def P8442084318140912130.Spec : Prop :=
  ∀ n, P8442084318140912130.a n = A107323 (n + 3)

end A107323

/-!
# A107324: Floor(A063655(n)/2).

The programs for A107324, there is no canonical definition to state claims against.
-/

/-! ## A107324.P12319254312650206214

`floor(A063655(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A107324.P12319254312650206214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063655 (n + 1) : ℚ) / 2⌋

end

end A107324.P12319254312650206214

/-! ## A107324.P15386539222658424534

`val(A034719(n+1), 9)`
-/

namespace A107324.P15386539222658424534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034719 (n + 1)).toNat 9

end

end A107324.P15386539222658424534

/-! ## A107324.P1844536611313204417

`floor(A262767(n+1)/4)`
-/

namespace A107324.P1844536611313204417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262767 (n + 1) : ℚ) / 4⌋

end

end A107324.P1844536611313204417

/-! ## A107324.P17963411648596587588

`floor(A387830(n+1)/2)+1`
-/

namespace A107324.P17963411648596587588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A387830 (n + 1) : ℚ) / 2⌋ + 1

end

end A107324.P17963411648596587588

/-! ## A107324.P12855070169685146882

`floor(A306284(4*(n+1))/2)`
-/

namespace A107324.P12855070169685146882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A306284 (4 * (n + 1)) : ℚ) / 2⌋

end

end A107324.P12855070169685146882

/-! ## A107324.P8311132248208444782

`ceil((n-A220114(n+1))/2)`
-/

namespace A107324.P8311132248208444782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A220114 (n + 1) : ℚ) / 2⌉

end

end A107324.P8311132248208444782

/-! ## A107324.P17767233483021020174

`A004526(A063655(n+1))`
-/

namespace A107324.P17767233483021020174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063655 (n + 1)).toNat

end

end A107324.P17767233483021020174

/-! ## A107324.P2288719190093399175

`A002265(A262767(n+1))`
-/

namespace A107324.P2288719190093399175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A262767 (n + 1)).toNat

end

end A107324.P2288719190093399175

/-! ## A107324.P17739844063332411162

`A008619(A387830(n+1))`
-/

namespace A107324.P17739844063332411162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A387830 (n + 1)).toNat

end

end A107324.P17739844063332411162

/-! ## A107324.P12347280949230484719

`A026922(A262767(n+1)+1)`
-/

namespace A107324.P12347280949230484719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A262767 (n + 1) + 1).toNat

end

end A107324.P12347280949230484719

/-!
# A107325: a(n) = ceiling(A063655(n)/2).

The programs for A107325, there is no canonical definition to state claims against.
-/

/-! ## A107325.P15574775691149115620

`ceil(A063655(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A107325.P15574775691149115620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063655 (n + 1) : ℚ) / 2⌉

end

end A107325.P15574775691149115620

/-! ## A107325.P8803799019809716755

`ceil(A262767(n+1)/4)`
-/

namespace A107325.P8803799019809716755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262767 (n + 1) : ℚ) / 4⌉

end

end A107325.P8803799019809716755

/-! ## A107325.P9304382900351599347

`round(A063655(Δ[n²]-n)/2)`
-/

namespace A107325.P9304382900351599347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A063655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A107325.P9304382900351599347

/-! ## A107325.P17748108228942945075

`A065033(A063655(n+1))`
-/

namespace A107325.P17748108228942945075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A063655 (n + 1)).toNat

end

end A107325.P17748108228942945075

/-! ## A107325.P17900284991721829408

`A263997(A134875(n+1))`
-/

namespace A107325.P17900284991721829408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (A134875 (n + 1)).toNat

end

end A107325.P17900284991721829408

/-! ## A107325.P16537549385302337859

`A080513(A387830(n+1))`
-/

namespace A107325.P16537549385302337859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A387830 (n + 1)).toNat

end

end A107325.P16537549385302337859

/-! ## A107325.P3238719876766212475

`A004526(A063655(n+1)+1)`
-/

namespace A107325.P3238719876766212475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063655 (n + 1) + 1).toNat

end

end A107325.P3238719876766212475

/-! ## A107325.P12516989015516275306

`A026922(A262767(n+1))`
-/

namespace A107325.P12516989015516275306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A262767 (n + 1)).toNat

end

end A107325.P12516989015516275306

/-! ## A107325.P4138944471982993700

`A002265(A262767(n+1)+2)`
-/

namespace A107325.P4138944471982993700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A262767 (n + 1) + 2).toNat

end

end A107325.P4138944471982993700

/-! ## A107325.P9140827334700749084

`ceil(A306284(4*(n+1))/2)`
-/

namespace A107325.P9140827334700749084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A306284 (4 * (n + 1)) : ℚ) / 2⌉

end

end A107325.P9140827334700749084

/-! ## A107325.P1470531059813267481

`val(A034713(n+1), 4)`
-/

namespace A107325.P1470531059813267481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034713 (n + 1)).toNat 4

end

end A107325.P1470531059813267481

/-! ## A107325.P6689011612799452329

`val(4*A034733(n+1), 4)`
-/

namespace A107325.P6689011612799452329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 * A034733 (n + 1)).toNat 4

end

end A107325.P6689011612799452329

/-! ## A107325.P5060396347284985616

`round(val(∑{d}[n+1, 3^((n+1)/#+#)], 3)/2)`
-/

namespace A107325.P5060396347284985616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (3 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) : ℝ))).toNat 3 : ℚ) / 2)

end

end A107325.P5060396347284985616

/-!
# A107326: Numbers of the form (2^i)*(13^j).

The programs for A107326, there is no canonical definition to state claims against.
-/

/-! ## A107326.P12171338267538767648

`A288162(n+1)/26`
-/

namespace A107326.P12171338267538767648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288162 (n + 1) : ℚ) / 26

end

end A107326.P12171338267538767648

/-! ## A107326.P3730024752109592153

`∪[2*A107462(n+1), A107462(n+1)]`
-/

namespace A107326.P3730024752109592153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107326.P3730024752109592153

/-! ## A107326.P6284570821484734875

`record[(n+1)/A242603(A332819(n+1))]`
-/

namespace A107326.P6284570821484734875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A242603 (A332819 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107326.P6284570821484734875

/-! ## A107326.P17531947636129042381

`record[gcd(n+1, A165847(n+1))]`
-/

namespace A107326.P17531947636129042381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A165847 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107326.P17531947636129042381

/-! ## A107326.P8405775414128674385

`record[A072436(n+1)/A339903(n+1)]`
-/

namespace A107326.P8405775414128674385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072436 (n + 1) : ℚ) / (A339903 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107326.P8405775414128674385

/-!
# A107327: Prime Fibonacci sequence: each term is the prime with index equal to the sum of the previous two terms.

The programs for A107327, there is no canonical definition to state claims against.
-/

/-! ## A107327.P3868695923422866222

`A122594(n)-a(n-1)` with `a(0)=2`
-/

namespace A107327.P3868695923422866222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A122594 n - a (n - 1)

end

end A107327.P3868695923422866222

/-! ## A107327.P479327115776703779

`A000040(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A107327.P479327115776703779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000040 (a (n - 1) + a (n - 2)).toNat

end

end A107327.P479327115776703779

/-! ## A107327.P10526756096518024772

`A006005(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A107327.P10526756096518024772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A006005 (a (n - 1) + a (n - 2)).toNat

end

end A107327.P10526756096518024772

/-!
# A107329: Triangle read by rows: T(n,k) gives number of partitions of k, (k=1..n) into the prime factors of n, for n>=1.

The programs for A107329, there is no canonical definition to state claims against.
-/

/-! ## A107329.P16772290941320775153

`A001221(gcd(A002260(n+1), A274705(n)))`
-/

namespace A107329.P16772290941320775153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A002260 (n + 1)) (A274705 n))

end

end A107329.P16772290941320775153

/-! ## A107329.P8608715624992745984

`A308073(A027642(n))%A076302(n+1)`
-/

namespace A107329.P8608715624992745984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308073 (A027642 n).toNat) (A076302 (n + 1))

end

end A107329.P8608715624992745984

/-! ## A107329.P15857179397726654293

`A117297(n+1)%A327856(n+1)`
-/

namespace A107329.P15857179397726654293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117297 (n + 1)) (A327856 (n + 1))

end

end A107329.P15857179397726654293

/-! ## A107329.P3847352664457112388

`A332523(n)%A076302(n+1)`
-/

namespace A107329.P3847352664457112388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332523 n) (A076302 (n + 1))

end

end A107329.P3847352664457112388

/-! ## A107329.P12641627815704741246

`A379677(n+1)%A243987(n+1)`
-/

namespace A107329.P12641627815704741246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379677 (n + 1)) (A243987 (n + 1))

end

end A107329.P12641627815704741246

/-!
# A107330: a(n) = 4*a(n-1)-a(n-2)-3*a(n-3)+a(n-4), n>5.

The programs for A107330, the canonical program `A107330.P17285534532354304643` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107330 has offset 0).

The definition of A107330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)` (program `A107330.P17285534532354304643`, by `A107330.P17285534532354304643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107330.P17285534532354304643

`4*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)` with `a(0)=3, a(1)=3, a(2)=12, a(3)=41, a(4)=148, a(5)=517`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107330

/-- `4*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)` -/
def P17285534532354304643.Spec : Prop :=
  ∀ n, P17285534532354304643.a n = A107330 n

theorem P17285534532354304643.correct : P17285534532354304643.Spec := by
  intro n
  simp only [A107330]

end A107330

/-! ## A107330.P15722216653573339127

`675-A002294(676+a(n-1))` with `a(0)=3, a(1)=3, a(2)=12, a(3)=41, a(4)=148, a(5)=517`
-/

namespace A107330.P15722216653573339127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 12, 41, 148, 517] fun n a =>
  675 - A002294 (676 + a (n - 1)).toNat

end

end A107330.P15722216653573339127

namespace A107330

/-- `675-A002294(676+a(n-1))` -/
def P15722216653573339127.Spec : Prop :=
  ∀ n, P15722216653573339127.a n = A107330 n

end A107330

/-!
# A107331: An approximation to sigma_{1/2}(n): multiplicative with a(p^e) = floor((p^(e/2+1/2)-1)/(p^(1/2)-1)) for prime p.

The programs for A107331, there is no canonical definition to state claims against.
-/

/-! ## A107331.P7389114116510176427

`A062571(ceil((n+1)*2^∑{e}[n+1, #]/3))`
-/

namespace A107331.P7389114116510176427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 ⌈((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / 3⌉.toNat

end

end A107331.P7389114116510176427

/-! ## A107331.P1030136575483152879

`A081604(C(round(4/(3*acot(2*n))), ∑{e}[n+1, #]))`
-/

namespace A107331.P1030136575483152879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.choose (SequenceMachineLib.roundAway (4 / (3 * SequenceMachineLib.acot (2 * n : ℝ)))).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A107331.P1030136575483152879

/-! ## A107331.P388418579128251561

`A081604(C(A008576(n), ∑{e}[n+1, #]))`
-/

namespace A107331.P388418579128251561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.choose (A008576 n).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A107331.P388418579128251561

/-! ## A107331.P4047590602088523228

`A081604(C(A344296(n+4), ∑{e}[n+1, #]))`
-/

namespace A107331.P4047590602088523228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.choose (A344296 (n + 4)).toNat (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A107331.P4047590602088523228

/-! ## A107331.P5396456683245026937

`A062571(A003959(n+1)-A230980(n))`
-/

namespace A107331.P5396456683245026937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A003959 (n + 1) - A230980 n).toNat

end

end A107331.P5396456683245026937

/-!
# A107332: Expansion of x^2*(-1+x+x^2)/(-1+x+x^2-x^3+x^5).

The programs for A107332, the canonical program `A107332.P9800341419848102743` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107332 has offset 1).

The definition of A107332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2-x^3)/(1-x-x^2+x^3-x^5))` (program `A107332.P9800341419848102743`, by `A107332.P9800341419848102743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107332.P9800341419848102743

`ogf((x-x^2-x^3)/(1-x-x^2+x^3-x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107332

/-- `ogf((x-x^2-x^3)/(1-x-x^2+x^3-x^5))` -/
def P9800341419848102743.Spec : Prop :=
  ∀ n, P9800341419848102743.a n = A107332 (n + 1)

theorem P9800341419848102743.correct : P9800341419848102743.Spec := by
  intro n
  simp only [A107332, Nat.add_sub_cancel]

end A107332

/-! ## A107332.P15975587693895939427

`a(n-1)+a(n-2)-a(n-3)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=-1`
-/

namespace A107332.P15975587693895939427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0, -1] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 5)

end

end A107332.P15975587693895939427

namespace A107332

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-5)` -/
def P15975587693895939427.Spec : Prop :=
  ∀ n, P15975587693895939427.a n = A107332 (n + 1)

end A107332

/-! ## A107332.P8531228877353394479

`A107293(n+3)-A107293(n+2)-A107293(n+1)`
-/

namespace A107332.P8531228877353394479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 3) - A107293 (n + 2) - A107293 (n + 1)

end

end A107332.P8531228877353394479

namespace A107332

/-- `A107293(n+3)-A107293(n+2)-A107293(n+1)` -/
def P8531228877353394479.Spec : Prop :=
  ∀ n, P8531228877353394479.a n = A107332 (n + 1)

end A107332

/-! ## A107332.P9813542638513172399

`A107368(n+1)-A107293(n+1)`
-/

namespace A107332.P9813542638513172399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 (n + 1) - A107293 (n + 1)

end

end A107332.P9813542638513172399

namespace A107332

/-- `A107368(n+1)-A107293(n+1)` -/
def P9813542638513172399.Spec : Prop :=
  ∀ n, P9813542638513172399.a n = A107332 (n + 1)

end A107332

/-! ## A107332.P6573117826480896989

`∑[A107368(n+3)-∑[A107368(n)]]`
-/

namespace A107332.P6573117826480896989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107368 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107332.P6573117826480896989

namespace A107332

/-- `∑[A107368(n+3)-∑[A107368(n)]]` -/
def P6573117826480896989.Spec : Prop :=
  ∀ n, P6573117826480896989.a n = A107332 (n + 1)

end A107332

/-! ## A107332.P3876986465369474616

`Δ[A107293(n+2)]-A107293(n+1)`
-/

namespace A107332.P3876986465369474616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107293 (n + 1)

end

end A107332.P3876986465369474616

namespace A107332

/-- `Δ[A107293(n+2)]-A107293(n+1)` -/
def P3876986465369474616.Spec : Prop :=
  ∀ n, P3876986465369474616.a n = A107332 (n + 1)

end A107332

/-! ## A107332.P1419039626749004165

`Δ[A107293(n+2)-∑[A107293(n)]]`
-/

namespace A107332.P1419039626749004165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107332.P1419039626749004165

namespace A107332

/-- `Δ[A107293(n+2)-∑[A107293(n)]]` -/
def P1419039626749004165.Spec : Prop :=
  ∀ n, P1419039626749004165.a n = A107332 (n + 1)

end A107332

/-! ## A107332.P2584740192816485743

`2*A107293(n+5)-A107293(n+7)`
-/

namespace A107332.P2584740192816485743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107293 (n + 5) - A107293 (n + 7)

end

end A107332.P2584740192816485743

namespace A107332

/-- `2*A107293(n+5)-A107293(n+7)` -/
def P2584740192816485743.Spec : Prop :=
  ∀ n, P2584740192816485743.a n = A107332 (n + 1)

end A107332

/-!
# A107333: 1-limiting word of the morphism 1->1331, 2->3, 3->12.

The programs for A107333, there is no canonical definition to state claims against.
-/

/-! ## A107333.P7696638675472897727

`A005680(∑[(n+2)*A016969(n)])`
-/

namespace A107333.P7696638675472897727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107333.P7696638675472897727

/-! ## A107333.P16379185836732483910

`A277855(and(∑[n]+3, A074872(n+2)))`
-/

namespace A107333.P16379185836732483910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277855 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) (A074872 (n + 2))).toNat

end

end A107333.P16379185836732483910

/-! ## A107333.P8680639274077475049

`A036583(lcm(A000326(n), A036587(n)))`
-/

namespace A107333.P8680639274077475049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 (Int.lcm (A000326 n) (A036587 n))

end

end A107333.P8680639274077475049

/-! ## A107333.P749006557894203553

`A101669(n)+A101662(A112927(n+1))`
-/

namespace A107333.P749006557894203553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101669 n + A101662 (A112927 (n + 1)).toNat

end

end A107333.P749006557894203553

/-! ## A107333.P48587964700711755

`∑{p}[A268502(n), val(A033922(n+4)+2, #)]+1`
-/

namespace A107333.P48587964700711755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A033922 (n + 4) + 2).toNat p + 1

end

end A107333.P48587964700711755

/-!
# A107334: G.f.: (3-4*x-3*x^2)/(1-2*x-3*x^2+2*x^3).

The programs for A107334, the canonical program `A107334.P11079122347900541437` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107334 has offset 0).

The definition of A107334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107334.P8548115005667898935

`ogf((-3+4x+3x^2)/(-1+2x+3x^2-2x^3))`
-/

namespace A107334.P8548115005667898935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -3] [1, -2, -3, 2] n

end

end A107334.P8548115005667898935

namespace A107334

/-- `ogf((-3+4x+3x^2)/(-1+2x+3x^2-2x^3))` -/
def P8548115005667898935.Spec : Prop :=
  ∀ n, P8548115005667898935.a n = A107334 n

end A107334

/-! ## A107334.P11079122347900541437

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=3, a(1)=2, a(2)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107334

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P11079122347900541437.Spec : Prop :=
  ∀ n, P11079122347900541437.a n = A107334 n

theorem P11079122347900541437.correct : P11079122347900541437.Spec := by
  intro n
  simp only [A107334]

end A107334

/-!
# A107335: 1-limiting word of the morphism 1->113231, 2->3, 3->1.

The programs for A107335, there is no canonical definition to state claims against.
-/

/-! ## A107335.P5659311101811049821

`(A133025(n+1)+A000085(n+2))%3+1`
-/

namespace A107335.P5659311101811049821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133025 (n + 1) + A000085 (n + 2)) 3 + 1

end

end A107335.P5659311101811049821

/-! ## A107335.P91788219948145606

`A010155(A055648(n)²)%A098842((n+1)²)`
-/

namespace A107335.P91788219948145606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010155 (A055648 n ^ 2).toNat) (A098842 ((n + 1) ^ 2))

end

end A107335.P91788219948145606

/-! ## A107335.P3351265530736427888

`A100833(A008619(A004863(n+1)²))`
-/

namespace A107335.P3351265530736427888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100833 (A008619 (A004863 (n + 1) ^ 2).toNat).toNat

end

end A107335.P3351265530736427888

/-! ## A107335.P14749650738128896427

`A323756(A126004(A004280(n+1))+31)`
-/

namespace A107335.P14749650738128896427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323756 (A126004 (A004280 (n + 1)).toNat + 31).toNat

end

end A107335.P14749650738128896427

/-! ## A107335.P668606960860730330

`val(∑[A360146(3*n+1)], 2)`
-/

namespace A107335.P668606960860730330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360146 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A107335.P668606960860730330

/-!
# A107336: 222 Pisot cubic substitution with characteristic polynomial:x^3-2*x^2-2*x-2.

The programs for A107336, there is no canonical definition to state claims against.
-/

/-! ## A107336.P17824977330374324170

`A001651((6*xor(1, n))²+2)%5`
-/

namespace A107336.P17824977330374324170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001651 ((6 * Nat.xor 1 n) ^ 2 + 2)) 5

end

end A107336.P17824977330374324170

/-! ## A107336.P12322109496413063056

`p?[char[1]-A186950(xor(1, n+2))]%5`
-/

namespace A107336.P12322109496413063056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A186950 (Nat.xor 1 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 5

end

end A107336.P12322109496413063056

/-! ## A107336.P12966753881704965986

`A147875(A173294(3*n+4))%5`
-/

namespace A107336.P12966753881704965986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147875 (A173294 (3 * n + 4)).toNat) 5

end

end A107336.P12966753881704965986

/-! ## A107336.P4140328999836813382

`A040443(A169966(n+1)+1+n)`
-/

namespace A107336.P4140328999836813382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040443 (A169966 (n + 1) + 1 + (n : ℤ)).toNat

end

end A107336.P4140328999836813382

/-! ## A107336.P15087990736332017776

`A076839(Δ[A213484(2*n+1)]²)`
-/

namespace A107336.P15087990736332017776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076839 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A107336.P15087990736332017776

/-!
# A107337: Substitution 1->{1, 2, 1, 3, 2, 3, 1}, 2->{3}, 3->{1}, starting with 1.

The programs for A107337, there is no canonical definition to state claims against.
-/

/-! ## A107337.P16209157243622254904

`gcd(3*A018338(n+1), A087458(n+1))`
-/

namespace A107337.P16209157243622254904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * A018338 (n + 1)) (A087458 (n + 1))

end

end A107337.P16209157243622254904

/-! ## A107337.P16157326779112973631

`A316831(A028263(n)*A225468(n))`
-/

namespace A107337.P16157326779112973631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 (A028263 n * A225468 n).toNat

end

end A107337.P16157326779112973631

/-! ## A107337.P12686212865102055746

`gcd(A087458(n+1), A087483(A087503(n)))`
-/

namespace A107337.P12686212865102055746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087458 (n + 1)) (A087483 (A087503 n).toNat)

end

end A107337.P12686212865102055746

/-! ## A107337.P16957984010887920072

`A004736(gcd(A001223(n+1), A018338(n+1)))`
-/

namespace A107337.P16957984010887920072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.gcd (A001223 (n + 1)) (A018338 (n + 1)))

end

end A107337.P16957984010887920072

/-! ## A107337.P2106879339519131964

`A093412(A001223(n+1))-A347870(A238423(n+3))`
-/

namespace A107337.P2106879339519131964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093412 (A001223 (n + 1)).toNat - A347870 (A238423 (n + 3)).toNat

end

end A107337.P2106879339519131964

/-!
# A107338: 1-limiting word of the morphism 1->121321, 2->3, 3->13.

The programs for A107338, there is no canonical definition to state claims against.
-/

/-! ## A107338.P11015349390103651737

`or(A010060(A341374(n)), A101615(3*n))`
-/

namespace A107338.P11015349390103651737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A341374 n).toNat) (A101615 (3 * n))

end

end A107338.P11015349390103651737

/-! ## A107338.P1523552427685269517

`A231820((A014473(n)+1)*dr(A351243(n+1)))`
-/

namespace A107338.P1523552427685269517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 ((A014473 n + 1) * (SequenceMachineLib.digitalRoot (A351243 (n + 1)) : ℤ)).toNat

end

end A107338.P1523552427685269517

/-! ## A107338.P2709485606705448540

`A007413(A087061(3*n+4)*A158687(3*n))`
-/

namespace A107338.P2709485606705448540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (A087061 (3 * n + 4) * A158687 (3 * n)).toNat

end

end A107338.P2709485606705448540

/-! ## A107338.P7569501896562305362

`A105899(xor(n, A079662(n+1)))`
-/

namespace A107338.P7569501896562305362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 (Int.xor (n : ℤ) (A079662 (n + 1))).toNat

end

end A107338.P7569501896562305362

/-! ## A107338.P5202302354134177074

`A297828(A213299(n+1))`
-/

namespace A107338.P5202302354134177074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297828 (A213299 (n + 1)).toNat

end

end A107338.P5202302354134177074

/-!
# A107340: Number of solutions to rev(x^3)=rev(x)^3 below 10^n.

The programs for A107340, there is no canonical definition to state claims against.
-/

/-! ## A107340.P11655585815089663354

`∑[A107341(n+1)]`
-/

namespace A107340.P11655585815089663354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107340.P11655585815089663354

/-! ## A107340.P6704926379278119567

`A107341(A192218(n))+a(n-1)` with `a(0)=3`
-/

namespace A107340.P6704926379278119567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A107341 (A192218 n).toNat + a (n - 1)

end

end A107340.P6704926379278119567

/-!
# A107341: Number of solutions to rev(x^3)=rev(x)^3 with n digits.

The programs for A107341, there is no canonical definition to state claims against.
-/

/-! ## A107341.P11286748343544036347

`A107340(n+1)%A107340(abs(1-n)+1)`
-/

namespace A107341.P11286748343544036347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107340 (n + 1)) (A107340 (|1 - (n : ℤ)| + 1).toNat)

end

end A107341.P11286748343544036347

/-!
# A107342: Semiprimes with semiprime digits (digits 4, 6, 9 only).

The programs for A107342, there is no canonical definition to state claims against.
-/

/-! ## A107342.P8868328315884359417

`∩[A107665(n+1), A242751(n+1)]`
-/

namespace A107342.P8868328315884359417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107342.P8868328315884359417

/-! ## A107342.P15095192669676515329

`∩[A001358(n+1), A107665(n+1)]`
-/

namespace A107342.P15095192669676515329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107342.P15095192669676515329

/-! ## A107342.P14707107875429362680

`∩[A107665(n+1), A241013(n+1)]`
-/

namespace A107342.P14707107875429362680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107342.P14707107875429362680

/-! ## A107342.P7223561179098860077

`filter[A107665(n+1), A064911(#)]`
-/

namespace A107342.P7223561179098860077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107342.P7223561179098860077

/-! ## A107342.P4348521776398205720

`∩[A107665(n+1), A112381(n+1)]`
-/

namespace A107342.P4348521776398205720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107342.P4348521776398205720

/-! ## A107342.P8220617462255927784

`∩[A107665(n+1), A179463(n+1)]`
-/

namespace A107342.P8220617462255927784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107342.P8220617462255927784

/-!
# A107345: From the binary representation of n: binomial(number of zeros, number of blocks of contiguous zeros).

The programs for A107345, the canonical program `A107345.P952422273759515519` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107345 has offset 0).

The definition of A107345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107345.P7314574568003933970

`A136277(A035327(n))`
-/

namespace A107345.P7314574568003933970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A035327 n).toNat

end

end A107345.P7314574568003933970

namespace A107345

/-- `A136277(A035327(n))` -/
def P7314574568003933970.Spec : Prop :=
  ∀ n, P7314574568003933970.a n = A107345 n

end A107345

/-! ## A107345.P2778608012572020633

`A136277(A080079(n+1))`
-/

namespace A107345.P2778608012572020633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A080079 (n + 1)).toNat

end

end A107345.P2778608012572020633

namespace A107345

/-- `A136277(A080079(n+1))` -/
def P2778608012572020633.Spec : Prop :=
  ∀ n, P2778608012572020633.a n = A107345 n

end A107345

/-! ## A107345.P10432278909245644584

`A136277(A003817(n)-n)`
-/

namespace A107345.P10432278909245644584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A003817 n - (n : ℤ)).toNat

end

end A107345.P10432278909245644584

namespace A107345

/-- `A136277(A003817(n)-n)` -/
def P10432278909245644584.Spec : Prop :=
  ∀ n, P10432278909245644584.a n = A107345 n

end A107345

/-! ## A107345.P952422273759515519

`C(A023416(n), A087116(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107345

/-- `C(A023416(n), A087116(n))` -/
def P952422273759515519.Spec : Prop :=
  ∀ n, (P952422273759515519.a n : ℤ) = A107345 n

theorem P952422273759515519.correct : P952422273759515519.Spec := by
  intro n
  simp only [A107345]

end A107345

/-! ## A107345.P15971768089489011584

`C(A023416(n), A107782(n))`
-/

namespace A107345.P15971768089489011584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023416 n).toNat (A107782 n).toNat

end

end A107345.P15971768089489011584

namespace A107345

/-- `C(A023416(n), A107782(n))` -/
def P15971768089489011584.Spec : Prop :=
  ∀ n, (P15971768089489011584.a n : ℤ) = A107345 n

end A107345

/-! ## A107345.P13689492044696195013

`A136277(A036044(n))`
-/

namespace A107345.P13689492044696195013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A036044 n).toNat

end

end A107345.P13689492044696195013

namespace A107345

/-- `A136277(A036044(n))` -/
def P13689492044696195013.Spec : Prop :=
  ∀ n, P13689492044696195013.a n = A107345 n

end A107345

/-! ## A107345.P13479059575591093835

`C(A023416(n), A056973(2*n+1))`
-/

namespace A107345.P13479059575591093835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023416 n).toNat (A056973 (2 * n + 1)).toNat

end

end A107345.P13479059575591093835

namespace A107345

/-- `C(A023416(n), A056973(2*n+1))` -/
def P13479059575591093835.Spec : Prop :=
  ∀ n, (P13479059575591093835.a n : ℤ) = A107345 n

end A107345

/-! ## A107345.P18160498105598109966

`A136277(A335587(n))`
-/

namespace A107345.P18160498105598109966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (A335587 n).toNat

end

end A107345.P18160498105598109966

namespace A107345

/-- `A136277(A335587(n))` -/
def P18160498105598109966.Spec : Prop :=
  ∀ n, P18160498105598109966.a n = A107345 n

end A107345

/-!
# A107346: Differences between successive permutations of 1,2,3,4,5 regarded as decimal numbers arranged in increasing order.

The programs for A107346, there is no canonical definition to state claims against.
-/

/-! ## A107346.P8269991369638842309

`A220664(n+34)`
-/

namespace A107346.P8269991369638842309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220664 (n + 34)

end

end A107346.P8269991369638842309

/-! ## A107346.P9026888445306776197

`Δ[A030299(n+34)]`
-/

namespace A107346.P9026888445306776197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107346.P9026888445306776197

/-! ## A107346.P2958515994338052069

`Δ[A001729(A023744(n+1))]`
-/

namespace A107346.P2958515994338052069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (A023744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107346.P2958515994338052069

/-! ## A107346.P3740231605469157817

`Δ[A050278(A296885(n+1))]`
-/

namespace A107346.P3740231605469157817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (A296885 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107346.P3740231605469157817

/-! ## A107346.P8713461842552093305

`A219664(n+1)+char[A051477(n)]`
-/

namespace A107346.P8713461842552093305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219664 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107346.P8713461842552093305

/-! ## A107346.P4028187003729101073

`A219664(n+1)+char[A219693(3*n+5)]`
-/

namespace A107346.P4028187003729101073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219693 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219664 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107346.P4028187003729101073

/-!
# A107347: Number of even semiprimes strictly between prime(n) and 2*prime(n).

The programs for A107347, the canonical program `A107347.P1469681427645976233` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107347 has offset 1).

The definition of A107347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107347.P1469681427645976233

`Δ[n²]-A298861(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107347

/-- `Δ[n²]-A298861(n+1)` -/
def P1469681427645976233.Spec : Prop :=
  ∀ n, P1469681427645976233.a n = A107347 (n + 1)

theorem P1469681427645976233.correct : P1469681427645976233.Spec := by
  intro n
  simp only [A107347, Nat.add_sub_cancel]

end A107347

/-! ## A107347.P14812374448843102317

`a(n-1)+1-A217564(n)` with `a(0)=0`
-/

namespace A107347.P14812374448843102317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A217564 n)

end

end A107347.P14812374448843102317

namespace A107347

/-- `a(n-1)+1-A217564(n)` -/
def P14812374448843102317.Spec : Prop :=
  ∀ n, P14812374448843102317.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P5807173253712839217

`n-A000720(A130290(n+1))`
-/

namespace A107347.P5807173253712839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000720 (A130290 (n + 1)).toNat

end

end A107347.P5807173253712839217

namespace A107347

/-- `n-A000720(A130290(n+1))` -/
def P5807173253712839217.Spec : Prop :=
  ∀ n, P5807173253712839217.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P2807387781699045187

`A267872(n)%A298861(n+1)`
-/

namespace A107347.P2807387781699045187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267872 n) (A298861 (n + 1))

end

end A107347.P2807387781699045187

namespace A107347

/-- `A267872(n)%A298861(n+1)` -/
def P2807387781699045187.Spec : Prop :=
  ∀ n, P2807387781699045187.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P16660155729984041276

`1-A000720(A079953(n+1))+n`
-/

namespace A107347.P16660155729984041276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000720 (A079953 (n + 1)).toNat + (n : ℤ)

end

end A107347.P16660155729984041276

namespace A107347

/-- `1-A000720(A079953(n+1))+n` -/
def P16660155729984041276.Spec : Prop :=
  ∀ n, P16660155729984041276.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P3440441474993182465

`A217564(n+1)-∑[A217564(n+1)]+n`
-/

namespace A107347.P3440441474993182465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A107347.P3440441474993182465

namespace A107347

/-- `A217564(n+1)-∑[A217564(n+1)]+n` -/
def P3440441474993182465.Spec : Prop :=
  ∀ n, P3440441474993182465.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P16290420828105622865

`A056171(A006093(n+1))`
-/

namespace A107347.P16290420828105622865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A006093 (n + 1)).toNat

end

end A107347.P16290420828105622865

namespace A107347

/-- `A056171(A006093(n+1))` -/
def P16290420828105622865.Spec : Prop :=
  ∀ n, P16290420828105622865.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P12432891994465809885

`A056171(Δ[A007504(n)]-1)`
-/

namespace A107347.P12432891994465809885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (f1 (n + 1) - f1 n - 1).toNat

end

end A107347.P12432891994465809885

namespace A107347

/-- `A056171(Δ[A007504(n)]-1)` -/
def P12432891994465809885.Spec : Prop :=
  ∀ n, P12432891994465809885.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P18222285095593755942

`A056171(record[A000010(n+1)])`
-/

namespace A107347.P18222285095593755942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107347.P18222285095593755942

namespace A107347

/-- `A056171(record[A000010(n+1)])` -/
def P18222285095593755942.Spec : Prop :=
  ∀ n, P18222285095593755942.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P541711649216314003

`A056171(A040976(n+1)+1)`
-/

namespace A107347.P541711649216314003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A040976 (n + 1) + 1).toNat

end

end A107347.P541711649216314003

namespace A107347

/-- `A056171(A040976(n+1)+1)` -/
def P541711649216314003.Spec : Prop :=
  ∀ n, P541711649216314003.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P5468825964463233479

`A056171(A000040(n+1)-1)`
-/

namespace A107347.P5468825964463233479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A000040 (n + 1) - 1).toNat

end

end A107347.P5468825964463233479

namespace A107347

/-- `A056171(A000040(n+1)-1)` -/
def P5468825964463233479.Spec : Prop :=
  ∀ n, P5468825964463233479.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P3447719771037738527

`A056171(A008864(n+1)-2)`
-/

namespace A107347.P3447719771037738527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A008864 (n + 1) - 2).toNat

end

end A107347.P3447719771037738527

namespace A107347

/-- `A056171(A008864(n+1)-2)` -/
def P3447719771037738527.Spec : Prop :=
  ∀ n, P3447719771037738527.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P6380766572273175298

`A056171(A100484(n+1)/2-1)`
-/

namespace A107347.P6380766572273175298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A107347.P6380766572273175298

namespace A107347

/-- `A056171(A100484(n+1)/2-1)` -/
def P6380766572273175298.Spec : Prop :=
  ∀ n, P6380766572273175298.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P5836150265885450638

`A056171(A095116(n+1)-(n+1))`
-/

namespace A107347.P5836150265885450638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A095116 (n + 1) - (n + 1 : ℤ)).toNat

end

end A107347.P5836150265885450638

namespace A107347

/-- `A056171(A095116(n+1)-(n+1))` -/
def P5836150265885450638.Spec : Prop :=
  ∀ n, P5836150265885450638.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P8656969270857291188

`A338361(n+1)-A000040(n+1)`
-/

namespace A107347.P8656969270857291188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338361 (n + 1) - A000040 (n + 1)

end

end A107347.P8656969270857291188

namespace A107347

/-- `A338361(n+1)-A000040(n+1)` -/
def P8656969270857291188.Spec : Prop :=
  ∀ n, P8656969270857291188.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P7484752997527535699

`A338361(n+1)-A008578(n+2)`
-/

namespace A107347.P7484752997527535699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338361 (n + 1) - A008578 (n + 2)

end

end A107347.P7484752997527535699

namespace A107347

/-- `A338361(n+1)-A008578(n+2)` -/
def P7484752997527535699.Spec : Prop :=
  ∀ n, P7484752997527535699.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P17582713630838556152

`A338361(n+1)-A280864(A280742(n+1))`
-/

namespace A107347.P17582713630838556152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338361 (n + 1) - A280864 (A280742 (n + 1)).toNat

end

end A107347.P17582713630838556152

namespace A107347

/-- `A338361(n+1)-A280864(A280742(n+1))` -/
def P17582713630838556152.Spec : Prop :=
  ∀ n, P17582713630838556152.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P1267832601441828541

`n-A230980(A102781(n+1))`
-/

namespace A107347.P1267832601441828541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A230980 (A102781 (n + 1)).toNat

end

end A107347.P1267832601441828541

namespace A107347

/-- `n-A230980(A102781(n+1))` -/
def P1267832601441828541.Spec : Prop :=
  ∀ n, P1267832601441828541.a n = A107347 (n + 1)

end A107347

/-! ## A107347.P17104263271400653035

`n-A033270(A079953(n+1))`
-/

namespace A107347.P17104263271400653035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033270 (A079953 (n + 1)).toNat

end

end A107347.P17104263271400653035

namespace A107347

/-- `n-A033270(A079953(n+1))` -/
def P17104263271400653035.Spec : Prop :=
  ∀ n, P17104263271400653035.a n = A107347 (n + 1)

end A107347

/-!
# A107348: Triangle read by rows: T(m,n) = number of different lines in a rectangular m X n array of points with integer coordinates (x,y): 0 <= x <= m, 0 <= y <= n.

The programs for A107348, there is no canonical definition to state claims against.
-/

/-! ## A107348.P13354975674025397389

`A295707(A245300(n)+1)`
-/

namespace A107348.P13354975674025397389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295707 (A245300 n + 1).toNat

end

end A107348.P13354975674025397389

/-! ## A107348.P4011569982784626069

`A332351(n+1)-A332353(n+1)`
-/

namespace A107348.P4011569982784626069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (n + 1) - A332353 (n + 1)

end

end A107348.P4011569982784626069

/-! ## A107348.P6396695032596481020

`A332350(n+1)/2-A332353(n+1)`
-/

namespace A107348.P6396695032596481020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332350 (n + 1) : ℚ) / 2 - (A332353 (n + 1) : ℚ)

end

end A107348.P6396695032596481020

/-! ## A107348.P18424225840169748846

`(A332350(n+1)-A332352(n+1))/2`
-/

namespace A107348.P18424225840169748846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332350 (n + 1) - A332352 (n + 1) : ℚ) / 2

end

end A107348.P18424225840169748846

/-! ## A107348.P6396768225810938487

`A332351(n+1)-A332352(n+1)/2`
-/

namespace A107348.P6396768225810938487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332351 (n + 1) : ℚ) - (A332352 (n + 1) : ℚ) / 2

end

end A107348.P6396768225810938487

/-! ## A107348.P5545981114972105882

`A001281(A332350(n+1)-A332352(n+1))`
-/

namespace A107348.P5545981114972105882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A332350 (n + 1) - A332352 (n + 1)).toNat

end

end A107348.P5545981114972105882

/-! ## A107348.P16377257596669094715

`A332351(n+1)-A001281(A332352(n+1))`
-/

namespace A107348.P16377257596669094715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (n + 1) - A001281 (A332352 (n + 1)).toNat

end

end A107348.P16377257596669094715

/-! ## A107348.P15376439427088014294

`A004525(A332350(n+1)-A332352(n+1))`
-/

namespace A107348.P15376439427088014294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332350 (n + 1) - A332352 (n + 1)).toNat

end

end A107348.P15376439427088014294

/-! ## A107348.P15590223128585678206

`A004525(A332350(n+1))-A332353(n+1)`
-/

namespace A107348.P15590223128585678206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332350 (n + 1)).toNat - A332353 (n + 1)

end

end A107348.P15590223128585678206

/-! ## A107348.P4880522545526029839

`A014682(A332350(n+1)-A332352(n+1))`
-/

namespace A107348.P4880522545526029839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332350 (n + 1) - A332352 (n + 1)).toNat

end

end A107348.P4880522545526029839

/-!
# A107350: Number of isogons with a certain property.

The programs for A107350, there is no canonical definition to state claims against.
-/

/-! ## A107350.P6833959071441153740

`A292476(2*(n+1))/2`
-/

namespace A107350.P6833959071441153740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292476 (2 * (n + 1)) : ℚ) / 2

end

end A107350.P6833959071441153740

/-! ## A107350.P10519857237778311984

`A156700(2*(n+1))`
-/

namespace A107350.P10519857237778311984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156700 (2 * (n + 1))

end

end A107350.P10519857237778311984

/-! ## A107350.P12748173558359536113

`A290889(4*(n+1))`
-/

namespace A107350.P12748173558359536113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290889 (4 * (n + 1))

end

end A107350.P12748173558359536113

/-! ## A107350.P4008863727156026615

`record[A156700(Δ[A236453(n)])]`
-/

namespace A107350.P4008863727156026615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156700 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107350.P4008863727156026615

/-! ## A107350.P7885823341197411191

`record[A156700(A220080(n)+2)]`
-/

namespace A107350.P7885823341197411191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156700 (A220080 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107350.P7885823341197411191

/-! ## A107350.P6847991823246917652

`A156700(A103517(n))+A000007(n)`
-/

namespace A107350.P6847991823246917652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156700 (A103517 n).toNat + A000007 n

end

end A107350.P6847991823246917652

/-!
# A107351: Expansion of (1+x^3)/((1-x)^3*(1-x^2)^3*(1-x^3)).

The programs for A107351, the canonical program `A107351.P13816022454708136281` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107351 has offset 0).

The definition of A107351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-3x+7x^3-3x^4-6x^5+6x^7+3x^8-7x^9+3x^11-x^12))` (program `A107351.P13816022454708136281`, by `A107351.P13816022454708136281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107351.P13816022454708136281

`ogf((1+x^3)/(1-3x+7x^3-3x^4-6x^5+6x^7+3x^8-7x^9+3x^11-x^12))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107351

/-- `ogf((1+x^3)/(1-3x+7x^3-3x^4-6x^5+6x^7+3x^8-7x^9+3x^11-x^12))` -/
def P13816022454708136281.Spec : Prop :=
  ∀ n, P13816022454708136281.a n = A107351 n

theorem P13816022454708136281.correct : P13816022454708136281.Spec := by
  intro n
  simp only [A107351]

end A107351

/-! ## A107351.P3033608102938877715

`∑[∑[A377067(n)]]`
-/

namespace A107351.P3033608102938877715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107351.P3033608102938877715

namespace A107351

/-- `∑[∑[A377067(n)]]` -/
def P3033608102938877715.Spec : Prop :=
  ∀ n, P3033608102938877715.a n = A107351 n

end A107351

/-! ## A107351.P1785385007253951998

`∑[∑[∑[A053090(n+3)]]]`
-/

namespace A107351.P1785385007253951998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053090 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107351.P1785385007253951998

namespace A107351

/-- `∑[∑[∑[A053090(n+3)]]]` -/
def P1785385007253951998.Spec : Prop :=
  ∀ n, P1785385007253951998.a n = A107351 n

end A107351

/-! ## A107351.P9604034420021010027

`∑[∑[A001973(n)+a(n-2)]]` with `a(0)=1, a(1)=1`
-/

namespace A107351.P9604034420021010027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A001973 n + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107351.P9604034420021010027

namespace A107351

/-- `∑[∑[A001973(n)+a(n-2)]]` -/
def P9604034420021010027.Spec : Prop :=
  ∀ n, P9604034420021010027.a n = A107351 n

end A107351

/-! ## A107351.P15317749559263248416

`2*A164680(n+1)-A038163(n)`
-/

namespace A107351.P15317749559263248416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164680 (n + 1) - A038163 n

end

end A107351.P15317749559263248416

namespace A107351

/-- `2*A164680(n+1)-A038163(n)` -/
def P15317749559263248416.Spec : Prop :=
  ∀ n, P15317749559263248416.a n = A107351 n

end A107351

/-! ## A107351.P9693841728685914371

`A210634(n+9)+A164680(n+1)`
-/

namespace A107351.P9693841728685914371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210634 (n + 9) + A164680 (n + 1)

end

end A107351.P9693841728685914371

namespace A107351

/-- `A210634(n+9)+A164680(n+1)` -/
def P9693841728685914371.Spec : Prop :=
  ∀ n, P9693841728685914371.a n = A107351 n

end A107351

/-! ## A107351.P10187067521223025361

`A210634(n+9)+A210634(n+12)`
-/

namespace A107351.P10187067521223025361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210634 (n + 9) + A210634 (n + 12)

end

end A107351.P10187067521223025361

namespace A107351

/-- `A210634(n+9)+A210634(n+12)` -/
def P10187067521223025361.Spec : Prop :=
  ∀ n, P10187067521223025361.a n = A107351 n

end A107351

/-!
# A107352: Number of positive integers <= 10^n that are divisible by no prime exceeding 11.

The programs for A107352, there is no canonical definition to state claims against.
-/

/-! ## A107352.P16476689992767464143

`A253635(Δ[A264443(n)])`
-/

namespace A107352.P16476689992767464143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253635 (f1 (n + 1) - f1 n).toNat

end

end A107352.P16476689992767464143

/-! ## A107352.P15833045423414714052

`A253635(A046691(n+3))`
-/

namespace A107352.P15833045423414714052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253635 (A046691 (n + 3)).toNat

end

end A107352.P15833045423414714052

/-!
# A107353: a(0)=0, a(n) = smallest integer not previously used which contains a digit from a(n-1).

The programs for A107353, there is no canonical definition to state claims against.
-/

/-! ## A107353.P18410727309928563468

`∑{e}[A000079(n), A184992(A181440(#))]`
-/

namespace A107353.P18410727309928563468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A184992 (A181440 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A107353.P18410727309928563468

/-!
# A107354: To compute a(n) we first write down 2^n 1's in a row. Each row takes the right half of the previous row and each element in it equals sum of the elements in the previous row starting at the middle. The single element in the last row is a(n).

The programs for A107354, there is no canonical definition to state claims against.
-/

/-! ## A107354.P351617643298106304

`A355576(∑[n+3])`
-/

namespace A107354.P351617643298106304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107354.P351617643298106304

/-! ## A107354.P18151675725683840211

`A355576(A141214(n))^A178334(n)`
-/

namespace A107354.P18151675725683840211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355576 (A141214 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A107354.P18151675725683840211

/-! ## A107354.P1879573452452163459

`gcd(A000038(n), A355576(A141214(n)))`
-/

namespace A107354.P1879573452452163459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A355576 (A141214 n).toNat)

end

end A107354.P1879573452452163459

/-! ## A107354.P4101035811883068270

`A355576(A141214(n))+A000038(2*(n+2))`
-/

namespace A107354.P4101035811883068270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A141214 n).toNat + A000038 (2 * (n + 2))

end

end A107354.P4101035811883068270

/-! ## A107354.P8684614107323234696

`A355576(A141214(n))%A138134(3*n+2)`
-/

namespace A107354.P8684614107323234696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355576 (A141214 n).toNat) (A138134 (3 * n + 2))

end

end A107354.P8684614107323234696

/-!
# A107356: Period of continued fraction for (1 + square root of n-th squarefree integer)/2.

The programs for A107356, there is no canonical definition to state claims against.
-/

/-! ## A107356.P10837810052641867735

`A146326(A005117(n+2))`
-/

namespace A107356.P10837810052641867735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A005117 (n + 2)).toNat

end

end A107356.P10837810052641867735

/-! ## A107356.P8444690756037144309

`A146326(A144338(n+1))`
-/

namespace A107356.P8444690756037144309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A144338 (n + 1)).toNat

end

end A107356.P8444690756037144309

/-! ## A107356.P6219676826270522556

`A146326(eq[0, A087049(n)])`
-/

namespace A107356.P6219676826270522556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107356.P6219676826270522556

/-! ## A107356.P7009702992101553380

`A146326(record[A007913(n+2)])`
-/

namespace A107356.P7009702992101553380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107356.P7009702992101553380

/-! ## A107356.P7116850790161148027

`A146326(record[A007947(n+2)])`
-/

namespace A107356.P7116850790161148027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107356.P7116850790161148027

/-! ## A107356.P12588626424752285950

`A146326(∑[A076259(n+1)]+1)`
-/

namespace A107356.P12588626424752285950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A107356.P12588626424752285950

/-! ## A107356.P15349951949580104210

`A146326(eq[1, A051903(n+1)]+1)`
-/

namespace A107356.P15349951949580104210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107356.P15349951949580104210

/-! ## A107356.P14171749592017625151

`A146326(sqrt(A062503(n+2)))`
-/

namespace A107356.P14171749592017625151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.roundAway (Real.sqrt (A062503 (n + 2) : ℝ))).toNat

end

end A107356.P14171749592017625151

/-! ## A107356.P9329529170697020296

`A146326(record[A079228(n+1)])`
-/

namespace A107356.P9329529170697020296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A107356.P9329529170697020296

/-! ## A107356.P6919341178841012352

`A146326(eq[1, A157658(n+1)²]+1)`
-/

namespace A107356.P6919341178841012352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A107356.P6919341178841012352

/-! ## A107356.P7676892761358600338

`A146326(eq[A010052(n), A105570(n)])`
-/

namespace A107356.P7676892761358600338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A107356.P7676892761358600338

/-!
# A107357: a(n) = 1 + A_n(n), or a(n) = -1 if sequence A_n is not defined up to index n.

The programs for A107357, there is no canonical definition to state claims against.
-/

/-! ## A107357.P2842059153420884385

`A051070(n+1)+1`
-/

namespace A107357.P2842059153420884385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051070 (n + 1) + 1

end

end A107357.P2842059153420884385

/-! ## A107357.P10913694981780014659

`A199343(A051070(n+1))`
-/

namespace A107357.P10913694981780014659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A051070 (n + 1)).toNat

end

end A107357.P10913694981780014659

/-!
# A107358: Dying rabbits: a(n) = Fibonacci(n) for n <= 12; for n >= 13, a(n) = a(n-1) + a(n-2) - a(n-13).

The programs for A107358, there is no canonical definition to state claims against.
-/

/-! ## A107358.P6031172424541937930

`A000045(n)-A037800(A185344(n))`
-/

namespace A107358.P6031172424541937930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A037800 (A185344 n).toNat

end

end A107358.P6031172424541937930

/-! ## A107358.P15184757996695089468

`A000045(n)-A175424(A120042(n))`
-/

namespace A107358.P15184757996695089468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A175424 (A120042 n).toNat

end

end A107358.P15184757996695089468

/-! ## A107358.P12019801982309275308

`A000045(n)-A086015(A269130(n))`
-/

namespace A107358.P12019801982309275308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A086015 (A269130 n).toNat

end

end A107358.P12019801982309275308

/-! ## A107358.P18187943632788613863

`A000045(n)-A081227(A124441(n+1))`
-/

namespace A107358.P18187943632788613863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A081227 (A124441 (n + 1)).toNat

end

end A107358.P18187943632788613863

/-! ## A107358.P4991860559497322736

`A000045(n)-A056626(A258333(n+1))`
-/

namespace A107358.P4991860559497322736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A056626 (A258333 (n + 1)).toNat

end

end A107358.P4991860559497322736

/-!
# A107359: a(n) = A003754(n+1) - A003754(n).

The programs for A107359, the canonical program `A107359.P9567277144982348641` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107359 has offset 0).

The definition of A107359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003754, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107359.P9567277144982348641

`A003754(n+2)-A003754(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107359

/-- `A003754(n+2)-A003754(n+1)` -/
def P9567277144982348641.Spec : Prop :=
  ∀ n, P9567277144982348641.a n = A107359 n

theorem P9567277144982348641.correct : P9567277144982348641.Spec := by
  intro n
  simp only [A107359]

end A107359

/-! ## A107359.P6843126760251068544

`Δ[A052499(n)]`
-/

namespace A107359.P6843126760251068544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P6843126760251068544

namespace A107359

/-- `Δ[A052499(n)]` -/
def P6843126760251068544.Spec : Prop :=
  ∀ n, P6843126760251068544.a n = A107359 n

theorem P6843126760251068544.correct : P6843126760251068544.Spec := by
  intro n
  simp only [A107359, Nat.add_sub_cancel, A107359.P6843126760251068544.f1, A107359.P6843126760251068544.a, A107359.P9567277144982348641.a, A003754, A003754.P7281650019262553655.a, A052499, A052499.P2273861346135896458.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A163511, A163511.P5635496813650871695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107359

/-! ## A107359.P18029722285593196301

`Δ[A003754(n+1)]`
-/

namespace A107359.P18029722285593196301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P18029722285593196301

namespace A107359

/-- `Δ[A003754(n+1)]` -/
def P18029722285593196301.Spec : Prop :=
  ∀ n, P18029722285593196301.a n = A107359 n

theorem P18029722285593196301.correct : P18029722285593196301.Spec := by
  intro n
  simp only [A107359, Nat.add_sub_cancel, A107359.P18029722285593196301.f1, A107359.P18029722285593196301.a, A107359.P9567277144982348641.a, SequenceMachineLib.memo_apply]

end A107359

/-! ## A107359.P8936490939444163362

`Δ[A247648(n+1)/2]`
-/

namespace A107359.P8936490939444163362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247648 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P8936490939444163362

namespace A107359

/-- `Δ[A247648(n+1)/2]` -/
def P8936490939444163362.Spec : Prop :=
  ∀ n, P8936490939444163362.a n = (A107359 n : ℚ)

theorem P8936490939444163362.correct : P8936490939444163362.Spec := by
  intro n
  simp only [A107359, Nat.add_sub_cancel, A107359.P8936490939444163362.f1, A107359.P8936490939444163362.a, A107359.P9567277144982348641.a, A003754, A003754.P7281650019262553655.a, A247648, A247648.P7622667877464504082.a, A052499, A052499.P2273861346135896458.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A163511, A163511.P5635496813650871695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107359

/-! ## A107359.P6979129630274586928

`A005578(A356749(n))`
-/

namespace A107359.P6979129630274586928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A356749 n).toNat

end

end A107359.P6979129630274586928

namespace A107359

/-- `A005578(A356749(n))` -/
def P6979129630274586928.Spec : Prop :=
  ∀ n, P6979129630274586928.a n = A107359 n

end A107359

/-! ## A107359.P18095977455069768692

`A129761(A361989(n+1))`
-/

namespace A107359.P18095977455069768692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 (A361989 (n + 1)).toNat

end

end A107359.P18095977455069768692

namespace A107359

/-- `A129761(A361989(n+1))` -/
def P18095977455069768692.Spec : Prop :=
  ∀ n, P18095977455069768692.a n = A107359 n

end A107359

/-! ## A107359.P142952277881904093

`A005578(val(A052499(n), 2))`
-/

namespace A107359.P142952277881904093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (SequenceMachineLib.valuation (A052499 n).toNat 2)

end

end A107359.P142952277881904093

namespace A107359

/-- `A005578(val(A052499(n), 2))` -/
def P142952277881904093.Spec : Prop :=
  ∀ n, P142952277881904093.a n = A107359 n

end A107359

/-! ## A107359.P17325633525590309674

`A005578(A083368(n+1)-1)`
-/

namespace A107359.P17325633525590309674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A083368 (n + 1) - 1).toNat

end

end A107359.P17325633525590309674

namespace A107359

/-- `A005578(A083368(n+1)-1)` -/
def P17325633525590309674.Spec : Prop :=
  ∀ n, P17325633525590309674.a n = A107359 n

end A107359

/-! ## A107359.P14064872629405381404

`A052499(n+1)-A052499(n)`
-/

namespace A107359.P14064872629405381404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 (n + 1) - A052499 n

end

end A107359.P14064872629405381404

namespace A107359

/-- `A052499(n+1)-A052499(n)` -/
def P14064872629405381404.Spec : Prop :=
  ∀ n, P14064872629405381404.a n = A107359 n

theorem P14064872629405381404.correct : P14064872629405381404.Spec := by
  intro n
  simp only [A107359, Nat.add_sub_cancel, A107359.P14064872629405381404.a, A107359.P9567277144982348641.a, A003754, A003754.P7281650019262553655.a, A052499, A052499.P2273861346135896458.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A163511, A163511.P5635496813650871695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107359

/-! ## A107359.P572786083476688257

`Δ[A380358(n+1)/4]`
-/

namespace A107359.P572786083476688257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380358 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P572786083476688257

namespace A107359

/-- `Δ[A380358(n+1)/4]` -/
def P572786083476688257.Spec : Prop :=
  ∀ n, P572786083476688257.a n = (A107359 n : ℚ)

theorem P572786083476688257.correct : P572786083476688257.Spec := by
  intro n
  simp only [A107359, Nat.add_sub_cancel, A107359.P572786083476688257.f1, A107359.P572786083476688257.a, A107359.P9567277144982348641.a, A003754, A003754.P7281650019262553655.a, A380358, A380358.P12352273004702923892.a, A052499, A052499.P2273861346135896458.a, A365808, A365808.P18059643760552441775.f1, A365808.P18059643760552441775.f2, A365808.P18059643760552441775.a, A365807, A365807.P7768995048888628650.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A163511, A163511.P5635496813650871695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107359

/-! ## A107359.P203005989525628158

`Δ[eq[and(n, 2*n+1), and(n, 3*n+2)]]`
-/

namespace A107359.P203005989525628158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107359.P203005989525628158

namespace A107359

/-- `Δ[eq[and(n, 2*n+1), and(n, 3*n+2)]]` -/
def P203005989525628158.Spec : Prop :=
  ∀ n, P203005989525628158.a n = A107359 n

end A107359

/-! ## A107359.P10376418201222297823

`A029578(Δ[A247648(n+1)])`
-/

namespace A107359.P10376418201222297823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (n + 1) - f1 n).toNat

end

end A107359.P10376418201222297823

namespace A107359

/-- `A029578(Δ[A247648(n+1)])` -/
def P10376418201222297823.Spec : Prop :=
  ∀ n, P10376418201222297823.a n = A107359 n

end A107359

/-! ## A107359.P1631426691704774678

`Δ[record[A180200(n)]]`
-/

namespace A107359.P1631426691704774678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P1631426691704774678

namespace A107359

/-- `Δ[record[A180200(n)]]` -/
def P1631426691704774678.Spec : Prop :=
  ∀ n, P1631426691704774678.a n = A107359 n

end A107359

/-! ## A107359.P13069925093423958335

`Δ[A180200(A336231(n+1))]`
-/

namespace A107359.P13069925093423958335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A336231 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P13069925093423958335

namespace A107359

/-- `Δ[A180200(A336231(n+1))]` -/
def P13069925093423958335.Spec : Prop :=
  ∀ n, P13069925093423958335.a n = A107359 n

end A107359

/-! ## A107359.P13737114957268659453

`Δ[record[A090078(n)]]`
-/

namespace A107359.P13737114957268659453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090078 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107359.P13737114957268659453

namespace A107359

/-- `Δ[record[A090078(n)]]` -/
def P13737114957268659453.Spec : Prop :=
  ∀ n, P13737114957268659453.a n = A107359 n

end A107359

/-! ## A107359.P7924224847956749167

`Δ[eq[1, A107345(n)]]`
-/

namespace A107359.P7924224847956749167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107359.P7924224847956749167

namespace A107359

/-- `Δ[eq[1, A107345(n)]]` -/
def P7924224847956749167.Spec : Prop :=
  ∀ n, P7924224847956749167.a n = A107359 n

end A107359

/-! ## A107359.P18081540384779533662

`Δ[eq[1, A227350(n)]]`
-/

namespace A107359.P18081540384779533662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107359.P18081540384779533662

namespace A107359

/-- `Δ[eq[1, A227350(n)]]` -/
def P18081540384779533662.Spec : Prop :=
  ∀ n, P18081540384779533662.a n = A107359 n

end A107359

/-! ## A107359.P8575336538948508054

`Δ[eq[A000120(n), A331362(n)]]`
-/

namespace A107359.P8575336538948508054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107359.P8575336538948508054

namespace A107359

/-- `Δ[eq[A000120(n), A331362(n)]]` -/
def P8575336538948508054.Spec : Prop :=
  ∀ n, P8575336538948508054.a n = A107359 n

end A107359

/-! ## A107359.P17159837907255404496

`Δ[eq[A331362(n), A331470(n)]]`
-/

namespace A107359.P17159837907255404496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331470 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107359.P17159837907255404496

namespace A107359

/-- `Δ[eq[A331362(n), A331470(n)]]` -/
def P17159837907255404496.Spec : Prop :=
  ∀ n, P17159837907255404496.a n = A107359 n

end A107359

/-! ## A107359.P1425534862392445665

`Δ[lt[A056973(2*n+1), 1]]`
-/

namespace A107359.P1425534862392445665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107359.P1425534862392445665

namespace A107359

/-- `Δ[lt[A056973(2*n+1), 1]]` -/
def P1425534862392445665.Spec : Prop :=
  ∀ n, P1425534862392445665.a n = A107359 n

end A107359

/-!
# A107360: Numbers p (necessarily prime) such that 2^p - 1 is a Mersenne prime and (2^p+1)/3 is a Wagstaff prime.

The programs for A107360, there is no canonical definition to state claims against.
-/

/-! ## A107360.P9151435398705852021

`A109799(n+2)`
-/

namespace A107360.P9151435398705852021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109799 (n + 2)

end

end A107360.P9151435398705852021

/-! ## A107360.P3956346211706898138

`A152961(n+2)`
-/

namespace A107360.P3956346211706898138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152961 (n + 2)

end

end A107360.P3956346211706898138

/-! ## A107360.P13023991182233088224

`A000043(lt[1, ∏{digits}[n, #]])`
-/

namespace A107360.P13023991182233088224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107360.P13023991182233088224

/-! ## A107360.P1596401181970745026

`p?[A122834(n+1)+char[8]]`
-/

namespace A107360.P1596401181970745026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122834 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107360.P1596401181970745026

/-! ## A107360.P526880218194111486

`A000043(lt[n, ∑{digits}[n, #]^3])`
-/

namespace A107360.P526880218194111486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107360.P526880218194111486

/-!
# A107361: G.f. 1/((3*x-1)*(x^2-x-1)).

The programs for A107361, the canonical program `A107361.P10143930156582203452` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107361 has offset 0).

The definition of A107361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107361.P10143930156582203452

`2*a(n-1)+4*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107361

/-- `2*a(n-1)+4*a(n-2)-3*a(n-3)` -/
def P10143930156582203452.Spec : Prop :=
  ∀ n, P10143930156582203452.a n = A107361 n

theorem P10143930156582203452.correct : P10143930156582203452.Spec := by
  intro n
  simp only [A107361]

end A107361

/-! ## A107361.P17006630908600233142

`1/11*(A000244(n+2)+(-1)^n*A001060(n))`
-/

namespace A107361.P17006630908600233142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 11 * (A000244 (n + 2) + (-1) ^ n * A001060 n : ℚ)

end

end A107361.P17006630908600233142

namespace A107361

/-- `1/11*(A000244(n+2)+(-1)^n*A001060(n))` -/
def P17006630908600233142.Spec : Prop :=
  ∀ n, P17006630908600233142.a n = (A107361 n : ℚ)

end A107361

/-! ## A107361.P3856995541976503913

`ogf(1/(1-2x-4x^2+3x^3))`
-/

namespace A107361.P3856995541976503913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -4, 3] n

end

end A107361.P3856995541976503913

namespace A107361

/-- `ogf(1/(1-2x-4x^2+3x^3))` -/
def P3856995541976503913.Spec : Prop :=
  ∀ n, P3856995541976503913.a n = A107361 n

end A107361

/-! ## A107361.P7428655264384705244

`3^n+a(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A107361.P7428655264384705244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 ^ n : ℤ) + (a (n - 2) - a (n - 1))

end

end A107361.P7428655264384705244

namespace A107361

/-- `3^n+a(n-2)-a(n-1)` -/
def P7428655264384705244.Spec : Prop :=
  ∀ n, P7428655264384705244.a n = A107361 n

end A107361

/-! ## A107361.P14757807449120348611

`a(n-2)-(a(n-1)-3^n)` with `a(0)=1, a(1)=2`
-/

namespace A107361.P14757807449120348611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (a (n - 1) - (3 ^ n : ℤ))

end

end A107361.P14757807449120348611

namespace A107361

/-- `a(n-2)-(a(n-1)-3^n)` -/
def P14757807449120348611.Spec : Prop :=
  ∀ n, P14757807449120348611.a n = A107361 n

end A107361

/-! ## A107361.P14869863409172684603

`∑[3*a(n-1)]+a(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A107361.P14869863409172684603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 2) - a (n - 1)

end

end A107361.P14869863409172684603

namespace A107361

/-- `∑[3*a(n-1)]+a(n-2)-a(n-1)` -/
def P14869863409172684603.Spec : Prop :=
  ∀ n, P14869863409172684603.a n = A107361 n

end A107361

/-! ## A107361.P12197828518591355336

`∑[A239530(n+1)]`
-/

namespace A107361.P12197828518591355336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107361.P12197828518591355336

namespace A107361

/-- `∑[A239530(n+1)]` -/
def P12197828518591355336.Spec : Prop :=
  ∀ n, P12197828518591355336.a n = A107361 n

end A107361

/-!
# A107362: Sequence A={a(n),n=0,1,2,3,...} such that the subsequence S1={a(n)|n mod 5=0,3} is identical to A and S2=S\S1 (the complement of S1 in A) is identical to A except with the first term omitted.

The programs for A107362, there is no canonical definition to state claims against.
-/

/-! ## A107362.P6330333959816687175

`gcd(2, A037424(A037414(n+3)))`
-/

namespace A107362.P6330333959816687175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A037424 (A037414 (n + 3)).toNat)

end

end A107362.P6330333959816687175

/-! ## A107362.P15874647225393781025

`A001285(lcm(A023835(n+1), A347444(n)))`
-/

namespace A107362.P15874647225393781025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.lcm (A023835 (n + 1)) (A347444 n))

end

end A107362.P15874647225393781025

/-! ## A107362.P16274875900215919290

`A035263(A092909(n+1)*A166016(n+1))+1`
-/

namespace A107362.P16274875900215919290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A092909 (n + 1) * A166016 (n + 1)).toNat + 1

end

end A107362.P16274875900215919290

/-! ## A107362.P9941880597951940679

`A035263(A166016(n+1))+A000035(A092909(n+1))`
-/

namespace A107362.P9941880597951940679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A166016 (n + 1)).toNat + A000035 (A092909 (n + 1)).toNat

end

end A107362.P9941880597951940679

/-! ## A107362.P15036117174912868769

`A093921(A312049(n))`
-/

namespace A107362.P15036117174912868769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093921 (A312049 n).toNat

end

end A107362.P15036117174912868769

/-!
# A107363: Expansion of (1 - x)*(1 + x)^2*(1 + x^2)*(1 - x^2 + 2*x^3 + x^4) / ((1 - x^2 - x^4)*(1 + x^2 + 2*x^4 - x^6 + x^8)).

The programs for A107363, the canonical program `A107363.P5633334116414944827` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107363 has offset 0).

The definition of A107363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2+x^3+2x^4+x^6-x^7-3x^8-x^9)/(1-4x^6-x^12))` (program `A107363.P5633334116414944827`, by `A107363.P5633334116414944827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107363.P5633334116414944827

`ogf((1+x-x^2+x^3+2x^4+x^6-x^7-3x^8-x^9)/(1-4x^6-x^12))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107363

/-- `ogf((1+x-x^2+x^3+2x^4+x^6-x^7-3x^8-x^9)/(1-4x^6-x^12))` -/
def P5633334116414944827.Spec : Prop :=
  ∀ n, P5633334116414944827.a n = A107363 n

theorem P5633334116414944827.correct : P5633334116414944827.Spec := by
  intro n
  simp only [A107363]

end A107363

/-!
# A107364: Numbers of the form (3^i)*(13^j).

The programs for A107364, there is no canonical definition to state claims against.
-/

/-! ## A107364.P17136107238259467855

`∩[A057260(n+1), A068095(n+1)]`
-/

namespace A107364.P17136107238259467855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107364.P17136107238259467855

/-! ## A107364.P11629694521570086800

`∩[A057260(n+1), A080197(n+1)]`
-/

namespace A107364.P11629694521570086800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107364.P11629694521570086800

/-! ## A107364.P290574754908733221

`∩[A057260(n+1), A308299(n+1)]`
-/

namespace A107364.P290574754908733221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107364.P290574754908733221

/-! ## A107364.P8608473598808367536

`∩[A057260(n+1), A074402(n+1)]`
-/

namespace A107364.P8608473598808367536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107364.P8608473598808367536

/-! ## A107364.P9767388088455753511

`∩[A004617(n+1), A074402(n+1)]`
-/

namespace A107364.P9767388088455753511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107364.P9767388088455753511

/-!
# A107365: Indices of primes occurring in A030284.

The programs for A107365, there is no canonical definition to state claims against.
-/

/-! ## A107365.P11431781859181733083

`A000720(A030284(n+1))`
-/

namespace A107365.P11431781859181733083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030284 (n + 1)).toNat

end

end A107365.P11431781859181733083

/-! ## A107365.P1296366421553270965

`A061395(p?[A030284(n+1)])`
-/

namespace A107365.P1296366421553270965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A107365.P1296366421553270965

/-! ## A107365.P6535375287887797275

`∑{d}[A030284(n+1), A061395(#)]`
-/

namespace A107365.P6535375287887797275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A107365.P6535375287887797275

/-! ## A107365.P2275901136311050415

`A061395(∏{d}[A030284(n+1), #])`
-/

namespace A107365.P2275901136311050415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A107365.P2275901136311050415

/-! ## A107365.P17261944461252968916

`A061395(∑{p}[A030284(n+1), #])`
-/

namespace A107365.P17261944461252968916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A107365.P17261944461252968916

/-!
# A107366: Numbers k such that 101*k + 103 is prime.

The programs for A107366, there is no canonical definition to state claims against.
-/

/-! ## A107366.P375540104845775650

`eq[1, A001222(A158128(n+1)+n+2)]`
-/

namespace A107366.P375540104845775650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158128 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107366.P375540104845775650

/-! ## A107366.P7497611351558860328

`eq[2, A000005(A158128(n+1)+n+2)]`
-/

namespace A107366.P7497611351558860328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158128 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107366.P7497611351558860328

/-! ## A107366.P15073788887842549857

`lt[A000005(A158128(n+1)+2+n), 3]`
-/

namespace A107366.P15073788887842549857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158128 (n + 1) + 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107366.P15073788887842549857

/-! ## A107366.P10568072947044586881

`lt[A211991(A158128(n+1)+n+2)², 1]`
-/

namespace A107366.P10568072947044586881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (A158128 (n + 1) + (n + 2 : ℤ)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107366.P10568072947044586881

/-! ## A107366.P13008165208803160479

`xor(A032617(n+1), A115570(A115596(n+1)))`
-/

namespace A107366.P13008165208803160479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032617 (n + 1)) (A115570 (A115596 (n + 1)).toNat)

end

end A107366.P13008165208803160479

/-!
# A107368: a(n) = a(n-1) + a(n-2) - a(n-3) + a(n-5).

The programs for A107368, the canonical program `A107368.P11766350380888865380` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107368 has offset 0).

The definition of A107368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)+a(n-5)` (program `A107368.P11766350380888865380`, by `A107368.P11766350380888865380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107368.P11766350380888865380

`a(n-1)+a(n-2)-a(n-3)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107368

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-5)` -/
def P11766350380888865380.Spec : Prop :=
  ∀ n, P11766350380888865380.a n = A107368 n

theorem P11766350380888865380.correct : P11766350380888865380.Spec := by
  intro n
  simp only [A107368]

end A107368

/-! ## A107368.P1624379754429846946

`A107332(round(sqrt(n²+1)))+A107293(n)`
-/

namespace A107368.P1624379754429846946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107332 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A107293 n

end

end A107368.P1624379754429846946

namespace A107368

/-- `A107332(round(sqrt(n²+1)))+A107293(n)` -/
def P1624379754429846946.Spec : Prop :=
  ∀ n, P1624379754429846946.a n = A107368 n

end A107368

/-! ## A107368.P7072182524795786749

`Δ[A107293(n+1)]`
-/

namespace A107368.P7072182524795786749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107368.P7072182524795786749

namespace A107368

/-- `Δ[A107293(n+1)]` -/
def P7072182524795786749.Spec : Prop :=
  ∀ n, P7072182524795786749.a n = A107368 n

end A107368

/-! ## A107368.P18398522115640781150

`abs(Δ[A107293(1-(n-2*n))])`
-/

namespace A107368.P18398522115640781150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A107368.P18398522115640781150

namespace A107368

/-- `abs(Δ[A107293(1-(n-2*n))])` -/
def P18398522115640781150.Spec : Prop :=
  ∀ n, P18398522115640781150.a n = A107368 n

end A107368

/-! ## A107368.P17159194066190989878

`A107293(n+2)-A107293(n+1)`
-/

namespace A107368.P17159194066190989878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 (n + 2) - A107293 (n + 1)

end

end A107368.P17159194066190989878

namespace A107368

/-- `A107293(n+2)-A107293(n+1)` -/
def P17159194066190989878.Spec : Prop :=
  ∀ n, P17159194066190989878.a n = A107368 n

end A107368

/-! ## A107368.P12776792618037155428

`Δ[Δ[∑[A107293(n)]-n]]`
-/

namespace A107368.P12776792618037155428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107368.P12776792618037155428

namespace A107368

/-- `Δ[Δ[∑[A107293(n)]-n]]` -/
def P12776792618037155428.Spec : Prop :=
  ∀ n, P12776792618037155428.a n = A107368 n

end A107368

/-! ## A107368.P6909205439002192483

`Δ[Δ[A176510(A027379(n+1))]]`
-/

namespace A107368.P6909205439002192483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176510 (A027379 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107368.P6909205439002192483

namespace A107368

/-- `Δ[Δ[A176510(A027379(n+1))]]` -/
def P6909205439002192483.Spec : Prop :=
  ∀ n, P6909205439002192483.a n = A107368 n

end A107368

/-! ## A107368.P17350247992184107062

`Δ[Δ[A176510(A167614(n+1)-1)]]`
-/

namespace A107368.P17350247992184107062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176510 (A167614 (n + 1) - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107368.P17350247992184107062

namespace A107368

/-- `Δ[Δ[A176510(A167614(n+1)-1)]]` -/
def P17350247992184107062.Spec : Prop :=
  ∀ n, P17350247992184107062.a n = A107368 n

end A107368

/-!
# A107373: a(n) = (n/2)*binomial(n-1, floor((n-1)/2)) - 2^(n-2).

The programs for A107373, the canonical program `A107373.P11728756387089034635` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107373 has offset 1).

The definition of A107373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107373.P11728756387089034635

`(n+1)/2*C(n, floor(n/2))-2^(n-1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107373

/-- `(n+1)/2*C(n, floor(n/2))-2^(n-1)` -/
def P11728756387089034635.Spec : Prop :=
  ∀ n, P11728756387089034635.a n = (A107373 (n + 1) : ℚ)

end A107373

/-! ## A107373.P1366174915629894838

`A323988(n)-2^n`
-/

namespace A107373.P1366174915629894838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n - (2 ^ n : ℤ)

end

end A107373.P1366174915629894838

namespace A107373

/-- `A323988(n)-2^n` -/
def P1366174915629894838.Spec : Prop :=
  ∀ n, P1366174915629894838.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P10633043015938941765

`A191386(n+2)-2^n`
-/

namespace A107373.P10633043015938941765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 2) - (2 ^ n : ℤ)

end

end A107373.P10633043015938941765

namespace A107373

/-- `A191386(n+2)-2^n` -/
def P10633043015938941765.Spec : Prop :=
  ∀ n, P10633043015938941765.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P14918722746136350163

`A014314(n)-A045621(n)`
-/

namespace A107373.P14918722746136350163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n - A045621 n

end

end A107373.P14918722746136350163

namespace A107373

/-- `A014314(n)-A045621(n)` -/
def P14918722746136350163.Spec : Prop :=
  ∀ n, P14918722746136350163.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P11351771326160940994

`A100071(n)-A058622(n)`
-/

namespace A107373.P11351771326160940994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n - A058622 n

end

end A107373.P11351771326160940994

namespace A107373

/-- `A100071(n)-A058622(n)` -/
def P11351771326160940994.Spec : Prop :=
  ∀ n, P11351771326160940994.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P8527508861355532471

`n*A210736(n)-A058622(n)`
-/

namespace A107373.P8527508861355532471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 n - A058622 n

end

end A107373.P8527508861355532471

namespace A107373

/-- `n*A210736(n)-A058622(n)` -/
def P8527508861355532471.Spec : Prop :=
  ∀ n, P8527508861355532471.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P15687690752606359785

`A001405(n)+A340568(n)-A210736(n)`
-/

namespace A107373.P15687690752606359785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A340568 n - A210736 n)

end

end A107373.P15687690752606359785

namespace A107373

/-- `A001405(n)+A340568(n)-A210736(n)` -/
def P15687690752606359785.Spec : Prop :=
  ∀ n, P15687690752606359785.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P1505339330986572688

`A191309(n)+A191527(n)-A191522(n)`
-/

namespace A107373.P1505339330986572688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 n + (A191527 n - A191522 n)

end

end A107373.P1505339330986572688

namespace A107373

/-- `A191309(n)+A191527(n)-A191522(n)` -/
def P1505339330986572688.Spec : Prop :=
  ∀ n, P1505339330986572688.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P7894799165958314021

`A210736(n+1)+A340568(n)-A210736(n)`
-/

namespace A107373.P7894799165958314021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + (A340568 n - A210736 n)

end

end A107373.P7894799165958314021

namespace A107373

/-- `A210736(n+1)+A340568(n)-A210736(n)` -/
def P7894799165958314021.Spec : Prop :=
  ∀ n, P7894799165958314021.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P5242963964911368658

`A189391(n)-A100071(n)`
-/

namespace A107373.P5242963964911368658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n - A100071 n

end

end A107373.P5242963964911368658

namespace A107373

/-- `A189391(n)-A100071(n)` -/
def P5242963964911368658.Spec : Prop :=
  ∀ n, P5242963964911368658.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P2761759772101555845

`A100071(n+1)-A323988(n)`
-/

namespace A107373.P2761759772101555845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) - A323988 n

end

end A107373.P2761759772101555845

namespace A107373

/-- `A100071(n+1)-A323988(n)` -/
def P2761759772101555845.Spec : Prop :=
  ∀ n, P2761759772101555845.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P16676854516901299288

`(A189391(n)-A058622(n))/2`
-/

namespace A107373.P16676854516901299288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189391 n - A058622 n : ℚ) / 2

end

end A107373.P16676854516901299288

namespace A107373

/-- `(A189391(n)-A058622(n))/2` -/
def P16676854516901299288.Spec : Prop :=
  ∀ n, P16676854516901299288.a n = (A107373 (n + 1) : ℚ)

end A107373

/-! ## A107373.P16685322324070793955

`(A296663(n)-A001405(n))/2`
-/

namespace A107373.P16685322324070793955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296663 n - A001405 n : ℚ) / 2

end

end A107373.P16685322324070793955

namespace A107373

/-- `(A296663(n)-A001405(n))/2` -/
def P16685322324070793955.Spec : Prop :=
  ∀ n, P16685322324070793955.a n = (A107373 (n + 1) : ℚ)

end A107373

/-! ## A107373.P5475574330030874062

`n*A001405(n)-A014314(n)`
-/

namespace A107373.P5475574330030874062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 n - A014314 n

end

end A107373.P5475574330030874062

namespace A107373

/-- `n*A001405(n)-A014314(n)` -/
def P5475574330030874062.Spec : Prop :=
  ∀ n, P5475574330030874062.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P12231231392528001184

`(A100071(n+1)-A011782(n+1))/2`
-/

namespace A107373.P12231231392528001184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 1) - A011782 (n + 1) : ℚ) / 2

end

end A107373.P12231231392528001184

namespace A107373

/-- `(A100071(n+1)-A011782(n+1))/2` -/
def P12231231392528001184.Spec : Prop :=
  ∀ n, P12231231392528001184.a n = (A107373 (n + 1) : ℚ)

end A107373

/-! ## A107373.P9385009308844548831

`(A056040(n+1)*A152271(n)-2^n)/2`
-/

namespace A107373.P9385009308844548831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (n + 1) * A152271 n - (2 ^ n : ℤ) : ℚ) / 2

end

end A107373.P9385009308844548831

namespace A107373

/-- `(A056040(n+1)*A152271(n)-2^n)/2` -/
def P9385009308844548831.Spec : Prop :=
  ∀ n, P9385009308844548831.a n = (A107373 (n + 1) : ℚ)

end A107373

/-! ## A107373.P14252094685304280465

`abs(A194590(n))`
-/

namespace A107373.P14252094685304280465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194590 n|

end

end A107373.P14252094685304280465

namespace A107373

/-- `abs(A194590(n))` -/
def P14252094685304280465.Spec : Prop :=
  ∀ n, P14252094685304280465.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P3572503781679033481

`A033999(n)*A194590(n)`
-/

namespace A107373.P3572503781679033481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A194590 n

end

end A107373.P3572503781679033481

namespace A107373

/-- `A033999(n)*A194590(n)` -/
def P3572503781679033481.Spec : Prop :=
  ∀ n, P3572503781679033481.a n = A107373 (n + 1)

end A107373

/-! ## A107373.P9685844391363167500

`lcm(A000034(n), A194590(n))`
-/

namespace A107373.P9685844391363167500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A194590 n)

end

end A107373.P9685844391363167500

namespace A107373

/-- `lcm(A000034(n), A194590(n))` -/
def P9685844391363167500.Spec : Prop :=
  ∀ n, (P9685844391363167500.a n : ℤ) = A107373 (n + 1)

end A107373

/-! ## A107373.P7390009701251092621

`A340568(A133265(n))+A194590(n)`
-/

namespace A107373.P7390009701251092621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (A133265 n).toNat + A194590 n

end

end A107373.P7390009701251092621

namespace A107373

/-- `A340568(A133265(n))+A194590(n)` -/
def P7390009701251092621.Spec : Prop :=
  ∀ n, P7390009701251092621.a n = A107373 (n + 1)

end A107373

/-!
# A107374: Records in A120713.

The programs for A107374, there is no canonical definition to state claims against.
-/

/-! ## A107374.P3885092304243357273

`record[A120713(n+1)]`
-/

namespace A107374.P3885092304243357273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107374.P3885092304243357273

/-! ## A107374.P14910965881565943799

`record[A037279(A120712(n+1))]`
-/

namespace A107374.P14910965881565943799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (A120712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107374.P14910965881565943799

/-! ## A107374.P10242026593570142547

`record[A106708(A120712(n+1)%A182461(n))]`
-/

namespace A107374.P10242026593570142547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (Int.tmod (A120712 (n + 1)) (A182461 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107374.P10242026593570142547

/-! ## A107374.P10599997120125368627

`A034559(n+1)+record[A106708(A120712(n+1))]`
-/

namespace A107374.P10599997120125368627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106708 (A120712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034559 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107374.P10599997120125368627

/-! ## A107374.P11279674007662021884

`record[A014963(12*n+6)*A106708(A120712(n+1))]`
-/

namespace A107374.P11279674007662021884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 6) * A106708 (A120712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107374.P11279674007662021884

/-!
# A107375: a(n) = 6*a(n-1)-6*a(n-3)-a(n-4).

The programs for A107375, the canonical program `A107375.P13890492278468803426` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107375 has offset 0).

The definition of A107375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-3)-a(n-4)` (program `A107375.P13890492278468803426`, by `A107375.P13890492278468803426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107375.P13890492278468803426

`6*a(n-1)-6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107375

/-- `6*a(n-1)-6*a(n-3)-a(n-4)` -/
def P13890492278468803426.Spec : Prop :=
  ∀ n, P13890492278468803426.a n = A107375 n

theorem P13890492278468803426.correct : P13890492278468803426.Spec := by
  intro n
  simp only [A107375]

end A107375

/-! ## A107375.P14485290545767558808

`A054404(∑[floor((n!+1)/2)])`
-/

namespace A107375.P14485290545767558808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107375.P14485290545767558808

namespace A107375

/-- `A054404(∑[floor((n!+1)/2)])` -/
def P14485290545767558808.Spec : Prop :=
  ∀ n, P14485290545767558808.a n = A107375 n

end A107375

/-! ## A107375.P11903372165188632152

`A054404(∑[A001710(n)])`
-/

namespace A107375.P11903372165188632152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107375.P11903372165188632152

namespace A107375

/-- `A054404(∑[A001710(n)])` -/
def P11903372165188632152.Spec : Prop :=
  ∀ n, P11903372165188632152.a n = A107375 n

end A107375

/-!
# A107376: a(n) = 7*a(n-1)-7*a(n-3)-a(n-4).

The programs for A107376, the canonical program `A107376.P4438083232429923993` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107376 has offset 0).

The definition of A107376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-7*a(n-3)-a(n-4)` (program `A107376.P4438083232429923993`, by `A107376.P4438083232429923993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107376.P4438083232429923993

`7*a(n-1)-7*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107376

/-- `7*a(n-1)-7*a(n-3)-a(n-4)` -/
def P4438083232429923993.Spec : Prop :=
  ∀ n, P4438083232429923993.a n = A107376 n

theorem P4438083232429923993.correct : P4438083232429923993.Spec := by
  intro n
  simp only [A107376]

end A107376

/-! ## A107376.P10154299727957587961

`A008651(A199475(n)+18)`
-/

namespace A107376.P10154299727957587961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A199475 n + 18).toNat

end

end A107376.P10154299727957587961

namespace A107376

/-- `A008651(A199475(n)+18)` -/
def P10154299727957587961.Spec : Prop :=
  ∀ n, P10154299727957587961.a n = A107376 n

end A107376

/-! ## A107376.P14206139509935254148

`A110656(∑[A000166(n+1)])`
-/

namespace A107376.P14206139509935254148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107376.P14206139509935254148

namespace A107376

/-- `A110656(∑[A000166(n+1)])` -/
def P14206139509935254148.Spec : Prop :=
  ∀ n, P14206139509935254148.a n = A107376 n

end A107376

/-!
# A107377: Expansion of x*(1-4*x-3*x^2)/(1-5*x+5*x^3+x^4).

The programs for A107377, the canonical program `A107377.P14264407058929610174` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107377 has offset 0).

The definition of A107377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-4x^2-3x^3)/(1-5x+5x^3+x^4))` (program `A107377.P14264407058929610174`, by `A107377.P14264407058929610174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107377.P14264407058929610174

`ogf((x-4x^2-3x^3)/(1-5x+5x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107377

/-- `ogf((x-4x^2-3x^3)/(1-5x+5x^3+x^4))` -/
def P14264407058929610174.Spec : Prop :=
  ∀ n, P14264407058929610174.a n = A107377 n

theorem P14264407058929610174.correct : P14264407058929610174.Spec := by
  intro n
  simp only [A107377]

end A107377

/-! ## A107377.P3815224359695276001

`5*a(n-1)-5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A107377.P3815224359695276001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  5 * a (n - 1) - 5 * a (n - 3) - a (n - 4)

end

end A107377.P3815224359695276001

namespace A107377

/-- `5*a(n-1)-5*a(n-3)-a(n-4)` -/
def P3815224359695276001.Spec : Prop :=
  ∀ n, P3815224359695276001.a n = A107377 n

end A107377

/-! ## A107377.P3324253846942672666

`A105519(A006318(n))+A005138(n)`
-/

namespace A107377.P3324253846942672666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A006318 n).toNat + A005138 n

end

end A107377.P3324253846942672666

namespace A107377

/-- `A105519(A006318(n))+A005138(n)` -/
def P3324253846942672666.Spec : Prop :=
  ∀ n, P3324253846942672666.a n = A107377 n

end A107377

/-! ## A107377.P8349641028754015193

`A235645(A134024(n)+A000142(n))`
-/

namespace A107377.P8349641028754015193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235645 (A134024 n + A000142 n).toNat

end

end A107377.P8349641028754015193

namespace A107377

/-- `A235645(A134024(n)+A000142(n))` -/
def P8349641028754015193.Spec : Prop :=
  ∀ n, P8349641028754015193.a n = A107377 n

end A107377

/-!
# A107378: Expansion of x*(1-3*x-2*x^2)/(1-4*x+4*x^3+x^4).

The programs for A107378, the canonical program `A107378.P2173412559456879883` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107378 has offset 0).

The definition of A107378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-3x^2-2x^3)/(1-4x+4x^3+x^4))` (program `A107378.P2173412559456879883`, by `A107378.P2173412559456879883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107378.P2173412559456879883

`ogf((x-3x^2-2x^3)/(1-4x+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107378

/-- `ogf((x-3x^2-2x^3)/(1-4x+4x^3+x^4))` -/
def P2173412559456879883.Spec : Prop :=
  ∀ n, P2173412559456879883.a n = A107378 n

theorem P2173412559456879883.correct : P2173412559456879883.Spec := by
  intro n
  simp only [A107378]

end A107378

/-! ## A107378.P186889266052318382

`4*a(n-1)-4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A107378.P186889266052318382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  4 * a (n - 1) - 4 * a (n - 3) - a (n - 4)

end

end A107378.P186889266052318382

namespace A107378

/-- `4*a(n-1)-4*a(n-3)-a(n-4)` -/
def P186889266052318382.Spec : Prop :=
  ∀ n, P186889266052318382.a n = A107378 n

end A107378

/-! ## A107378.P16149709756423121406

`A178976(A196889(n+1))`
-/

namespace A107378.P16149709756423121406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178976 (A196889 (n + 1)).toNat

end

end A107378.P16149709756423121406

namespace A107378

/-- `A178976(A196889(n+1))` -/
def P16149709756423121406.Spec : Prop :=
  ∀ n, P16149709756423121406.a n = A107378 n

end A107378

/-! ## A107378.P17523018601351164195

`A046927(A271518(n)+A001710(n))`
-/

namespace A107378.P17523018601351164195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046927 (A271518 n + A001710 n).toNat

end

end A107378.P17523018601351164195

namespace A107378

/-- `A046927(A271518(n)+A001710(n))` -/
def P17523018601351164195.Spec : Prop :=
  ∀ n, P17523018601351164195.a n = A107378 n

end A107378

/-!
# A107379: Number of ways to write n^2 as the sum of n odd numbers, disregarding order.

The programs for A107379, there is no canonical definition to state claims against.
-/

/-! ## A107379.P2687759435300646888

`A008284(A050534(n+1)+A028310(n))`
-/

namespace A107379.P2687759435300646888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A050534 (n + 1) + A028310 n).toNat

end

end A107379.P2687759435300646888

/-! ## A107379.P16967173164345312807

`A008284(A179865(A179865(n+1))+n)`
-/

namespace A107379.P16967173164345312807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A179865 (A179865 (n + 1)).toNat + (n : ℤ)).toNat

end

end A107379.P16967173164345312807

/-! ## A107379.P9223874204463253357

`A008284(A176145(n+3)+A000007(n))`
-/

namespace A107379.P9223874204463253357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A176145 (n + 3) + A000007 n).toNat

end

end A107379.P9223874204463253357

/-! ## A107379.P9867439366188357319

`A008284(A233583(n+1)+A050534(n+1))`
-/

namespace A107379.P9867439366188357319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A233583 (n + 1) + A050534 (n + 1)).toNat

end

end A107379.P9867439366188357319

/-! ## A107379.P11096816878600693581

`A008284(A176145(n+3)+A156660(2*(n+1)))`
-/

namespace A107379.P11096816878600693581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A176145 (n + 3) + A156660 (2 * (n + 1))).toNat

end

end A107379.P11096816878600693581

/-!
# A107380: Numbers k such that (k + prime(k)) and (k+1 + prime(k+1)) are divisible by 11.

The programs for A107380, there is no canonical definition to state claims against.
-/

/-! ## A107380.P8178691273130286220

`∩[A108559(n+1)-1, A108559(n+1)]`
-/

namespace A107380.P8178691273130286220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108559 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107380.P8178691273130286220

/-!
# A107381: a(n) = 4*a(n-1)-3*a(n-2) -3*a(n-3) +2*a(n-4) + a(n-5), n>7.

The programs for A107381, the canonical program `A107381.P6460060232443674715` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107381 has offset 0).

The definition of A107381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-3*a(n-2)-3*a(n-3)+2*a(n-4)+a(n-5)` (program `A107381.P6460060232443674715`, by `A107381.P6460060232443674715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107381.P6460060232443674715

`4*a(n-1)-3*a(n-2)-3*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=4, a(1)=3, a(2)=9, a(3)=17, a(4)=40, a(5)=92, a(6)=215, a(7)=506`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107381

/-- `4*a(n-1)-3*a(n-2)-3*a(n-3)+2*a(n-4)+a(n-5)` -/
def P6460060232443674715.Spec : Prop :=
  ∀ n, P6460060232443674715.a n = A107381 n

theorem P6460060232443674715.correct : P6460060232443674715.Spec := by
  intro n
  simp only [A107381]

end A107381

/-! ## A107381.P5766547295071304738

`A013698(a(n-1))` with `a(0)=4, a(1)=3, a(2)=9, a(3)=17, a(4)=40, a(5)=92, a(6)=215`
-/

namespace A107381.P5766547295071304738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 9, 17, 40, 92, 215] fun n a =>
  A013698 (a (n - 1)).toNat

end

end A107381.P5766547295071304738

namespace A107381

/-- `A013698(a(n-1))` -/
def P5766547295071304738.Spec : Prop :=
  ∀ n, P5766547295071304738.a n = A107381 n

end A107381

/-! ## A107381.P7701995205773951325

`A016269(a(n-1))` with `a(0)=4, a(1)=3, a(2)=9, a(3)=17, a(4)=40, a(5)=92, a(6)=215`
-/

namespace A107381.P7701995205773951325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 3, 9, 17, 40, 92, 215] fun n a =>
  A016269 (a (n - 1)).toNat

end

end A107381.P7701995205773951325

namespace A107381

/-- `A016269(a(n-1))` -/
def P7701995205773951325.Spec : Prop :=
  ∀ n, P7701995205773951325.a n = A107381 n

end A107381

/-!
# A107382: a(n) = 4*a(n-1)-4*a(n-3)-a(n-4).

The programs for A107382, the canonical program `A107382.P1724466252548679457` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107382 has offset 0).

The definition of A107382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-3)-a(n-4)` (program `A107382.P1724466252548679457`, by `A107382.P1724466252548679457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107382.P1724466252548679457

`4*a(n-1)-4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=4, a(2)=16, a(3)=52`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107382

/-- `4*a(n-1)-4*a(n-3)-a(n-4)` -/
def P1724466252548679457.Spec : Prop :=
  ∀ n, P1724466252548679457.a n = A107382 n

theorem P1724466252548679457.correct : P1724466252548679457.Spec := by
  intro n
  simp only [A107382]

end A107382

/-! ## A107382.P1113600291663147608

`A120327(A211303(n))`
-/

namespace A107382.P1113600291663147608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A211303 n).toNat

end

end A107382.P1113600291663147608

namespace A107382

/-- `A120327(A211303(n))` -/
def P1113600291663147608.Spec : Prop :=
  ∀ n, P1113600291663147608.a n = A107382 n

end A107382

/-!
# A107383: a(n) = 2*a(n-2) + 2*a(n-3).

The programs for A107383, the canonical program `A107383.P10422069596086832301` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107383 has offset 0).

The definition of A107383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+2*a(n-3)` (program `A107383.P10422069596086832301`, by `A107383.P10422069596086832301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107383.P10422069596086832301

`2*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107383

/-- `2*a(n-2)+2*a(n-3)` -/
def P10422069596086832301.Spec : Prop :=
  ∀ n, (P10422069596086832301.a n : ℤ) = A107383 n

theorem P10422069596086832301.correct : P10422069596086832301.Spec := by
  intro n
  simp only [A107383]

end A107383

/-! ## A107383.P9751171494760161197

`ogf((x+x^2)/(1-2x^2-2x^3))`
-/

namespace A107383.P9751171494760161197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, 0, -2, -2] n

end

end A107383.P9751171494760161197

namespace A107383

/-- `ogf((x+x^2)/(1-2x^2-2x^3))` -/
def P9751171494760161197.Spec : Prop :=
  ∀ n, P9751171494760161197.a n = A107383 n

end A107383

/-! ## A107383.P6418405260348189041

`2*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A107383.P6418405260348189041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * (a (n - 2) + a (n - 3))

end

end A107383.P6418405260348189041

namespace A107383

/-- `2*(a(n-2)+a(n-3))` -/
def P6418405260348189041.Spec : Prop :=
  ∀ n, (P6418405260348189041.a n : ℤ) = A107383 n

theorem P6418405260348189041.correct : P6418405260348189041.Spec := by
  intro n
  simp only [A107383, Nat.add_sub_cancel, A107383.P6418405260348189041.a, A107383.P10422069596086832301.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107383

/-! ## A107383.P14923186887793717096

`a(n-1)-2*(a(n-4)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A107383.P14923186887793717096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 1) - 2 * (a (n - 4) - a (n - 2))

end

end A107383.P14923186887793717096

namespace A107383

/-- `a(n-1)-2*(a(n-4)-a(n-2))` -/
def P14923186887793717096.Spec : Prop :=
  ∀ n, P14923186887793717096.a n = A107383 n

end A107383

/-! ## A107383.P14808872898448391976

`a(n-2)+a(n-2)+a(n-3)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A107383.P14808872898448391976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 3) + a (n - 3)))

end

end A107383.P14808872898448391976

namespace A107383

/-- `a(n-2)+a(n-2)+a(n-3)+a(n-3)` -/
def P14808872898448391976.Spec : Prop :=
  ∀ n, (P14808872898448391976.a n : ℤ) = A107383 n

theorem P14808872898448391976.correct : P14808872898448391976.Spec := by
  intro n
  simp only [A107383, Nat.add_sub_cancel, A107383.P14808872898448391976.a, A107383.P10422069596086832301.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107383

/-! ## A107383.P410015979608981868

`A247301(3*(n+1))`
-/

namespace A107383.P410015979608981868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247301 (3 * (n + 1))

end

end A107383.P410015979608981868

namespace A107383

/-- `A247301(3*(n+1))` -/
def P410015979608981868.Spec : Prop :=
  ∀ n, P410015979608981868.a n = A107383 n

end A107383

/-! ## A107383.P5143901485024506962

`A247302(3*n+2)`
-/

namespace A107383.P5143901485024506962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (3 * n + 2)

end

end A107383.P5143901485024506962

namespace A107383

/-- `A247302(3*n+2)` -/
def P5143901485024506962.Spec : Prop :=
  ∀ n, P5143901485024506962.a n = A107383 n

end A107383

/-! ## A107383.P6272265577769989078

`A052907(n+1)/2`
-/

namespace A107383.P6272265577769989078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 (n + 1) : ℚ) / 2

end

end A107383.P6272265577769989078

namespace A107383

/-- `A052907(n+1)/2` -/
def P6272265577769989078.Spec : Prop :=
  ∀ n, P6272265577769989078.a n = (A107383 n : ℚ)

end A107383

/-! ## A107383.P11292545069321422263

`Δ[A077879(n)/2]`
-/

namespace A107383.P11292545069321422263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077879 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107383.P11292545069321422263

namespace A107383

/-- `Δ[A077879(n)/2]` -/
def P11292545069321422263.Spec : Prop :=
  ∀ n, P11292545069321422263.a n = (A107383 n : ℚ)

end A107383

/-! ## A107383.P13385328265872643594

`Δ[∑[A052907(n)]/2]`
-/

namespace A107383.P13385328265872643594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107383.P13385328265872643594

namespace A107383

/-- `Δ[∑[A052907(n)]/2]` -/
def P13385328265872643594.Spec : Prop :=
  ∀ n, P13385328265872643594.a n = (A107383 n : ℚ)

end A107383

/-! ## A107383.P3231820392765316706

`Δ[A061279(n+1)]-A061279(n)`
-/

namespace A107383.P3231820392765316706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061279 n

end

end A107383.P3231820392765316706

namespace A107383

/-- `Δ[A061279(n+1)]-A061279(n)` -/
def P3231820392765316706.Spec : Prop :=
  ∀ n, P3231820392765316706.a n = A107383 n

end A107383

/-!
# A107384: a(n)= a(n-1) +3*a(n-2) -3*a(n-4).

The programs for A107384, the canonical program `A107384.P10289462791248848752` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107384 has offset 0).

The definition of A107384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-3*a(n-4)` (program `A107384.P10289462791248848752`, by `A107384.P10289462791248848752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107384.P10289462791248848752

`a(n-1)+3*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107384

/-- `a(n-1)+3*a(n-2)-3*a(n-4)` -/
def P10289462791248848752.Spec : Prop :=
  ∀ n, P10289462791248848752.a n = A107384 n

theorem P10289462791248848752.correct : P10289462791248848752.Spec := by
  intro n
  simp only [A107384]

end A107384

/-! ## A107384.P9294978688652133100

`ogf((x-2x^3)/(1-x-3x^2+3x^4))`
-/

namespace A107384.P9294978688652133100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -1, -3, 0, 3] n

end

end A107384.P9294978688652133100

namespace A107384

/-- `ogf((x-2x^3)/(1-x-3x^2+3x^4))` -/
def P9294978688652133100.Spec : Prop :=
  ∀ n, P9294978688652133100.a n = A107384 n

end A107384

/-! ## A107384.P7476554088557664246

`3*(a(n-2)+a(n-3))-1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A107384.P7476554088557664246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * (a (n - 2) + a (n - 3)) - 1

end

end A107384.P7476554088557664246

namespace A107384

/-- `3*(a(n-2)+a(n-3))-1` -/
def P7476554088557664246.Spec : Prop :=
  ∀ n, P7476554088557664246.a n = A107384 n

end A107384

/-! ## A107384.P15064848638085256597

`a(n-1)-3*(a(n-4)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A107384.P15064848638085256597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 1) - 3 * (a (n - 4) - a (n - 2))

end

end A107384.P15064848638085256597

namespace A107384

/-- `a(n-1)-3*(a(n-4)-a(n-2))` -/
def P15064848638085256597.Spec : Prop :=
  ∀ n, P15064848638085256597.a n = A107384 n

end A107384

/-! ## A107384.P11093158981309930346

`∑[A008486(a(n-2)+a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A107384.P11093158981309930346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  A008486 (f1 (n - 2) + f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107384.P11093158981309930346

namespace A107384

/-- `∑[A008486(a(n-2)+a(n-3))]` -/
def P11093158981309930346.Spec : Prop :=
  ∀ n, P11093158981309930346.a n = A107384 n

end A107384

/-!
# A107385: a(n) = a(n-1)+4*a(n-2)-4*a(n-4).

The programs for A107385, the canonical program `A107385.P14281845380695849194` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107385 has offset 0).

The definition of A107385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)-4*a(n-4)` (program `A107385.P14281845380695849194`, by `A107385.P14281845380695849194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107385.P14281845380695849194

`a(n-1)+4*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107385

/-- `a(n-1)+4*a(n-2)-4*a(n-4)` -/
def P14281845380695849194.Spec : Prop :=
  ∀ n, P14281845380695849194.a n = A107385 n

theorem P14281845380695849194.correct : P14281845380695849194.Spec := by
  intro n
  simp only [A107385]

end A107385

/-! ## A107385.P10530683933430606242

`ogf((x-3x^3)/(1-x-4x^2+4x^4))`
-/

namespace A107385.P10530683933430606242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -3] [1, -1, -4, 0, 4] n

end

end A107385.P10530683933430606242

namespace A107385

/-- `ogf((x-3x^3)/(1-x-4x^2+4x^4))` -/
def P10530683933430606242.Spec : Prop :=
  ∀ n, P10530683933430606242.a n = A107385 n

end A107385

/-! ## A107385.P12739072200766410420

`4*(a(n-2)+a(n-3))-2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A107385.P12739072200766410420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  4 * (a (n - 2) + a (n - 3)) - 2

end

end A107385.P12739072200766410420

namespace A107385

/-- `4*(a(n-2)+a(n-3))-2` -/
def P12739072200766410420.Spec : Prop :=
  ∀ n, P12739072200766410420.a n = A107385 n

end A107385

/-! ## A107385.P18143244316244160436

`∑[A008574(a(n-2)+a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A107385.P18143244316244160436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  A008574 (f1 (n - 2) + f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107385.P18143244316244160436

namespace A107385

/-- `∑[A008574(a(n-2)+a(n-3))]` -/
def P18143244316244160436.Spec : Prop :=
  ∀ n, P18143244316244160436.a n = A107385 n

end A107385

/-!
# A107386: a(n) = 2*a(n-1) - 2*a(n-3) + a(n-4), n>6.

The programs for A107386, the canonical program `A107386.P17901484514657191620` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107386 has offset 0).

The definition of A107386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-2*a(n-3)+a(n-4)` (program `A107386.P17901484514657191620`, by `A107386.P17901484514657191620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107386.P11552035660895937233

`(n-2)²-a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A107386.P11552035660895937233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  ((n : ℤ) - 2) ^ 2 - a (n - 1)

end

end A107386.P11552035660895937233

namespace A107386

/-- `(n-2)²-a(n-1)` -/
def P11552035660895937233.Spec : Prop :=
  ∀ n, P11552035660895937233.a n = A107386 n

end A107386

/-! ## A107386.P17901484514657191620

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=7, a(6)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107386

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17901484514657191620.Spec : Prop :=
  ∀ n, P17901484514657191620.a n = A107386 n

theorem P17901484514657191620.correct : P17901484514657191620.Spec := by
  intro n
  simp only [A107386]

end A107386

/-! ## A107386.P2864359671658072283

`abs(xor(1, 1-n)+C(n, 2))`
-/

namespace A107386.P2864359671658072283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (1 - (n : ℤ)) + (Nat.choose n 2 : ℤ)|

end

end A107386.P2864359671658072283

namespace A107386

/-- `abs(xor(1, 1-n)+C(n, 2))` -/
def P2864359671658072283.Spec : Prop :=
  ∀ n, P2864359671658072283.a n = A107386 n

end A107386

/-! ## A107386.P17458434580443757769

`abs(∑[abs(1-n)]-xor(1, n))`
-/

namespace A107386.P17458434580443757769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (Nat.xor 1 n : ℤ)|

end

end A107386.P17458434580443757769

namespace A107386

/-- `abs(∑[abs(1-n)]-xor(1, n))` -/
def P17458434580443757769.Spec : Prop :=
  ∀ n, P17458434580443757769.a n = A107386 n

end A107386

/-! ## A107386.P16490775432557085504

`abs(4*floor(n/2)-∑[n])`
-/

namespace A107386.P16490775432557085504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * ⌊(n : ℚ) / 2⌋ - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A107386.P16490775432557085504

namespace A107386

/-- `abs(4*floor(n/2)-∑[n])` -/
def P16490775432557085504.Spec : Prop :=
  ∀ n, P16490775432557085504.a n = A107386 n

end A107386

/-! ## A107386.P1586449832333273252

`∑[a(n-2)+2]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=5`
-/

namespace A107386.P1586449832333273252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 0, 5] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107386.P1586449832333273252

namespace A107386

/-- `∑[a(n-2)+2]` -/
def P1586449832333273252.Spec : Prop :=
  ∀ n, (P1586449832333273252.a n : ℤ) = A107386 n

end A107386

/-! ## A107386.P227141681216849841

`A030978(n)-A168237(n)`
-/

namespace A107386.P227141681216849841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n - A168237 n

end

end A107386.P227141681216849841

namespace A107386

/-- `A030978(n)-A168237(n)` -/
def P227141681216849841.Spec : Prop :=
  ∀ n, P227141681216849841.a n = A107386 n

end A107386

/-! ## A107386.P11851127151749659049

`A030978(n)+1-A032766(A109613(n))`
-/

namespace A107386.P11851127151749659049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n + (1 - A032766 (A109613 n).toNat)

end

end A107386.P11851127151749659049

namespace A107386

/-- `A030978(n)+1-A032766(A109613(n))` -/
def P11851127151749659049.Spec : Prop :=
  ∀ n, P11851127151749659049.a n = A107386 n

end A107386

/-! ## A107386.P11573387234821621509

`A030978(n)-A032766(A109613(n)-1)`
-/

namespace A107386.P11573387234821621509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 n - A032766 (A109613 n - 1).toNat

end

end A107386.P11573387234821621509

namespace A107386

/-- `A030978(n)-A032766(A109613(n)-1)` -/
def P11573387234821621509.Spec : Prop :=
  ∀ n, P11573387234821621509.a n = A107386 n

end A107386

/-! ## A107386.P8948075452347056794

`A059841(n+1)+A030978(n)-A032766(n)`
-/

namespace A107386.P8948075452347056794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + (A030978 n - A032766 n)

end

end A107386.P8948075452347056794

namespace A107386

/-- `A059841(n+1)+A030978(n)-A032766(n)` -/
def P8948075452347056794.Spec : Prop :=
  ∀ n, P8948075452347056794.a n = A107386 n

end A107386

/-!
# A107387: Expansion of x*(1-2*x-x^2)/( (1-x)*(1+x)*(1-3*x+x^2)).

The programs for A107387, the canonical program `A107387.P1656422882121895073` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107387 has offset 0).

The definition of A107387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2-x^3)/(1-3x+3x^3-x^4))` (program `A107387.P1656422882121895073`, by `A107387.P1656422882121895073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107387.P1656422882121895073

`ogf((x-2x^2-x^3)/(1-3x+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107387

/-- `ogf((x-2x^2-x^3)/(1-3x+3x^3-x^4))` -/
def P1656422882121895073.Spec : Prop :=
  ∀ n, P1656422882121895073.a n = A107387 n

theorem P1656422882121895073.correct : P1656422882121895073.Spec := by
  intro n
  simp only [A107387]

end A107387

/-! ## A107387.P13753150500504045779

`∑[∑[a(n-1)+a(n-2)]²]` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1`
-/

namespace A107387.P13753150500504045779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P13753150500504045779

namespace A107387

/-- `∑[∑[a(n-1)+a(n-2)]²]` -/
def P13753150500504045779.Spec : Prop :=
  ∀ n, P13753150500504045779.a n = A107387 n

end A107387

/-! ## A107387.P6613192116981790141

`∑[2*(a(n-1)+a(n-2))-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A107387.P6613192116981790141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2)) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P6613192116981790141

namespace A107387

/-- `∑[2*(a(n-1)+a(n-2))-a(n-3)]` -/
def P6613192116981790141.Spec : Prop :=
  ∀ n, P6613192116981790141.a n = A107387 n

end A107387

/-! ## A107387.P9845048757971111113

`∑[A152163(n)²]-1`
-/

namespace A107387.P9845048757971111113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P9845048757971111113

namespace A107387

/-- `∑[A152163(n)²]-1` -/
def P9845048757971111113.Spec : Prop :=
  ∀ n, P9845048757971111113.a n = A107387 n

end A107387

/-! ## A107387.P308640017848308067

`∑[A295672(2*n)]-1`
-/

namespace A107387.P308640017848308067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P308640017848308067

namespace A107387

/-- `∑[A295672(2*n)]-1` -/
def P308640017848308067.Spec : Prop :=
  ∀ n, P308640017848308067.a n = A107387 n

end A107387

/-! ## A107387.P16171068824489304578

`∑[A212804(abs(1-n))²]`
-/

namespace A107387.P16171068824489304578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P16171068824489304578

namespace A107387

/-- `∑[A212804(abs(1-n))²]` -/
def P16171068824489304578.Spec : Prop :=
  ∀ n, P16171068824489304578.a n = A107387 n

end A107387

/-! ## A107387.P17068388169416280146

`∑[Δ[A212804(n)]²]-1`
-/

namespace A107387.P17068388169416280146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P17068388169416280146

namespace A107387

/-- `∑[Δ[A212804(n)]²]-1` -/
def P17068388169416280146.Spec : Prop :=
  ∀ n, P17068388169416280146.a n = A107387 n

end A107387

/-! ## A107387.P8346798726489371307

`∑[Δ[Δ[A000045(n)]]²]-1`
-/

namespace A107387.P8346798726489371307
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P8346798726489371307

namespace A107387

/-- `∑[Δ[Δ[A000045(n)]]²]-1` -/
def P8346798726489371307.Spec : Prop :=
  ∀ n, P8346798726489371307.a n = A107387 n

end A107387

/-! ## A107387.P12905221308984021617

`∑[Δ[Δ[A001611(n)]]²]-1`
-/

namespace A107387.P12905221308984021617
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P12905221308984021617

namespace A107387

/-- `∑[Δ[Δ[A001611(n)]]²]-1` -/
def P12905221308984021617.Spec : Prop :=
  ∀ n, P12905221308984021617.a n = A107387 n

end A107387

/-! ## A107387.P6348555651541272323

`∑[A000045(abs(2-n))²]-1`
-/

namespace A107387.P6348555651541272323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - (n : ℤ)|.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P6348555651541272323

namespace A107387

/-- `∑[A000045(abs(2-n))²]-1` -/
def P6348555651541272323.Spec : Prop :=
  ∀ n, P6348555651541272323.a n = A107387 n

end A107387

/-! ## A107387.P1701029687047478827

`∑[A051792(2*(n+1))²]-1`
-/

namespace A107387.P1701029687047478827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A107387.P1701029687047478827

namespace A107387

/-- `∑[A051792(2*(n+1))²]-1` -/
def P1701029687047478827.Spec : Prop :=
  ∀ n, P1701029687047478827.a n = A107387 n

end A107387

/-! ## A107387.P9799405271084455678

`A295672(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A107387.P9799405271084455678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295672 (n + n) + a (n - 1)

end

end A107387.P9799405271084455678

namespace A107387

/-- `A295672(n+n)+a(n-1)` -/
def P9799405271084455678.Spec : Prop :=
  ∀ n, P9799405271084455678.a n = A107387 n

end A107387

/-! ## A107387.P7141328847103313448

`∑[A000045(n-2%(n+1))²]`
-/

namespace A107387.P7141328847103313448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n - 2 % (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P7141328847103313448

namespace A107387

/-- `∑[A000045(n-2%(n+1))²]` -/
def P7141328847103313448.Spec : Prop :=
  ∀ n, P7141328847103313448.a n = A107387 n

end A107387

/-! ## A107387.P11600288728405668241

`∑[A000045((3*n)%(n+1))²]`
-/

namespace A107387.P11600288728405668241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n % (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P11600288728405668241

namespace A107387

/-- `∑[A000045((3*n)%(n+1))²]` -/
def P11600288728405668241.Spec : Prop :=
  ∀ n, P11600288728405668241.a n = A107387 n

end A107387

/-! ## A107387.P13793960204389964554

`a(n-1)+A000045(n-2)²` with `a(0)=0, a(1)=1`
-/

namespace A107387.P13793960204389964554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A000045 (n - 2) ^ 2

end

end A107387.P13793960204389964554

namespace A107387

/-- `a(n-1)+A000045(n-2)²` -/
def P13793960204389964554.Spec : Prop :=
  ∀ n, P13793960204389964554.a n = A107387 n

end A107387

/-! ## A107387.P9819888680783436668

`1-A152163(n)*A212804(n)`
-/

namespace A107387.P9819888680783436668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152163 n * A212804 n

end

end A107387.P9819888680783436668

namespace A107387

/-- `1-A152163(n)*A212804(n)` -/
def P9819888680783436668.Spec : Prop :=
  ∀ n, P9819888680783436668.a n = A107387 n

end A107387

/-! ## A107387.P8796907078526006783

`∑[A051792(A004277(n)+2)²]`
-/

namespace A107387.P8796907078526006783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (A004277 n + 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P8796907078526006783

namespace A107387

/-- `∑[A051792(A004277(n)+2)²]` -/
def P8796907078526006783.Spec : Prop :=
  ∀ n, P8796907078526006783.a n = A107387 n

end A107387

/-! ## A107387.P12331996988647927277

`∑[(A006355(n)-∑[A212804(n)])²]`
-/

namespace A107387.P12331996988647927277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006355 n - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P12331996988647927277

namespace A107387

/-- `∑[(A006355(n)-∑[A212804(n)])²]` -/
def P12331996988647927277.Spec : Prop :=
  ∀ n, P12331996988647927277.a n = A107387 n

end A107387

/-! ## A107387.P13071322276208971575

`∑[Δ[A000032(n)%A000045(n+1)]²]`
-/

namespace A107387.P13071322276208971575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 n) (A000045 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107387.P13071322276208971575

namespace A107387

/-- `∑[Δ[A000032(n)%A000045(n+1)]²]` -/
def P13071322276208971575.Spec : Prop :=
  ∀ n, P13071322276208971575.a n = A107387 n

end A107387

/-!
# A107388: Expansion of x*(3*x-1)*(2*x-1) / ( (1-x)*(1+x)*(x^2-4*x+1) ).

The programs for A107388, the canonical program `A107388.P12334958373733977162` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107388 has offset 0).

The definition of A107388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-5x^2+6x^3)/(1-4x+4x^3-x^4))` (program `A107388.P12334958373733977162`, by `A107388.P12334958373733977162.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107388.P12334958373733977162

`ogf((x-5x^2+6x^3)/(1-4x+4x^3-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107388

/-- `ogf((x-5x^2+6x^3)/(1-4x+4x^3-x^4))` -/
def P12334958373733977162.Spec : Prop :=
  ∀ n, P12334958373733977162.a n = A107388 n

theorem P12334958373733977162.correct : P12334958373733977162.Spec := by
  intro n
  simp only [A107388]

end A107388

/-! ## A107388.P5490449026640914065

`(-1)^(n+1)+(3*A001353(n+1)-11*A001353(n)-1)/2`
-/

namespace A107388.P5490449026640914065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) : ℚ) + (3 * A001353 (n + 1) - 11 * A001353 n - 1 : ℚ) / 2

end

end A107388.P5490449026640914065

namespace A107388

/-- `(-1)^(n+1)+(3*A001353(n+1)-11*A001353(n)-1)/2` -/
def P5490449026640914065.Spec : Prop :=
  ∀ n, P5490449026640914065.a n = (A107388 n : ℚ)

end A107388

/-!
# A107389: Expansion of x*(1-6*x+7*x^2)/((1-x)*(1+x)*(1-5*x+x^2)).

The programs for A107389, the canonical program `A107389.P7450653940608802272` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107389 has offset 0).

The definition of A107389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-6x^2+7x^3)/(1-5x+5x^3-x^4))` (program `A107389.P7450653940608802272`, by `A107389.P7450653940608802272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107389.P7450653940608802272

`ogf((x-6x^2+7x^3)/(1-5x+5x^3-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107389

/-- `ogf((x-6x^2+7x^3)/(1-5x+5x^3-x^4))` -/
def P7450653940608802272.Spec : Prop :=
  ∀ n, P7450653940608802272.a n = A107389 n

theorem P7450653940608802272.correct : P7450653940608802272.Spec := by
  intro n
  simp only [A107389]

end A107389

/-! ## A107389.P4755524712497072661

`A025460(A119772(n))-A284938(n+1)`
-/

namespace A107389.P4755524712497072661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (A119772 n).toNat - A284938 (n + 1)

end

end A107389.P4755524712497072661

namespace A107389

/-- `A025460(A119772(n))-A284938(n+1)` -/
def P4755524712497072661.Spec : Prop :=
  ∀ n, P4755524712497072661.a n = A107389 n

end A107389

/-!
# A107390: Composite Fibonacci sequence: each term is the composite with index equal to the sum of the previous two terms.

The programs for A107390, the canonical program `A107390.P7923518412452108324` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107390 has offset 1).

The definition of A107390 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107390.P7923518412452108324

`A002808(a(n-1)+a(n-2))` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107390

/-- `A002808(a(n-1)+a(n-2))` -/
def P7923518412452108324.Spec : Prop :=
  ∀ n, P7923518412452108324.a n = A107390 (n + 1)

theorem P7923518412452108324.correct : P7923518412452108324.Spec := by
  intro n
  simp only [A107390, Nat.add_sub_cancel]

end A107390

/-! ## A107390.P11506709907488843104

`A018252(a(n-1)+a(n-2)+1)` with `a(0)=4, a(1)=6`
-/

namespace A107390.P11506709907488843104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A018252 (a (n - 1) + a (n - 2) + 1).toNat

end

end A107390.P11506709907488843104

namespace A107390

/-- `A018252(a(n-1)+a(n-2)+1)` -/
def P11506709907488843104.Spec : Prop :=
  ∀ n, P11506709907488843104.a n = A107390 (n + 1)

end A107390

/-! ## A107390.P10070303061065596491

`A002808(a(n-1)-floor(-a(n-2)))` with `a(0)=4, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A107390.P10070303061065596491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002808 (a (n - 1) - (-a (n - 2))).toNat

end

end A107390.P10070303061065596491

namespace A107390

/-- `A002808(a(n-1)-floor(-a(n-2)))` -/
def P10070303061065596491.Spec : Prop :=
  ∀ n, P10070303061065596491.a n = A107390 (n + 1)

theorem P10070303061065596491.correct : P10070303061065596491.Spec := by
  intro n
  simp only [A107390, Nat.add_sub_cancel, A107390.P10070303061065596491.a, A107390.P7923518412452108324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107390

/-! ## A107390.P14723627568169067212

`A002808(a(n-1)-ceil(-a(n-2)))` with `a(0)=4, a(1)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A107390.P14723627568169067212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002808 (a (n - 1) - (-a (n - 2))).toNat

end

end A107390.P14723627568169067212

namespace A107390

/-- `A002808(a(n-1)-ceil(-a(n-2)))` -/
def P14723627568169067212.Spec : Prop :=
  ∀ n, P14723627568169067212.a n = A107390 (n + 1)

theorem P14723627568169067212.correct : P14723627568169067212.Spec := by
  intro n
  simp only [A107390, Nat.add_sub_cancel, A107390.P14723627568169067212.a, A107390.P7923518412452108324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107390

/-! ## A107390.P1915627107178452814

`A002808(a(n-1)-round(-a(n-2)))` with `a(0)=4, a(1)=6`

`round` is left out, it is the identity on integers.
-/

namespace A107390.P1915627107178452814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  A002808 (a (n - 1) - (-a (n - 2))).toNat

end

end A107390.P1915627107178452814

namespace A107390

/-- `A002808(a(n-1)-round(-a(n-2)))` -/
def P1915627107178452814.Spec : Prop :=
  ∀ n, P1915627107178452814.a n = A107390 (n + 1)

theorem P1915627107178452814.correct : P1915627107178452814.Spec := by
  intro n
  simp only [A107390, Nat.add_sub_cancel, A107390.P1915627107178452814.a, A107390.P7923518412452108324.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107390

/-!
# A107391: Expansion of e.g.f. sin(x)^2 * sinh(x)^2.

The programs for A107391, the canonical program `A107391.P4600354908207460723` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107391 has offset 1).

The definition of A107391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107391.P4600354908207460723

`1/2*16^(n+1)-1/4*(-64)^(n+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107391

/-- `1/2*16^(n+1)-1/4*(-64)^(n+1)` -/
def P4600354908207460723.Spec : Prop :=
  ∀ n, P4600354908207460723.a n = (A107391 (n + 1) : ℚ)

end A107391

/-! ## A107391.P16507004771429692774

`(A262710(n+1)-2)*A262710(2*n+1)`
-/

namespace A107391.P16507004771429692774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262710 (n + 1) - 2) * A262710 (2 * n + 1)

end

end A107391.P16507004771429692774

namespace A107391

/-- `(A262710(n+1)-2)*A262710(2*n+1)` -/
def P16507004771429692774.Spec : Prop :=
  ∀ n, P16507004771429692774.a n = A107391 (n + 1)

end A107391

/-! ## A107391.P5349796484100284114

`(A164111(2*n+3)+2)*(2*A000302(n))²`
-/

namespace A107391.P5349796484100284114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164111 (2 * n + 3) + 2) * (2 * A000302 n) ^ 2

end

end A107391.P5349796484100284114

namespace A107391

/-- `(A164111(2*n+3)+2)*(2*A000302(n))²` -/
def P5349796484100284114.Spec : Prop :=
  ∀ n, P5349796484100284114.a n = A107391 (n + 1)

end A107391

/-! ## A107391.P2988521780826177726

`(A164111(2*n+3)+2)*A000302(2*n+1)`
-/

namespace A107391.P2988521780826177726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164111 (2 * n + 3) + 2) * A000302 (2 * n + 1)

end

end A107391.P2988521780826177726

namespace A107391

/-- `(A164111(2*n+3)+2)*A000302(2*n+1)` -/
def P2988521780826177726.Spec : Prop :=
  ∀ n, P2988521780826177726.a n = A107391 (n + 1)

end A107391

/-!
# A107392: Number of (inequivalent) fuzzy subgroups of the direct sum of group of integers modulo p^n and group of integers modulo 2 for a prime p with (p,2) = 1. Z_{p^n} + Z_2.

The programs for A107392, the canonical program `A107392.P13009318194418048665` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107392 has offset 0).

The definition of A107392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107392.P13009318194418048665

`2^n*(n²+7*n+8)-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107392

/-- `2^n*(n²+7*n+8)-1` -/
def P13009318194418048665.Spec : Prop :=
  ∀ n, P13009318194418048665.a n = A107392 n

theorem P13009318194418048665.correct : P13009318194418048665.Spec := by
  intro n
  simp only [A107392]

end A107392

/-! ## A107392.P6222944989972830539

`Δ[n*Δ[A048493(n)]]`
-/

namespace A107392.P6222944989972830539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107392.P6222944989972830539

namespace A107392

/-- `Δ[n*Δ[A048493(n)]]` -/
def P6222944989972830539.Spec : Prop :=
  ∀ n, P6222944989972830539.a n = A107392 n

theorem P6222944989972830539.correct : P6222944989972830539.Spec := by
  intro n
  simp only [A107392, Nat.add_sub_cancel, A107392.P6222944989972830539.f2, A107392.P6222944989972830539.f1, A107392.P6222944989972830539.a, A107392.P13009318194418048665.a, A048493, A048493.P18254336596332643479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107392

/-! ## A107392.P7941440379955812943

`Δ[n*∑[A045623(n+1)]]`
-/

namespace A107392.P7941440379955812943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107392.P7941440379955812943

namespace A107392

/-- `Δ[n*∑[A045623(n+1)]]` -/
def P7941440379955812943.Spec : Prop :=
  ∀ n, P7941440379955812943.a n = A107392 n

end A107392

/-! ## A107392.P1012920985162554173

`Δ[n*Δ[A058877(n+1)]]`
-/

namespace A107392.P1012920985162554173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107392.P1012920985162554173

namespace A107392

/-- `Δ[n*Δ[A058877(n+1)]]` -/
def P1012920985162554173.Spec : Prop :=
  ∀ n, P1012920985162554173.a n = A107392 n

theorem P1012920985162554173.correct : P1012920985162554173.Spec := by
  intro n
  simp only [A107392, Nat.add_sub_cancel, A107392.P1012920985162554173.f2, A107392.P1012920985162554173.f1, A107392.P1012920985162554173.a, A107392.P13009318194418048665.a, A058877, A058877.P1227274421615768529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107392

/-! ## A107392.P16412785494761918352

`Δ[n*(A328890(n+1)+1)]`
-/

namespace A107392.P16412785494761918352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328890 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107392.P16412785494761918352

namespace A107392

/-- `Δ[n*(A328890(n+1)+1)]` -/
def P16412785494761918352.Spec : Prop :=
  ∀ n, P16412785494761918352.a n = A107392 n

theorem P16412785494761918352.correct : P16412785494761918352.Spec := by
  intro n
  simp only [A107392, Nat.add_sub_cancel, A107392.P16412785494761918352.f1, A107392.P16412785494761918352.a, A107392.P13009318194418048665.a, A328890, A328890.P10807691076493716178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A107392

/-!
# A107393: a(n) = -1 if n is a prime, else a(n) = 1 if n is the sum of three odd primes, else a(n) = 2 if n is the sum of two primes, else a(n) = 0.

The programs for A107393, there is no canonical definition to state claims against.
-/

/-! ## A107393.P1629707877370025519

`A107279(A107286(n))-char[A000040(n+1)]`
-/

namespace A107393.P1629707877370025519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107393.P1629707877370025519

/-! ## A107393.P13950997404347212607

`A107279(A107286(n))-char[A060308(n+1)]`
-/

namespace A107393.P13950997404347212607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107393.P13950997404347212607

/-! ## A107393.P2391149289458056963

`A107279(A107286(n))-char[A008578(n+2)]`
-/

namespace A107393.P2391149289458056963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107393.P2391149289458056963

/-! ## A107393.P2917204510879569658

`A107279(A107286(n))-char[A331634(n+2)]`
-/

namespace A107393.P2917204510879569658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331634 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A107393.P2917204510879569658

/-! ## A107393.P10586531569563901034

`A107279(A107286(n))-A019427(A055671(n))`
-/

namespace A107393.P10586531569563901034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A107286 n).toNat - A019427 (A055671 n).toNat

end

end A107393.P10586531569563901034

/-! ## A107393.P17555820177876496051

`A040001(A107286(n))*A225230(A030664(n))`
-/

namespace A107393.P17555820177876496051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A107286 n).toNat * A225230 (A030664 n).toNat

end

end A107393.P17555820177876496051

/-! ## A107393.P5660425096183566584

`A225230(lcm(A030664(n), A040001(n)))`
-/

namespace A107393.P5660425096183566584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (Int.lcm (A030664 n) (A040001 n))

end

end A107393.P5660425096183566584

/-!
# A107395: a(n) = binomial(n+4,4)*binomial(n+6,4).

The programs for A107395, the canonical program `A107395.P15826552923796524975` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107395 has offset 0).

The definition of A107395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+4, 4)*C(n+6, 4)` (program `A107395.P15826552923796524975`, by `A107395.P15826552923796524975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107395.P15826552923796524975

`C(n+4, 4)*C(n+6, 4)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107395

/-- `C(n+4, 4)*C(n+6, 4)` -/
def P15826552923796524975.Spec : Prop :=
  ∀ n, (P15826552923796524975.a n : ℤ) = A107395 n

theorem P15826552923796524975.correct : P15826552923796524975.Spec := by
  intro n
  simp only [A107395]

end A107395

/-! ## A107395.P10557099732534956890

`(n+3)/4*A027791(n+3)`
-/

namespace A107395.P10557099732534956890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 4 * (A027791 (n + 3) : ℚ)

end

end A107395.P10557099732534956890

namespace A107395

/-- `(n+3)/4*A027791(n+3)` -/
def P10557099732534956890.Spec : Prop :=
  ∀ n, P10557099732534956890.a n = (A107395 n : ℚ)

theorem P10557099732534956890.correct : P10557099732534956890.Spec := by
  intro n
  simp only [A107395, Nat.add_sub_cancel, A107395.P10557099732534956890.a, A107395.P15826552923796524975.a, A027791, A027791.P14479561353345729953.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107395

/-! ## A107395.P2788164135102254661

`A027803(n+3)-A027791(n+3)`
-/

namespace A107395.P2788164135102254661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027803 (n + 3) - A027791 (n + 3)

end

end A107395.P2788164135102254661

namespace A107395

/-- `A027803(n+3)-A027791(n+3)` -/
def P2788164135102254661.Spec : Prop :=
  ∀ n, P2788164135102254661.a n = A107395 n

theorem P2788164135102254661.correct : P2788164135102254661.Spec := by
  intro n
  simp only [A107395, Nat.add_sub_cancel, A107395.P2788164135102254661.a, A107395.P15826552923796524975.a, A027791, A027791.P14479561353345729953.a, A027803, A027803.P11646309447943617098.a, A053347, A053347.P9328606196330463444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107395

/-! ## A107395.P16982620292742118873

`∑[A027802(n+2)+A027791(n+3)]-A027791(n+3)`
-/

namespace A107395.P16982620292742118873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027802 (n + 2) + A027791 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027791 (n + 3)

end

end A107395.P16982620292742118873

namespace A107395

/-- `∑[A027802(n+2)+A027791(n+3)]-A027791(n+3)` -/
def P16982620292742118873.Spec : Prop :=
  ∀ n, P16982620292742118873.a n = A107395 n

end A107395

/-! ## A107395.P13932199418971593090

`A288876(n+1)-A006542(n+5)`
-/

namespace A107395.P13932199418971593090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288876 (n + 1) - A006542 (n + 5)

end

end A107395.P13932199418971593090

namespace A107395

/-- `A288876(n+1)-A006542(n+5)` -/
def P13932199418971593090.Spec : Prop :=
  ∀ n, P13932199418971593090.a n = A107395 n

end A107395

/-! ## A107395.P11627620551250182836

`(A063258(n+1)+1)*∑[A000292(n+1)]`
-/

namespace A107395.P11627620551250182836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063258 (n + 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107395.P11627620551250182836

namespace A107395

/-- `(A063258(n+1)+1)*∑[A000292(n+1)]` -/
def P11627620551250182836.Spec : Prop :=
  ∀ n, P11627620551250182836.a n = A107395 n

end A107395

/-! ## A107395.P13767733504012029355

`A006857(n+1)/A006857(n)*A288876(n)`
-/

namespace A107395.P13767733504012029355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006857 (n + 1) : ℚ) / (A006857 n : ℚ) * (A288876 n : ℚ)

end

end A107395.P13767733504012029355

namespace A107395

/-- `A006857(n+1)/A006857(n)*A288876(n)` -/
def P13767733504012029355.Spec : Prop :=
  ∀ n, P13767733504012029355.a n = (A107395 n : ℚ)

end A107395

/-! ## A107395.P11441753559546808320

`A000332(n+5)²-A006542(n+5)`
-/

namespace A107395.P11441753559546808320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 5) ^ 2 - A006542 (n + 5)

end

end A107395.P11441753559546808320

namespace A107395

/-- `A000332(n+5)²-A006542(n+5)` -/
def P11441753559546808320.Spec : Prop :=
  ∀ n, P11441753559546808320.a n = A107395 n

end A107395

/-! ## A107395.P3501497120009986607

`A000332(n+6)*A000332(n+4)`
-/

namespace A107395.P3501497120009986607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 6) * A000332 (n + 4)

end

end A107395.P3501497120009986607

namespace A107395

/-- `A000332(n+6)*A000332(n+4)` -/
def P3501497120009986607.Spec : Prop :=
  ∀ n, P3501497120009986607.a n = A107395 n

theorem P3501497120009986607.correct : P3501497120009986607.Spec := by
  intro n
  simp only [A107395, Nat.add_sub_cancel, A107395.P3501497120009986607.a, A107395.P15826552923796524975.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107395

/-! ## A107395.P11376356425956122747

`Δ[A000389(n+4)]*Δ[A000389(n+6)]`
-/

namespace A107395.P11376356425956122747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A107395.P11376356425956122747

namespace A107395

/-- `Δ[A000389(n+4)]*Δ[A000389(n+6)]` -/
def P11376356425956122747.Spec : Prop :=
  ∀ n, P11376356425956122747.a n = A107395 n

theorem P11376356425956122747.correct : P11376356425956122747.Spec := by
  intro n
  simp only [A107395, Nat.add_sub_cancel, A107395.P11376356425956122747.f1, A107395.P11376356425956122747.f2, A107395.P11376356425956122747.a, A107395.P15826552923796524975.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107395

/-! ## A107395.P6252177374975585517

`A189976(2*(n+4))*A189976(2*(n+6))`
-/

namespace A107395.P6252177374975585517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (2 * (n + 4)) * A189976 (2 * (n + 6))

end

end A107395.P6252177374975585517

namespace A107395

/-- `A189976(2*(n+4))*A189976(2*(n+6))` -/
def P6252177374975585517.Spec : Prop :=
  ∀ n, P6252177374975585517.a n = A107395 n

end A107395

/-! ## A107395.P14026706366430975511

`A001303(n+1)+A288876(n+1)-A001249(n+1)`
-/

namespace A107395.P14026706366430975511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001303 (n + 1) + (A288876 (n + 1) - A001249 (n + 1))

end

end A107395.P14026706366430975511

namespace A107395

/-- `A001303(n+1)+A288876(n+1)-A001249(n+1)` -/
def P14026706366430975511.Spec : Prop :=
  ∀ n, P14026706366430975511.a n = A107395 n

end A107395

/-! ## A107395.P15708973147879837777

`A124051(∑[n+3]+n+3)`
-/

namespace A107395.P15708973147879837777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A107395.P15708973147879837777

namespace A107395

/-- `A124051(∑[n+3]+n+3)` -/
def P15708973147879837777.Spec : Prop :=
  ∀ n, P15708973147879837777.a n = A107395 n

end A107395

/-! ## A107395.P16851996224077122689

`A007318(A052905(n+2))*A007318(A052905(n+4))`
-/

namespace A107395.P16851996224077122689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A052905 (n + 2)).toNat * A007318 (A052905 (n + 4)).toNat

end

end A107395.P16851996224077122689

namespace A107395

/-- `A007318(A052905(n+2))*A007318(A052905(n+4))` -/
def P16851996224077122689.Spec : Prop :=
  ∀ n, P16851996224077122689.a n = A107395 n

end A107395

/-! ## A107395.P12955075947608359567

`A135278(A167614(n+2))*A135278(A167614(n+4))`
-/

namespace A107395.P12955075947608359567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (A167614 (n + 2)).toNat * A135278 (A167614 (n + 4)).toNat

end

end A107395.P12955075947608359567

namespace A107395

/-- `A135278(A167614(n+2))*A135278(A167614(n+4))` -/
def P12955075947608359567.Spec : Prop :=
  ∀ n, P12955075947608359567.a n = A107395 n

end A107395

/-!
# A107396: a(n) = binomial(n+5, 5) * binomial(n+7, 5).

The programs for A107396, the canonical program `A107396.P5709661729077554386` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107396 has offset 0).

The definition of A107396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*C(n+7, 5)` (program `A107396.P5709661729077554386`, by `A107396.P5709661729077554386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107396.P5709661729077554386

`C(n+5, 5)*C(n+7, 5)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107396

/-- `C(n+5, 5)*C(n+7, 5)` -/
def P5709661729077554386.Spec : Prop :=
  ∀ n, (P5709661729077554386.a n : ℤ) = A107396 n

theorem P5709661729077554386.correct : P5709661729077554386.Spec := by
  intro n
  simp only [A107396]

end A107396

/-! ## A107396.P12188816917565824463

`3*7*A133111(n+4)`
-/

namespace A107396.P12188816917565824463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (7 * A133111 (n + 4))

end

end A107396.P12188816917565824463

namespace A107396

/-- `3*7*A133111(n+4)` -/
def P12188816917565824463.Spec : Prop :=
  ∀ n, P12188816917565824463.a n = A107396 n

end A107396

/-! ## A107396.P2583052398041729628

`A000389(n+7)*A000389(n+5)`
-/

namespace A107396.P2583052398041729628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 7) * A000389 (n + 5)

end

end A107396.P2583052398041729628

namespace A107396

/-- `A000389(n+7)*A000389(n+5)` -/
def P2583052398041729628.Spec : Prop :=
  ∀ n, P2583052398041729628.a n = A107396 n

theorem P2583052398041729628.correct : P2583052398041729628.Spec := by
  intro n
  simp only [A107396, Nat.add_sub_cancel, A107396.P2583052398041729628.a, A107396.P5709661729077554386.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107396

/-! ## A107396.P10280201271384263294

`Δ[A000579(n+5)]*Δ[A000579(n+7)]`
-/

namespace A107396.P10280201271384263294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A107396.P10280201271384263294

namespace A107396

/-- `Δ[A000579(n+5)]*Δ[A000579(n+7)]` -/
def P10280201271384263294.Spec : Prop :=
  ∀ n, P10280201271384263294.a n = A107396 n

theorem P10280201271384263294.correct : P10280201271384263294.Spec := by
  intro n
  simp only [A107396, Nat.add_sub_cancel, A107396.P10280201271384263294.f1, A107396.P10280201271384263294.f2, A107396.P10280201271384263294.a, A107396.P5709661729077554386.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107396

/-! ## A107396.P3395719663690087831

`A074909(A167499(n+3))*A074909(A167499(n+5))`
-/

namespace A107396.P3395719663690087831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A167499 (n + 3)).toNat * A074909 (A167499 (n + 5)).toNat

end

end A107396.P3395719663690087831

namespace A107396

/-- `A074909(A167499(n+3))*A074909(A167499(n+5))` -/
def P3395719663690087831.Spec : Prop :=
  ∀ n, P3395719663690087831.a n = A107396 n

end A107396

/-! ## A107396.P1352494937408487417

`A213551(A000124(n+2))*A213551(A000124(n))`
-/

namespace A107396.P1352494937408487417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213551 (A000124 (n + 2)).toNat * A213551 (A000124 n).toNat

end

end A107396.P1352494937408487417

namespace A107396

/-- `A213551(A000124(n+2))*A213551(A000124(n))` -/
def P1352494937408487417.Spec : Prop :=
  ∀ n, P1352494937408487417.a n = A107396 n

end A107396

/-! ## A107396.P5492968977232958011

`A124051(eq[4, A025581(n)])`
-/

namespace A107396.P5492968977232958011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107396.P5492968977232958011

namespace A107396

/-- `A124051(eq[4, A025581(n)])` -/
def P5492968977232958011.Spec : Prop :=
  ∀ n, P5492968977232958011.a n = A107396 n

end A107396

/-! ## A107396.P7456574217954078861

`A007318(A055999(n+3))*A007318(A055999(n+5))`
-/

namespace A107396.P7456574217954078861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055999 (n + 3)).toNat * A007318 (A055999 (n + 5)).toNat

end

end A107396.P7456574217954078861

namespace A107396

/-- `A007318(A055999(n+3))*A007318(A055999(n+5))` -/
def P7456574217954078861.Spec : Prop :=
  ∀ n, P7456574217954078861.a n = A107396 n

end A107396

/-! ## A107396.P6214599911282196654

`A007318(A167499(n+4))*A007318(A167499(n+6))`
-/

namespace A107396.P6214599911282196654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 4)).toNat * A007318 (A167499 (n + 6)).toNat

end

end A107396.P6214599911282196654

namespace A107396

/-- `A007318(A167499(n+4))*A007318(A167499(n+6))` -/
def P6214599911282196654.Spec : Prop :=
  ∀ n, P6214599911282196654.a n = A107396 n

end A107396

/-! ## A107396.P11326645145784616892

`A007318(A077169(n+6))*A007318(A077169(n+8))`
-/

namespace A107396.P11326645145784616892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A077169 (n + 6)).toNat * A007318 (A077169 (n + 8)).toNat

end

end A107396.P11326645145784616892

namespace A107396

/-- `A007318(A077169(n+6))*A007318(A077169(n+8))` -/
def P11326645145784616892.Spec : Prop :=
  ∀ n, P11326645145784616892.a n = A107396 n

end A107396

/-!
# A107397: a(n) = binomial(n+6, 6) * binomial(n+8, 6).

The programs for A107397, the canonical program `A107397.P10837948692337916363` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107397 has offset 0).

The definition of A107397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*C(n+8, 6)` (program `A107397.P10837948692337916363`, by `A107397.P10837948692337916363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107397.P10837948692337916363

`C(n+6, 6)*C(n+8, 6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107397

/-- `C(n+6, 6)*C(n+8, 6)` -/
def P10837948692337916363.Spec : Prop :=
  ∀ n, (P10837948692337916363.a n : ℤ) = A107397 n

theorem P10837948692337916363.correct : P10837948692337916363.Spec := by
  intro n
  simp only [A107397]

end A107397

/-! ## A107397.P4454863706160992770

`28*A133355(n)`
-/

namespace A107397.P4454863706160992770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A133355 n

end

end A107397.P4454863706160992770

namespace A107397

/-- `28*A133355(n)` -/
def P4454863706160992770.Spec : Prop :=
  ∀ n, P4454863706160992770.a n = A107397 n

end A107397

/-! ## A107397.P6709541121827441078

`∑[2*(A107917(n+1)-A047819(n+1))]`
-/

namespace A107397.P6709541121827441078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A107917 (n + 1) - A047819 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107397.P6709541121827441078

namespace A107397

/-- `∑[2*(A107917(n+1)-A047819(n+1))]` -/
def P6709541121827441078.Spec : Prop :=
  ∀ n, P6709541121827441078.a n = A107397 n

end A107397

/-! ## A107397.P14240930763295356911

`A000579(n+6)*A000579(n+8)`
-/

namespace A107397.P14240930763295356911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A000579 (n + 8)

end

end A107397.P14240930763295356911

namespace A107397

/-- `A000579(n+6)*A000579(n+8)` -/
def P14240930763295356911.Spec : Prop :=
  ∀ n, P14240930763295356911.a n = A107397 n

theorem P14240930763295356911.correct : P14240930763295356911.Spec := by
  intro n
  simp only [A107397, Nat.add_sub_cancel, A107397.P14240930763295356911.a, A107397.P10837948692337916363.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107397

/-! ## A107397.P10684582736052335487

`Δ[A000580(n+8)]*A299338(2*n)`
-/

namespace A107397.P10684582736052335487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A299338 (2 * n)

end

end A107397.P10684582736052335487

namespace A107397

/-- `Δ[A000580(n+8)]*A299338(2*n)` -/
def P10684582736052335487.Spec : Prop :=
  ∀ n, P10684582736052335487.a n = A107397 n

end A107397

/-! ## A107397.P2136652728660674545

`A299338(2*n)*A299338(2*(n+2))`
-/

namespace A107397.P2136652728660674545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) * A299338 (2 * (n + 2))

end

end A107397.P2136652728660674545

namespace A107397

/-- `A299338(2*n)*A299338(2*(n+2))` -/
def P2136652728660674545.Spec : Prop :=
  ∀ n, P2136652728660674545.a n = A107397 n

end A107397

/-! ## A107397.P11589845045760087961

`A124051(Δ[A023551(n+1)])`
-/

namespace A107397.P11589845045760087961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (f1 (n + 1) - f1 n).toNat

end

end A107397.P11589845045760087961

namespace A107397

/-- `A124051(Δ[A023551(n+1)])` -/
def P11589845045760087961.Spec : Prop :=
  ∀ n, P11589845045760087961.a n = A107397 n

end A107397

/-! ## A107397.P12390243934991819553

`A062196(A000124(n+6)+5)`
-/

namespace A107397.P12390243934991819553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 (A000124 (n + 6) + 5).toNat

end

end A107397.P12390243934991819553

namespace A107397

/-- `A062196(A000124(n+6)+5)` -/
def P12390243934991819553.Spec : Prop :=
  ∀ n, P12390243934991819553.a n = A107397 n

end A107397

/-! ## A107397.P11121632264450759287

`A124051(A000217(n+6)-6)`
-/

namespace A107397.P11121632264450759287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (A000217 (n + 6) - 6).toNat

end

end A107397.P11121632264450759287

namespace A107397

/-- `A124051(A000217(n+6)-6)` -/
def P11121632264450759287.Spec : Prop :=
  ∀ n, P11121632264450759287.a n = A107397 n

end A107397

/-! ## A107397.P3778596653406355959

`A124051(2*n+A145018(n+5)+1)`
-/

namespace A107397.P3778596653406355959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 ((2 * n : ℤ) + (A145018 (n + 5) + 1)).toNat

end

end A107397.P3778596653406355959

namespace A107397

/-- `A124051(2*n+A145018(n+5)+1)` -/
def P3778596653406355959.Spec : Prop :=
  ∀ n, P3778596653406355959.a n = A107397 n

end A107397

/-!
# A107398: a(n) = binomial(n+7, 7) * binomial(n+9, 7).

The programs for A107398, the canonical program `A107398.P17545389668803684982` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107398 has offset 0).

The definition of A107398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*C(n+9, 7)` (program `A107398.P17545389668803684982`, by `A107398.P17545389668803684982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107398.P17545389668803684982

`C(n+7, 7)*C(n+9, 7)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107398

/-- `C(n+7, 7)*C(n+9, 7)` -/
def P17545389668803684982.Spec : Prop :=
  ∀ n, (P17545389668803684982.a n : ℤ) = A107398 n

theorem P17545389668803684982.correct : P17545389668803684982.Spec := by
  intro n
  simp only [A107398]

end A107398

/-! ## A107398.P4789973195941854657

`(A124090(n+7)+1)*Δ[A166813(n+1)]`
-/

namespace A107398.P4789973195941854657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124090 (n + 7) + 1) * (f1 (n + 1) - f1 n)

end

end A107398.P4789973195941854657

namespace A107398

/-- `(A124090(n+7)+1)*Δ[A166813(n+1)]` -/
def P4789973195941854657.Spec : Prop :=
  ∀ n, P4789973195941854657.a n = A107398 n

theorem P4789973195941854657.correct : P4789973195941854657.Spec := by
  intro n
  simp only [A107398, Nat.add_sub_cancel, A107398.P4789973195941854657.f1, A107398.P4789973195941854657.a, A107398.P17545389668803684982.a, A124090, A124090.P5259538866810562984.a, A166813, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107398

/-! ## A107398.P17569827296615934324

`A253947(n+6)/6*Δ[A166813(n+1)]`
-/

namespace A107398.P17569827296615934324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253947 (n + 6) : ℚ) / 6 * (f1 (n + 1) - f1 n : ℚ)

end

end A107398.P17569827296615934324

namespace A107398

/-- `A253947(n+6)/6*Δ[A166813(n+1)]` -/
def P17569827296615934324.Spec : Prop :=
  ∀ n, P17569827296615934324.a n = (A107398 n : ℚ)

theorem P17569827296615934324.correct : P17569827296615934324.Spec := by
  intro n
  simp only [A107398, Nat.add_sub_cancel, A107398.P17569827296615934324.f1, A107398.P17569827296615934324.a, A107398.P17545389668803684982.a, A166813, A166813.P1159037647007195774.a, A253947, A253947.P518104505896872323.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107398

/-! ## A107398.P11225537187830011334

`A104670(n)/∑[n+1]*Δ[A166813(n+1)]`
-/

namespace A107398.P11225537187830011334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104670 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (f2 (n + 1) - f2 n : ℚ)

end

end A107398.P11225537187830011334

namespace A107398

/-- `A104670(n)/∑[n+1]*Δ[A166813(n+1)]` -/
def P11225537187830011334.Spec : Prop :=
  ∀ n, P11225537187830011334.a n = (A107398 n : ℚ)

end A107398

/-! ## A107398.P14361242362824349615

`2/(n+2)*A052181(n)*Δ[A166813(n+1)]`
-/

namespace A107398.P14361242362824349615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A052181 n : ℚ) * (f1 (n + 1) - f1 n : ℚ)

end

end A107398.P14361242362824349615

namespace A107398

/-- `2/(n+2)*A052181(n)*Δ[A166813(n+1)]` -/
def P14361242362824349615.Spec : Prop :=
  ∀ n, P14361242362824349615.a n = (A107398 n : ℚ)

end A107398

/-! ## A107398.P6749718146537311955

`(A062990(n)-A062966(n))*Δ[A166813(n+1)]`
-/

namespace A107398.P6749718146537311955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062990 n - A062966 n) * (f1 (n + 1) - f1 n)

end

end A107398.P6749718146537311955

namespace A107398

/-- `(A062990(n)-A062966(n))*Δ[A166813(n+1)]` -/
def P6749718146537311955.Spec : Prop :=
  ∀ n, P6749718146537311955.a n = A107398 n

end A107398

/-! ## A107398.P15899080829876830046

`(A095671(n)-A095664(n))*Δ[A166813(n+1)]`
-/

namespace A107398.P15899080829876830046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095671 n - A095664 n) * (f1 (n + 1) - f1 n)

end

end A107398.P15899080829876830046

namespace A107398

/-- `(A095671(n)-A095664(n))*Δ[A166813(n+1)]` -/
def P15899080829876830046.Spec : Prop :=
  ∀ n, P15899080829876830046.a n = A107398 n

end A107398

/-! ## A107398.P11934568118076890000

`(A096946(n)-A095671(n))*Δ[A166813(n+1)]`
-/

namespace A107398.P11934568118076890000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A096946 n - A095671 n) * (f1 (n + 1) - f1 n)

end

end A107398.P11934568118076890000

namespace A107398

/-- `(A096946(n)-A095671(n))*Δ[A166813(n+1)]` -/
def P11934568118076890000.Spec : Prop :=
  ∀ n, P11934568118076890000.a n = A107398 n

end A107398

/-! ## A107398.P4068902053584374232

`(A097299(n)-A096946(n))*Δ[A166813(n+1)]`
-/

namespace A107398.P4068902053584374232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097299 n - A096946 n) * (f1 (n + 1) - f1 n)

end

end A107398.P4068902053584374232

namespace A107398

/-- `(A097299(n)-A096946(n))*Δ[A166813(n+1)]` -/
def P4068902053584374232.Spec : Prop :=
  ∀ n, P4068902053584374232.a n = A107398 n

end A107398

/-! ## A107398.P3996854569102777379

`(A064057(n)-A005720(n+2))*Δ[A166813(n+1)]`
-/

namespace A107398.P3996854569102777379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064057 n - A005720 (n + 2)) * (f1 (n + 1) - f1 n)

end

end A107398.P3996854569102777379

namespace A107398

/-- `(A064057(n)-A005720(n+2))*Δ[A166813(n+1)]` -/
def P3996854569102777379.Spec : Prop :=
  ∀ n, P3996854569102777379.a n = A107398 n

end A107398

/-! ## A107398.P10623693850642157938

`(A166813(n+2)-A166813(n+1))*A000580(n+7)`
-/

namespace A107398.P10623693850642157938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166813 (n + 2) - A166813 (n + 1)) * A000580 (n + 7)

end

end A107398.P10623693850642157938

namespace A107398

/-- `(A166813(n+2)-A166813(n+1))*A000580(n+7)` -/
def P10623693850642157938.Spec : Prop :=
  ∀ n, P10623693850642157938.a n = A107398 n

theorem P10623693850642157938.correct : P10623693850642157938.Spec := by
  intro n
  simp only [A107398, Nat.add_sub_cancel, A107398.P10623693850642157938.a, A107398.P17545389668803684982.a, A000580, A000580.P16667415707980948191.a, A166813, A166813.P1159037647007195774.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107398

/-! ## A107398.P9659639070019247266

`A000580(n+7)*A000580(n+9)`
-/

namespace A107398.P9659639070019247266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A000580 (n + 9)

end

end A107398.P9659639070019247266

namespace A107398

/-- `A000580(n+7)*A000580(n+9)` -/
def P9659639070019247266.Spec : Prop :=
  ∀ n, P9659639070019247266.a n = A107398 n

theorem P9659639070019247266.correct : P9659639070019247266.Spec := by
  intro n
  simp only [A107398, Nat.add_sub_cancel, A107398.P9659639070019247266.a, A107398.P17545389668803684982.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107398

/-! ## A107398.P13550846533946187860

`A124051(eq[6, A025581(n)])`
-/

namespace A107398.P13550846533946187860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107398.P13550846533946187860

namespace A107398

/-- `A124051(eq[6, A025581(n)])` -/
def P13550846533946187860.Spec : Prop :=
  ∀ n, P13550846533946187860.a n = A107398 n

end A107398

/-! ## A107398.P16964303686241856910

`A124051(A055999(n+4)-1)`
-/

namespace A107398.P16964303686241856910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (A055999 (n + 4) - 1).toNat

end

end A107398.P16964303686241856910

namespace A107398

/-- `A124051(A055999(n+4)-1)` -/
def P16964303686241856910.Spec : Prop :=
  ∀ n, P16964303686241856910.a n = A107398 n

end A107398

/-! ## A107398.P10632524285094249867

`A124051(A000217(n+7)-7)`
-/

namespace A107398.P10632524285094249867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (A000217 (n + 7) - 7).toNat

end

end A107398.P10632524285094249867

namespace A107398

/-- `A124051(A000217(n+7)-7)` -/
def P10632524285094249867.Spec : Prop :=
  ∀ n, P10632524285094249867.a n = A107398 n

end A107398

/-! ## A107398.P7119552023800215117

`A124051(Δ[A023551(n+2)]-1)`
-/

namespace A107398.P7119552023800215117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (f1 (n + 1) - f1 n - 1).toNat

end

end A107398.P7119552023800215117

namespace A107398

/-- `A124051(Δ[A023551(n+2)]-1)` -/
def P7119552023800215117.Spec : Prop :=
  ∀ n, P7119552023800215117.a n = A107398 n

end A107398

/-! ## A107398.P2722165772803495524

`A007318(A155212(n+4))*A007318(A155212(n+6))`
-/

namespace A107398.P2722165772803495524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A155212 (n + 4)).toNat * A007318 (A155212 (n + 6)).toNat

end

end A107398.P2722165772803495524

namespace A107398

/-- `A007318(A155212(n+4))*A007318(A155212(n+6))` -/
def P2722165772803495524.Spec : Prop :=
  ∀ n, P2722165772803495524.a n = A107398 n

end A107398

/-! ## A107398.P7697914702251257013

`A071919(A167487(n+7))*A071919(A167487(n+9))`
-/

namespace A107398.P7697914702251257013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A167487 (n + 7)).toNat * A071919 (A167487 (n + 9)).toNat

end

end A107398.P7697914702251257013

namespace A107398

/-- `A071919(A167487(n+7))*A071919(A167487(n+9))` -/
def P7697914702251257013.Spec : Prop :=
  ∀ n, P7697914702251257013.a n = A107398 n

end A107398

/-!
# A107399: a(n) = binomial(n+8,8)*binomial(n+10,8).

The programs for A107399, the canonical program `A107399.P2007823782330407369` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107399 has offset 0).

The definition of A107399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*C(n+10, 8)` (program `A107399.P2007823782330407369`, by `A107399.P2007823782330407369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107399.P2007823782330407369

`C(n+8, 8)*C(n+10, 8)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A107399

/-- `C(n+8, 8)*C(n+10, 8)` -/
def P2007823782330407369.Spec : Prop :=
  ∀ n, (P2007823782330407369.a n : ℤ) = A107399 n

theorem P2007823782330407369.correct : P2007823782330407369.Spec := by
  intro n
  simp only [A107399]

end A107399

/-! ## A107399.P10977148308976454446

`∑[45*A133348(n)]`
-/

namespace A107399.P10977148308976454446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  45 * A133348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107399.P10977148308976454446

namespace A107399

/-- `∑[45*A133348(n)]` -/
def P10977148308976454446.Spec : Prop :=
  ∀ n, P10977148308976454446.a n = A107399 n

end A107399

/-! ## A107399.P15814944579892048566

`A000581(n+8)*A000581(n+10)`
-/

namespace A107399.P15814944579892048566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A000581 (n + 10)

end

end A107399.P15814944579892048566

namespace A107399

/-- `A000581(n+8)*A000581(n+10)` -/
def P15814944579892048566.Spec : Prop :=
  ∀ n, P15814944579892048566.a n = A107399 n

theorem P15814944579892048566.correct : P15814944579892048566.Spec := by
  intro n
  simp only [A107399, Nat.add_sub_cancel, A107399.P15814944579892048566.a, A107399.P2007823782330407369.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A107399

/-! ## A107399.P14356971019605806523

`∑[A000580(n+7)]*Δ[A000582(n+10)]`
-/

namespace A107399.P14356971019605806523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A107399.P14356971019605806523

namespace A107399

/-- `∑[A000580(n+7)]*Δ[A000582(n+10)]` -/
def P14356971019605806523.Spec : Prop :=
  ∀ n, P14356971019605806523.a n = A107399 n

end A107399

/-! ## A107399.P1124726058283191708

`A140325(n+2)/A000079(n+1)²*A140325(n)`
-/

namespace A107399.P1124726058283191708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140325 (n + 2) : ℚ) / (A000079 (n + 1) ^ 2 : ℚ) * (A140325 n : ℚ)

end

end A107399.P1124726058283191708

namespace A107399

/-- `A140325(n+2)/A000079(n+1)²*A140325(n)` -/
def P1124726058283191708.Spec : Prop :=
  ∀ n, P1124726058283191708.a n = (A107399 n : ℚ)

end A107399

/-! ## A107399.P6151319813949355643

`A054142(A052905(n+2))*A054142(A052905(n+4))`
-/

namespace A107399.P6151319813949355643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A052905 (n + 2)).toNat * A054142 (A052905 (n + 4)).toNat

end

end A107399.P6151319813949355643

namespace A107399

/-- `A054142(A052905(n+2))*A054142(A052905(n+4))` -/
def P6151319813949355643.Spec : Prop :=
  ∀ n, P6151319813949355643.a n = A107399 n

end A107399

