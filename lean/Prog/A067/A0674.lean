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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A067401: Minimal non-uniquely factorizable OR-numbrals, i.e., numbrals that are not uniquely factorizable but for which all proper divisors are.

The programs for A067401, there is no canonical definition to state claims against.
-/

/-! ## A067401.P17960328171933426811

`∩[A155932(n+1), A235040(n)]`
-/

namespace A067401.P17960328171933426811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067401.P17960328171933426811

/-!
# A067402: Triangle with columns built from certain power sequences.

The programs for A067402, there is no canonical definition to state claims against.
-/

/-! ## A067402.P4668686577789661714

`A225240(A284308(n+1))`
-/

namespace A067402.P4668686577789661714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225240 (A284308 (n + 1)).toNat

end

end A067402.P4668686577789661714

/-! ## A067402.P1337067596410265572

`A065428(A108625(n)*A208615(n))`
-/

namespace A067402.P1337067596410265572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065428 (A108625 n * A208615 n).toNat

end

end A067402.P1337067596410265572

/-! ## A067402.P17240517416501708125

`A325404(A334029(n)+A008292(n+1))`
-/

namespace A067402.P17240517416501708125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (A334029 n + A008292 (n + 1)).toNat

end

end A067402.P17240517416501708125

/-! ## A067402.P4566089093973675631

`A029931(A008277(n+1)^A047120(n))`
-/

namespace A067402.P4566089093973675631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A008277 (n + 1) : ℚ) ^ (A047120 n : ℤ))).toNat

end

end A067402.P4566089093973675631

/-! ## A067402.P319118150813192964

`A029931(A008277(n+1)^A343097(n))`
-/

namespace A067402.P319118150813192964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A008277 (n + 1) : ℚ) ^ (A343097 n : ℤ))).toNat

end

end A067402.P319118150813192964

/-!
# A067403: Third column of triangle A067402.

The programs for A067403, the canonical program `A067403.P13813099559056693451` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067403 has offset 0).

The definition of A067403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067403.P12132422777078760067

`ogf((1-4x)/(1-9x))`
-/

namespace A067403.P12132422777078760067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -9] n

end

end A067403.P12132422777078760067

namespace A067403

/-- `ogf((1-4x)/(1-9x))` -/
def P12132422777078760067.Spec : Prop :=
  ∀ n, P12132422777078760067.a n = A067403 n

end A067403

/-! ## A067403.P13813099559056693451

`9*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067403

/-- `9*a(n-1)` -/
def P13813099559056693451.Spec : Prop :=
  ∀ n, (P13813099559056693451.a n : ℤ) = A067403 n

theorem P13813099559056693451.correct : P13813099559056693451.Spec := by
  intro n
  simp only [A067403]

end A067403

/-! ## A067403.P3415152906006704568

`ceil(5*9^(n-1))`
-/

namespace A067403.P3415152906006704568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067403.P3415152906006704568

namespace A067403

/-- `ceil(5*9^(n-1))` -/
def P3415152906006704568.Spec : Prop :=
  ∀ n, P3415152906006704568.a n = A067403 n

end A067403

/-! ## A067403.P3323456740718535519

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=5, a(2)=9`
-/

namespace A067403.P3323456740718535519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067403.P3323456740718535519

namespace A067403

/-- `abs(∏[-a(n-1)])` -/
def P3323456740718535519.Spec : Prop :=
  ∀ n, P3323456740718535519.a n = A067403 n

end A067403

/-! ## A067403.P18185611973460133592

`round(record[5*(-3)^(n-2)])`
-/

namespace A067403.P18185611973460133592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (-3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A067403.P18185611973460133592

namespace A067403

/-- `round(record[5*(-3)^(n-2)])` -/
def P18185611973460133592.Spec : Prop :=
  ∀ n, P18185611973460133592.a n = A067403 n

end A067403

/-! ## A067403.P3417802421851416469

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=5`
-/

namespace A067403.P3417802421851416469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A067403.P3417802421851416469

namespace A067403

/-- `a(n-1)/(1/3)²` -/
def P3417802421851416469.Spec : Prop :=
  ∀ n, P3417802421851416469.a n = (A067403 n : ℚ)

end A067403

/-! ## A067403.P7468700464717415353

`lcm(9^(n-1), a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A067403.P7468700464717415353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A067403.P7468700464717415353

namespace A067403

/-- `lcm(9^(n-1), a(n-1))` -/
def P7468700464717415353.Spec : Prop :=
  ∀ n, (P7468700464717415353.a n : ℤ) = A067403 n

end A067403

/-! ## A067403.P11866165445331177724

`record[A084244(n)]`
-/

namespace A067403.P11866165445331177724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067403.P11866165445331177724

namespace A067403

/-- `record[A084244(n)]` -/
def P11866165445331177724.Spec : Prop :=
  ∀ n, P11866165445331177724.a n = A067403 n

end A067403

/-! ## A067403.P17191917413517940550

`record[∏[Δ[A074067(n+1)]]]`
-/

namespace A067403.P17191917413517940550
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067403.P17191917413517940550

namespace A067403

/-- `record[∏[Δ[A074067(n+1)]]]` -/
def P17191917413517940550.Spec : Prop :=
  ∀ n, P17191917413517940550.a n = A067403 n

end A067403

/-! ## A067403.P13092279055683429775

`A084244(A004273(n))`
-/

namespace A067403.P13092279055683429775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084244 (A004273 n).toNat

end

end A067403.P13092279055683429775

namespace A067403

/-- `A084244(A004273(n))` -/
def P13092279055683429775.Spec : Prop :=
  ∀ n, P13092279055683429775.a n = A067403 n

end A067403

/-! ## A067403.P2683900908362202349

`A083658(A131098(n+1))`
-/

namespace A067403.P2683900908362202349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A131098 (n + 1)).toNat

end

end A067403.P2683900908362202349

namespace A067403

/-- `A083658(A131098(n+1))` -/
def P2683900908362202349.Spec : Prop :=
  ∀ n, P2683900908362202349.a n = A067403 n

end A067403

/-! ## A067403.P6218978051182080432

`A166465(A111284(n+1))`
-/

namespace A067403.P6218978051182080432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166465 (A111284 (n + 1)).toNat

end

end A067403.P6218978051182080432

namespace A067403

/-- `A166465(A111284(n+1))` -/
def P6218978051182080432.Spec : Prop :=
  ∀ n, P6218978051182080432.a n = A067403 n

end A067403

/-! ## A067403.P859642358971886145

`A091916(A101328(n+2))`
-/

namespace A067403.P859642358971886145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091916 (A101328 (n + 2)).toNat

end

end A067403.P859642358971886145

namespace A067403

/-- `A091916(A101328(n+2))` -/
def P859642358971886145.Spec : Prop :=
  ∀ n, P859642358971886145.a n = A067403 n

end A067403

/-! ## A067403.P16862373528983157633

`A083658(A004277(2*n)-1)`
-/

namespace A067403.P16862373528983157633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 (A004277 (2 * n) - 1).toNat

end

end A067403.P16862373528983157633

namespace A067403

/-- `A083658(A004277(2*n)-1)` -/
def P16862373528983157633.Spec : Prop :=
  ∀ n, P16862373528983157633.a n = A067403 n

end A067403

/-! ## A067403.P5961585323968201160

`A025192(n)²+A140429(n)²`
-/

namespace A067403.P5961585323968201160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n ^ 2 + A140429 n ^ 2

end

end A067403.P5961585323968201160

namespace A067403

/-- `A025192(n)²+A140429(n)²` -/
def P5961585323968201160.Spec : Prop :=
  ∀ n, P5961585323968201160.a n = A067403 n

end A067403

/-! ## A067403.P6710937947052262365

`A102518(n)+2*A140429(n)²`
-/

namespace A067403.P6710937947052262365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 n + 2 * A140429 n ^ 2

end

end A067403.P6710937947052262365

namespace A067403

/-- `A102518(n)+2*A140429(n)²` -/
def P6710937947052262365.Spec : Prop :=
  ∀ n, P6710937947052262365.a n = A067403 n

end A067403

/-! ## A067403.P3212785246446260023

`record[gcd(A166445(n), A166465(n+1))]`
-/

namespace A067403.P3212785246446260023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166445 n) (A166465 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067403.P3212785246446260023

namespace A067403

/-- `record[gcd(A166445(n), A166465(n+1))]` -/
def P3212785246446260023.Spec : Prop :=
  ∀ n, (P3212785246446260023.a n : ℤ) = A067403 n

end A067403

/-! ## A067403.P6338904946328774705

`A133494(n)²+Δ[A133494(n)]²`
-/

namespace A067403.P6338904946328774705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A067403.P6338904946328774705

namespace A067403

/-- `A133494(n)²+Δ[A133494(n)]²` -/
def P6338904946328774705.Spec : Prop :=
  ∀ n, P6338904946328774705.a n = A067403 n

end A067403

/-! ## A067403.P15043857587617270227

`A154992(2*n)+A094388(2*n)`
-/

namespace A067403.P15043857587617270227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (2 * n) + A094388 (2 * n)

end

end A067403.P15043857587617270227

namespace A067403

/-- `A154992(2*n)+A094388(2*n)` -/
def P15043857587617270227.Spec : Prop :=
  ∀ n, P15043857587617270227.a n = A067403 n

end A067403

/-!
# A067404: Fourth column of triangle A067402.

The programs for A067404, there is no canonical definition to state claims against.
-/

/-! ## A067404.P10992374552701151914

`ogf((1-9x)/(1-16x))`
-/

namespace A067404.P10992374552701151914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -9] [1, -16] n

end

end A067404.P10992374552701151914

/-! ## A067404.P8311508886741385650

`16*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A067404.P8311508886741385650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  16 * a (n - 1)

end

end A067404.P8311508886741385650

/-! ## A067404.P7127224222912408800

`ceil(7*(4^(n-1))²)`
-/

namespace A067404.P7127224222912408800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2⌉

end

end A067404.P7127224222912408800

/-! ## A067404.P6137247752302593571

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=16`
-/

namespace A067404.P6137247752302593571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 16] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067404.P6137247752302593571

/-! ## A067404.P8656741001788969599

`a(n-1)/(1/4)²` with `a(0)=1, a(1)=7`
-/

namespace A067404.P8656741001788969599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2

end

end A067404.P8656741001788969599

/-! ## A067404.P13098741953154425694

`A365062(4*n)`
-/

namespace A067404.P13098741953154425694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365062 (4 * n)

end

end A067404.P13098741953154425694

/-! ## A067404.P5090186076653106088

`ceil(2^(n-1))*A055274(n)`
-/

namespace A067404.P5090186076653106088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A055274 n

end

end A067404.P5090186076653106088

/-! ## A067404.P13587056707626293656

`record[and(floor(7*2^(n-2)), A056594(n))]`
-/

namespace A067404.P13587056707626293656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊7 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ (A056594 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067404.P13587056707626293656

/-! ## A067404.P8287806336192432341

`A125176(A131098(n+1))`
-/

namespace A067404.P8287806336192432341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (A131098 (n + 1)).toNat

end

end A067404.P8287806336192432341

/-! ## A067404.P5939716269203419037

`A196664(n)-A131577(2*n)²`
-/

namespace A067404.P5939716269203419037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196664 n - A131577 (2 * n) ^ 2

end

end A067404.P5939716269203419037

/-!
# A067405: Fifth column of triangle A067402.

The programs for A067405, there is no canonical definition to state claims against.
-/

/-! ## A067405.P3270820796940640864

`ogf((1-16x)/(1-25x))`
-/

namespace A067405.P3270820796940640864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -16] [1, -25] n

end

end A067405.P3270820796940640864

/-! ## A067405.P1061777079436769503

`25*a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A067405.P1061777079436769503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  25 * a (n - 1)

end

end A067405.P1061777079436769503

/-! ## A067405.P8565508825627986818

`ceil((3*5^(n-1))²)`
-/

namespace A067405.P8565508825627986818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2⌉

end

end A067405.P8565508825627986818

/-! ## A067405.P13168523021283433484

`∏[-a(n-1)]²` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A067405.P13168523021283433484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A067405.P13168523021283433484

/-! ## A067405.P6004022184002367678

`a(n-1)/(1/5)²` with `a(0)=1, a(1)=9`
-/

namespace A067405.P6004022184002367678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 2

end

end A067405.P6004022184002367678

/-! ## A067405.P2357525998551395559

`A005053(n)²`
-/

namespace A067405.P2357525998551395559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 n ^ 2

end

end A067405.P2357525998551395559

/-! ## A067405.P16986655278301918895

`A249512(2*n)²`
-/

namespace A067405.P16986655278301918895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249512 (2 * n) ^ 2

end

end A067405.P16986655278301918895

/-! ## A067405.P6206604866035601790

`round(A003948(n)/2)²`
-/

namespace A067405.P6206604866035601790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003948 n : ℚ) / 2) ^ 2

end

end A067405.P6206604866035601790

/-! ## A067405.P13636972579869752939

`(A131761(3*n+2)/2)²`
-/

namespace A067405.P13636972579869752939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A131761 (3 * n + 2) : ℚ) / 2) ^ 2

end

end A067405.P13636972579869752939

/-! ## A067405.P1245387957246777303

`A005517(A008486(n))²`
-/

namespace A067405.P1245387957246777303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A008486 n).toNat ^ 2

end

end A067405.P1245387957246777303

/-!
# A067406: Sixth column of triangle A067402.

The programs for A067406, there is no canonical definition to state claims against.
-/

/-! ## A067406.P3809331967828718768

`ogf((1-25x)/(1-36x))`
-/

namespace A067406.P3809331967828718768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -25] [1, -36] n

end

end A067406.P3809331967828718768

/-! ## A067406.P8674930027273426650

`36*a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A067406.P8674930027273426650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  36 * a (n - 1)

end

end A067406.P8674930027273426650

/-! ## A067406.P3595060226905992674

`ceil(11*36^(n-1))`
-/

namespace A067406.P3595060226905992674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 * (36 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067406.P3595060226905992674

/-! ## A067406.P6336836221780285202

`A067423(n)/A067416(n)*A067424(n)`
-/

namespace A067406.P6336836221780285202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067423 n : ℚ) / (A067416 n : ℚ) * (A067424 n : ℚ)

end

end A067406.P6336836221780285202

/-! ## A067406.P11912627054854170434

`A067402(eq[5, A002262(n)])`
-/

namespace A067406.P11912627054854170434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067406.P11912627054854170434

/-! ## A067406.P2699963448978479285

`A067402(eq[6, A002260(n+1)])`
-/

namespace A067406.P2699963448978479285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067406.P2699963448978479285

/-!
# A067407: Seventh column of triangle A067402.

The programs for A067407, there is no canonical definition to state claims against.
-/

/-! ## A067407.P2352008307898756381

`49*a(n-1)` with `a(0)=1, a(1)=13`
-/

namespace A067407.P2352008307898756381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  49 * a (n - 1)

end

end A067407.P2352008307898756381

/-! ## A067407.P13871626302343810806

`A067402(eq[6, A002262(n)])`
-/

namespace A067407.P13871626302343810806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067407.P13871626302343810806

/-! ## A067407.P16419886656792138044

`A067402(eq[64, A059268(n)])`
-/

namespace A067407.P16419886656792138044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067407.P16419886656792138044

/-! ## A067407.P13266224743054209958

`A067402(eq[6, A144328(n+1)])`
-/

namespace A067407.P13266224743054209958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067407.P13266224743054209958

/-! ## A067407.P10227078791548431939

`A067402(eq[7, A002260(n+1)])`
-/

namespace A067407.P10227078791548431939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067407.P10227078791548431939

/-!
# A067408: Eighth column of triangle A067402.

The programs for A067408, there is no canonical definition to state claims against.
-/

/-! ## A067408.P12625232658516258606

`64*a(n-1)` with `a(0)=1, a(1)=15`
-/

namespace A067408.P12625232658516258606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  64 * a (n - 1)

end

end A067408.P12625232658516258606

/-! ## A067408.P11917561669512035526

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=15, a(2)=64`
-/

namespace A067408.P11917561669512035526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 15, 64] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067408.P11917561669512035526

/-! ## A067408.P2441257357518676440

`A067412(n)*A103333(n)`
-/

namespace A067408.P2441257357518676440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067412 n * A103333 n

end

end A067408.P2441257357518676440

/-! ## A067408.P2701561337324199692

`A011782(n)²*A090411(n)`
-/

namespace A067408.P2701561337324199692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A090411 n

end

end A067408.P2701561337324199692

/-! ## A067408.P13360287742915495307

`floor(5*4^(n-1))*A134683(A130824(n))`
-/

namespace A067408.P13360287742915495307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A134683 (A130824 n).toNat

end

end A067408.P13360287742915495307

/-! ## A067408.P1480544513204875408

`A206917(A004277(2*n))-A206917(2*n)²`
-/

namespace A067408.P1480544513204875408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (A004277 (2 * n)).toNat - A206917 (2 * n) ^ 2

end

end A067408.P1480544513204875408

/-! ## A067408.P1558067464380495846

`A206917(A004275(2*n+1))-A206917(2*n)²`
-/

namespace A067408.P1558067464380495846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 (A004275 (2 * n + 1)).toNat - A206917 (2 * n) ^ 2

end

end A067408.P1558067464380495846

/-! ## A067408.P4346388908481908132

`A067402(eq[7, A002262(n)])`
-/

namespace A067408.P4346388908481908132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067408.P4346388908481908132

/-! ## A067408.P16463687301029380225

`A067402(eq[8, A002260(n+1)])`
-/

namespace A067408.P16463687301029380225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067408.P16463687301029380225

/-!
# A067409: Ninth column of triangle A067402.

The programs for A067409, there is no canonical definition to state claims against.
-/

/-! ## A067409.P3556498519430826883

`81*a(n-1)` with `a(0)=1, a(1)=17`
-/

namespace A067409.P3556498519430826883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n a =>
  81 * a (n - 1)

end

end A067409.P3556498519430826883

/-! ## A067409.P2011044606835738297

`a(n-1)/(1/3)²²` with `a(0)=1, a(1)=17`
-/

namespace A067409.P2011044606835738297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 1) / (((1 : ℚ) / 3) ^ 2) ^ 2

end

end A067409.P2011044606835738297

/-! ## A067409.P8937795162067688121

`A067402(eq[8, A002262(n)])`
-/

namespace A067409.P8937795162067688121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067409.P8937795162067688121

/-! ## A067409.P11358883486920835079

`A067402(eq[8, A144328(n+1)])`
-/

namespace A067409.P11358883486920835079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067409.P11358883486920835079

/-! ## A067409.P5097656502268083483

`A067402(eq[9, A002260(n+1)])`
-/

namespace A067409.P5097656502268083483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067409.P5097656502268083483

/-!
# A067411: Third column of triangle A067410 and second column of A067417.

The programs for A067411, the canonical program `A067411.P3091536163940359771` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067411 has offset 0).

The definition of A067411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067411.P17980215933823835252

`ogf((1-2x)/(1-6x))`
-/

namespace A067411.P17980215933823835252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6] n

end

end A067411.P17980215933823835252

namespace A067411

/-- `ogf((1-2x)/(1-6x))` -/
def P17980215933823835252.Spec : Prop :=
  ∀ n, P17980215933823835252.a n = A067411 n

end A067411

/-! ## A067411.P3091536163940359771

`6*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067411

/-- `6*a(n-1)` -/
def P3091536163940359771.Spec : Prop :=
  ∀ n, (P3091536163940359771.a n : ℤ) = A067411 n

theorem P3091536163940359771.correct : P3091536163940359771.Spec := by
  intro n
  simp only [A067411]

end A067411

/-! ## A067411.P14954992935487396269

`ceil(4*6^(n-1))`
-/

namespace A067411.P14954992935487396269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067411.P14954992935487396269

namespace A067411

/-- `ceil(4*6^(n-1))` -/
def P14954992935487396269.Spec : Prop :=
  ∀ n, P14954992935487396269.a n = A067411 n

end A067411

/-! ## A067411.P4180583202979844400

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A067411.P4180583202979844400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067411.P4180583202979844400

namespace A067411

/-- `abs(∏[-a(n-1)])` -/
def P4180583202979844400.Spec : Prop :=
  ∀ n, P4180583202979844400.a n = A067411 n

end A067411

/-! ## A067411.P15958295707392549727

`a(n-1)/(1-5/6)` with `a(0)=1, a(1)=4`
-/

namespace A067411.P15958295707392549727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A067411.P15958295707392549727

namespace A067411

/-- `a(n-1)/(1-5/6)` -/
def P15958295707392549727.Spec : Prop :=
  ∀ n, P15958295707392549727.a n = (A067411 n : ℚ)

end A067411

/-! ## A067411.P18342042852395005687

`a(n-1)+lcm(5, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A067411.P18342042852395005687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 1))

end

end A067411.P18342042852395005687

namespace A067411

/-- `a(n-1)+lcm(5, a(n-1))` -/
def P18342042852395005687.Spec : Prop :=
  ∀ n, (P18342042852395005687.a n : ℤ) = A067411 n

end A067411

/-! ## A067411.P14849050070581132130

`lcm(ceil(3^(n-1)), record[and(-3, 2^n)])`
-/

namespace A067411.P14849050070581132130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A067411.P14849050070581132130

namespace A067411

/-- `lcm(ceil(3^(n-1)), record[and(-3, 2^n)])` -/
def P14849050070581132130.Spec : Prop :=
  ∀ n, (P14849050070581132130.a n : ℤ) = A067411 n

end A067411

/-! ## A067411.P12238053634453108277

`A354541(3*n)`
-/

namespace A067411.P12238053634453108277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354541 (3 * n)

end

end A067411.P12238053634453108277

namespace A067411

/-- `A354541(3*n)` -/
def P12238053634453108277.Spec : Prop :=
  ∀ n, P12238053634453108277.a n = A067411 n

end A067411

/-! ## A067411.P6496163073577489953

`floor(A199317(n)/3)`
-/

namespace A067411.P6496163073577489953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199317 n : ℚ) / 3⌋

end

end A067411.P6496163073577489953

namespace A067411

/-- `floor(A199317(n)/3)` -/
def P6496163073577489953.Spec : Prop :=
  ∀ n, P6496163073577489953.a n = A067411 n

end A067411

/-! ## A067411.P4731844417731635702

`A084477(n+2)/2`
-/

namespace A067411.P4731844417731635702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084477 (n + 2) : ℚ) / 2

end

end A067411.P4731844417731635702

namespace A067411

/-- `A084477(n+2)/2` -/
def P4731844417731635702.Spec : Prop :=
  ∀ n, P4731844417731635702.a n = (A067411 n : ℚ)

end A067411

/-! ## A067411.P15854903186508018882

`lcm(2, A270576(n))/2`
-/

namespace A067411.P15854903186508018882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A270576 n) : ℚ) / 2

end

end A067411.P15854903186508018882

namespace A067411

/-- `lcm(2, A270576(n))/2` -/
def P15854903186508018882.Spec : Prop :=
  ∀ n, P15854903186508018882.a n = (A067411 n : ℚ)

end A067411

/-! ## A067411.P6370641172082047349

`2^n*A025192(n)`
-/

namespace A067411.P6370641172082047349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A025192 n

end

end A067411.P6370641172082047349

namespace A067411

/-- `2^n*A025192(n)` -/
def P6370641172082047349.Spec : Prop :=
  ∀ n, P6370641172082047349.a n = A067411 n

end A067411

/-! ## A067411.P7538160036795976409

`A100851(∑[n+2]-2)`
-/

namespace A067411.P7538160036795976409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A067411.P7538160036795976409

namespace A067411

/-- `A100851(∑[n+2]-2)` -/
def P7538160036795976409.Spec : Prop :=
  ∀ n, P7538160036795976409.a n = A067411 n

end A067411

/-! ## A067411.P16312142047882654103

`3^(n-1)*A198633(n)`
-/

namespace A067411.P16312142047882654103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A198633 n : ℚ)

end

end A067411.P16312142047882654103

namespace A067411

/-- `3^(n-1)*A198633(n)` -/
def P16312142047882654103.Spec : Prop :=
  ∀ n, P16312142047882654103.a n = (A067411 n : ℚ)

end A067411

/-! ## A067411.P975746124481563684

`2^(n-1)*A025579(n+2)`
-/

namespace A067411.P975746124481563684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A025579 (n + 2) : ℚ)

end

end A067411.P975746124481563684

namespace A067411

/-- `2^(n-1)*A025579(n+2)` -/
def P975746124481563684.Spec : Prop :=
  ∀ n, P975746124481563684.a n = (A067411 n : ℚ)

end A067411

/-! ## A067411.P10080649419052650129

`2^(n-2)*A026097(n+2)`
-/

namespace A067411.P10080649419052650129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A026097 (n + 2) : ℚ)

end

end A067411.P10080649419052650129

namespace A067411

/-- `2^(n-2)*A026097(n+2)` -/
def P10080649419052650129.Spec : Prop :=
  ∀ n, P10080649419052650129.a n = (A067411 n : ℚ)

end A067411

/-! ## A067411.P108791319333238150

`Δ[floor(3^(n-1))]*Δ[A000225(n)]`
-/

namespace A067411.P108791319333238150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A067411.P108791319333238150

namespace A067411

/-- `Δ[floor(3^(n-1))]*Δ[A000225(n)]` -/
def P108791319333238150.Spec : Prop :=
  ∀ n, P108791319333238150.a n = A067411 n

end A067411

/-! ## A067411.P11724774671641472480

`A084391(A008574(n))`
-/

namespace A067411.P11724774671641472480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084391 (A008574 n).toNat

end

end A067411.P11724774671641472480

namespace A067411

/-- `A084391(A008574(n))` -/
def P11724774671641472480.Spec : Prop :=
  ∀ n, P11724774671641472480.a n = A067411 n

end A067411

/-! ## A067411.P11333395517721023693

`A164532(A004277(n))`
-/

namespace A067411.P11333395517721023693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (A004277 n).toNat

end

end A067411.P11333395517721023693

namespace A067411

/-- `A164532(A004277(n))` -/
def P11333395517721023693.Spec : Prop :=
  ∀ n, P11333395517721023693.a n = A067411 n

end A067411

/-! ## A067411.P11501655751050316819

`A164532(A004275(n+1))`
-/

namespace A067411.P11501655751050316819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164532 (A004275 (n + 1)).toNat

end

end A067411.P11501655751050316819

namespace A067411

/-- `A164532(A004275(n+1))` -/
def P11501655751050316819.Spec : Prop :=
  ∀ n, P11501655751050316819.a n = A067411 n

end A067411

/-!
# A067412: Fourth column of triangle A067410.

The programs for A067412, the canonical program `A067412.P17209142355277420575` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067412 has offset 0).

The definition of A067412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067412.P4540763912940781640

`ogf((1-3x)/(1-8x))`
-/

namespace A067412.P4540763912940781640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -8] n

end

end A067412.P4540763912940781640

namespace A067412

/-- `ogf((1-3x)/(1-8x))` -/
def P4540763912940781640.Spec : Prop :=
  ∀ n, P4540763912940781640.a n = A067412 n

end A067412

/-! ## A067412.P17209142355277420575

`8*a(n-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067412

/-- `8*a(n-1)` -/
def P17209142355277420575.Spec : Prop :=
  ∀ n, (P17209142355277420575.a n : ℤ) = A067412 n

theorem P17209142355277420575.correct : P17209142355277420575.Spec := by
  intro n
  simp only [A067412]

end A067412

/-! ## A067412.P11867453610780690699

`ceil(5*8^(n-1))`
-/

namespace A067412.P11867453610780690699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067412.P11867453610780690699

namespace A067412

/-- `ceil(5*8^(n-1))` -/
def P11867453610780690699.Spec : Prop :=
  ∀ n, P11867453610780690699.a n = A067412 n

end A067412

/-! ## A067412.P8533520858746372736

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A067412.P8533520858746372736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067412.P8533520858746372736

namespace A067412

/-- `abs(∏[-a(n-1)])` -/
def P8533520858746372736.Spec : Prop :=
  ∀ n, P8533520858746372736.a n = A067412 n

end A067412

/-! ## A067412.P8406980237590569213

`a(n-1)/(1/2)^3` with `a(0)=1, a(1)=5`
-/

namespace A067412.P8406980237590569213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A067412.P8406980237590569213

namespace A067412

/-- `a(n-1)/(1/2)^3` -/
def P8406980237590569213.Spec : Prop :=
  ∀ n, P8406980237590569213.a n = (A067412 n : ℚ)

end A067412

/-! ## A067412.P1107987457170048845

`lcm(8^(n-1), a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A067412.P1107987457170048845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((8 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A067412.P1107987457170048845

namespace A067412

/-- `lcm(8^(n-1), a(n-1))` -/
def P1107987457170048845.Spec : Prop :=
  ∀ n, (P1107987457170048845.a n : ℤ) = A067412 n

end A067412

/-! ## A067412.P3223711102178487121

`a(n-1)/(1/3)²-a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A067412.P3223711102178487121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - a (n - 1)

end

end A067412.P3223711102178487121

namespace A067412

/-- `a(n-1)/(1/3)²-a(n-1)` -/
def P3223711102178487121.Spec : Prop :=
  ∀ n, P3223711102178487121.a n = (A067412 n : ℚ)

end A067412

/-! ## A067412.P5671621393002818474

`A257113(3*n+1)/2`
-/

namespace A067412.P5671621393002818474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257113 (3 * n + 1) : ℚ) / 2

end

end A067412.P5671621393002818474

namespace A067412

/-- `A257113(3*n+1)/2` -/
def P5671621393002818474.Spec : Prop :=
  ∀ n, P5671621393002818474.a n = (A067412 n : ℚ)

end A067412

/-! ## A067412.P6816664918394571725

`Δ[floor(2^(n-1))]*A003947(n)`
-/

namespace A067412.P6816664918394571725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003947 n

end

end A067412.P6816664918394571725

namespace A067412

/-- `Δ[floor(2^(n-1))]*A003947(n)` -/
def P6816664918394571725.Spec : Prop :=
  ∀ n, P6816664918394571725.a n = A067412 n

end A067412

/-! ## A067412.P2617014412226780648

`(4^n+floor(2^(n-1))²)*A011782(n)`
-/

namespace A067412.P2617014412226780648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2) * A011782 n

end

end A067412.P2617014412226780648

namespace A067412

/-- `(4^n+floor(2^(n-1))²)*A011782(n)` -/
def P2617014412226780648.Spec : Prop :=
  ∀ n, P2617014412226780648.a n = A067412 n

end A067412

/-! ## A067412.P4643583063143092198

`A333905(A101328(n+2))`
-/

namespace A067412.P4643583063143092198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (A101328 (n + 2)).toNat

end

end A067412.P4643583063143092198

namespace A067412

/-- `A333905(A101328(n+2))` -/
def P4643583063143092198.Spec : Prop :=
  ∀ n, P4643583063143092198.a n = A067412 n

end A067412

/-! ## A067412.P7384116088518704030

`A011782(n)²*A146523(n)`
-/

namespace A067412.P7384116088518704030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A146523 n

end

end A067412.P7384116088518704030

namespace A067412

/-- `A011782(n)²*A146523(n)` -/
def P7384116088518704030.Spec : Prop :=
  ∀ n, P7384116088518704030.a n = A067412 n

end A067412

/-! ## A067412.P5706401286884109075

`A084215(A004277(n)-1+n)`
-/

namespace A067412.P5706401286884109075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (A004277 n - 1 + (n : ℤ)).toNat

end

end A067412.P5706401286884109075

namespace A067412

/-- `A084215(A004277(n)-1+n)` -/
def P5706401286884109075.Spec : Prop :=
  ∀ n, P5706401286884109075.a n = A067412 n

end A067412

/-! ## A067412.P9596104891460868975

`A084215(n-(1-A004277(n)))`
-/

namespace A067412.P9596104891460868975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 ((n : ℤ) - (1 - A004277 n)).toNat

end

end A067412.P9596104891460868975

namespace A067412

/-- `A084215(n-(1-A004277(n)))` -/
def P9596104891460868975.Spec : Prop :=
  ∀ n, P9596104891460868975.a n = A067412 n

end A067412

/-! ## A067412.P2160278252560097198

`A003947(n)*A166444(n+1)`
-/

namespace A067412.P2160278252560097198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n * A166444 (n + 1)

end

end A067412.P2160278252560097198

namespace A067412

/-- `A003947(n)*A166444(n+1)` -/
def P2160278252560097198.Spec : Prop :=
  ∀ n, P2160278252560097198.a n = A067412 n

end A067412

/-! ## A067412.P3693211799930106634

`A084215(A004277(n)+n)/2`
-/

namespace A067412.P3693211799930106634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084215 (A004277 n + (n : ℤ)).toNat : ℚ) / 2

end

end A067412.P3693211799930106634

namespace A067412

/-- `A084215(A004277(n)+n)/2` -/
def P3693211799930106634.Spec : Prop :=
  ∀ n, P3693211799930106634.a n = (A067412 n : ℚ)

end A067412

/-! ## A067412.P12876463136630920150

`A011782(n)*A084215(2*n)`
-/

namespace A067412.P12876463136630920150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A084215 (2 * n)

end

end A067412.P12876463136630920150

namespace A067412

/-- `A011782(n)*A084215(2*n)` -/
def P12876463136630920150.Spec : Prop :=
  ∀ n, P12876463136630920150.a n = A067412 n

end A067412

/-! ## A067412.P8917131122337896020

`∩[A025623(n+1), A084215(n)]`
-/

namespace A067412.P8917131122337896020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067412.P8917131122337896020

namespace A067412

/-- `∩[A025623(n+1), A084215(n)]` -/
def P8917131122337896020.Spec : Prop :=
  ∀ n, (P8917131122337896020.a n : ℤ) = A067412 n

end A067412

/-! ## A067412.P12703092839114547226

`∩[A025623(n+1), A146523(n)]`
-/

namespace A067412.P12703092839114547226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067412.P12703092839114547226

namespace A067412

/-- `∩[A025623(n+1), A146523(n)]` -/
def P12703092839114547226.Spec : Prop :=
  ∀ n, (P12703092839114547226.a n : ℤ) = A067412 n

end A067412

/-! ## A067412.P6574524948417431964

`A003947(n)/A000079(n)*A081294(n)`
-/

namespace A067412.P6574524948417431964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003947 n : ℚ) / (A000079 n : ℚ) * (A081294 n : ℚ)

end

end A067412.P6574524948417431964

namespace A067412

/-- `A003947(n)/A000079(n)*A081294(n)` -/
def P6574524948417431964.Spec : Prop :=
  ∀ n, P6574524948417431964.a n = (A067412 n : ℚ)

end A067412

/-!
# A067413: Sixth column of triangle A067410.

The programs for A067413, there is no canonical definition to state claims against.
-/

/-! ## A067413.P14526530052242358934

`ogf((1-5x)/(1-12x))`
-/

namespace A067413.P14526530052242358934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -12] n

end

end A067413.P14526530052242358934

/-! ## A067413.P17636773301870228218

`12*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A067413.P17636773301870228218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  12 * a (n - 1)

end

end A067413.P17636773301870228218

/-! ## A067413.P4822629084695276598

`ceil(7*12^(n-1))`
-/

namespace A067413.P4822629084695276598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (12 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067413.P4822629084695276598

/-! ## A067413.P7567091633048213456

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=12`
-/

namespace A067413.P7567091633048213456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 12] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067413.P7567091633048213456

/-! ## A067413.P17201738362658265443

`a(n-1)+lcm(11, a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A067413.P17201738362658265443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + Nat.lcm 11 (a (n - 1))

end

end A067413.P17201738362658265443

/-! ## A067413.P3829708023283361685

`Δ[floor(2^(n-1))]*A003949(n)`
-/

namespace A067413.P3829708023283361685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003949 n

end

end A067413.P3829708023283361685

/-! ## A067413.P13062853106830885627

`floor(7*6^(n-1))*A011782(n)`
-/

namespace A067413.P13062853106830885627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A011782 n

end

end A067413.P13062853106830885627

/-! ## A067413.P537204523062602330

`record[lcm(ceil(2^(n-1)), A166481(n+1))]`
-/

namespace A067413.P537204523062602330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A166481 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067413.P537204523062602330

/-! ## A067413.P3093765447358494558

`A011782(n)²*A082541(n)`
-/

namespace A067413.P3093765447358494558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A082541 n

end

end A067413.P3093765447358494558

/-! ## A067413.P5966031894476075763

`A011782(n)²*A135765(A034856(n+1))`
-/

namespace A067413.P5966031894476075763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A135765 (A034856 (n + 1)).toNat

end

end A067413.P5966031894476075763

/-!
# A067414: Seventh column of triangle A067410.

The programs for A067414, there is no canonical definition to state claims against.
-/

/-! ## A067414.P11419878430910573966

`ogf((1-6x)/(1-14x))`
-/

namespace A067414.P11419878430910573966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -14] n

end

end A067414.P11419878430910573966

/-! ## A067414.P4145616563462792405

`14*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A067414.P4145616563462792405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  14 * a (n - 1)

end

end A067414.P4145616563462792405

/-! ## A067414.P11572370657094754524

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=14`
-/

namespace A067414.P11572370657094754524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 14] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067414.P11572370657094754524

/-! ## A067414.P16358275485248881095

`round(4*7^(n-1)*2^n)`
-/

namespace A067414.P16358275485248881095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (2 ^ n : ℚ)))

end

end A067414.P16358275485248881095

/-! ## A067414.P2986192414240649702

`a(n-1)+lcm(13, a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A067414.P2986192414240649702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + Nat.lcm 13 (a (n - 1))

end

end A067414.P2986192414240649702

/-! ## A067414.P577112326849591541

`ceil(2^(n-1))*A003950(n)`
-/

namespace A067414.P577112326849591541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A003950 n

end

end A067414.P577112326849591541

/-! ## A067414.P12453194177754452600

`A003950(n)*A011782(n)`
-/

namespace A067414.P12453194177754452600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 n * A011782 n

end

end A067414.P12453194177754452600

/-! ## A067414.P15387446275044624503

`A000079(n)*A270471(n)`
-/

namespace A067414.P15387446275044624503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A270471 n

end

end A067414.P15387446275044624503

/-! ## A067414.P4760065816003969219

`∑[A011782(n)]*A270471(n)`
-/

namespace A067414.P4760065816003969219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A270471 n

end

end A067414.P4760065816003969219

/-! ## A067414.P12607077718563894192

`A011782(n+1)*A270471(n)`
-/

namespace A067414.P12607077718563894192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A270471 n

end

end A067414.P12607077718563894192

/-!
# A067415: Eighth column of triangle A067410.

The programs for A067415, there is no canonical definition to state claims against.
-/

/-! ## A067415.P11661198994037275420

`ogf((1-7x)/(1-16x))`
-/

namespace A067415.P11661198994037275420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -16] n

end

end A067415.P11661198994037275420

/-! ## A067415.P9868699937462689534

`16*a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A067415.P9868699937462689534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  16 * a (n - 1)

end

end A067415.P9868699937462689534

/-! ## A067415.P3325293715981829917

`ceil(9*16^(n-1))`
-/

namespace A067415.P3325293715981829917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (16 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067415.P3325293715981829917

/-! ## A067415.P3700986088109061504

`(Δ[or(1, 4^n)]/4)²`
-/

namespace A067415.P3700986088109061504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 4) ^ 2

end

end A067415.P3700986088109061504

/-! ## A067415.P633229894749081612

`∏[-a(n-1)]²` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A067415.P633229894749081612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A067415.P633229894749081612

/-! ## A067415.P7777229274557528353

`a(n-1)/(1/4)²` with `a(0)=1, a(1)=9`
-/

namespace A067415.P7777229274557528353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2

end

end A067415.P7777229274557528353

/-! ## A067415.P1739257486242421418

`record[round(3*(-2)^(n-2))]²`
-/

namespace A067415.P1739257486242421418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A067415.P1739257486242421418

/-! ## A067415.P14577167203410270878

`A002001(n)²`
-/

namespace A067415.P14577167203410270878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n ^ 2

end

end A067415.P14577167203410270878

/-! ## A067415.P10286544499400109056

`A055841(2*n)`
-/

namespace A067415.P10286544499400109056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055841 (2 * n)

end

end A067415.P10286544499400109056

/-! ## A067415.P9081057603629305598

`∑[A055841(n)]²`
-/

namespace A067415.P9081057603629305598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A067415.P9081057603629305598

/-!
# A067416: Ninth column of triangle A067410.

The programs for A067416, there is no canonical definition to state claims against.
-/

/-! ## A067416.P3139791837600111072

`ogf((1-8x)/(1-18x))`
-/

namespace A067416.P3139791837600111072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -18] n

end

end A067416.P3139791837600111072

/-! ## A067416.P6100282273940590826

`18*a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A067416.P6100282273940590826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  18 * a (n - 1)

end

end A067416.P6100282273940590826

/-! ## A067416.P6690859821433918227

`floor(10*9^(n-1))*ceil(2^(n-1))`
-/

namespace A067416.P6690859821433918227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067416.P6690859821433918227

/-! ## A067416.P10601236093636835651

`lcm(9^(n-1), a(n-1))+a(n-1)/(1/3)²` with `a(0)=1`
-/

namespace A067416.P10601236093636835651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A067416.P10601236093636835651

/-! ## A067416.P6808688816708073197

`lcm(2^n, A067403(n))`
-/

namespace A067416.P6808688816708073197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A067403 n)

end

end A067416.P6808688816708073197

/-! ## A067416.P7048387570864747864

`lcm(A000079(n), A003952(n))`
-/

namespace A067416.P7048387570864747864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A003952 n)

end

end A067416.P7048387570864747864

/-! ## A067416.P10670382027869485264

`A067410(eq[8, A002262(n)])`
-/

namespace A067416.P10670382027869485264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067416.P10670382027869485264

/-! ## A067416.P4972103675933538860

`A067410(eq[8, A144328(n+1)])`
-/

namespace A067416.P4972103675933538860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067416.P4972103675933538860

/-!
# A067418: Triangle A067330 with rows read backwards.

The programs for A067418, there is no canonical definition to state claims against.
-/

/-! ## A067418.P3933143775822925124

`A067330(A061579(n))`
-/

namespace A067418.P3933143775822925124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A061579 n).toNat

end

end A067418.P3933143775822925124

/-! ## A067418.P8995247962405593310

`A067330(A114327(n)+n)`
-/

namespace A067418.P8995247962405593310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A114327 n + (n : ℤ)).toNat

end

end A067418.P8995247962405593310

/-! ## A067418.P713722073390913362

`A067330(A038722(n+1)-1)`
-/

namespace A067418.P713722073390913362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A038722 (n + 1) - 1).toNat

end

end A067418.P713722073390913362

/-! ## A067418.P143254186023314008

`A067330(A057428(n)+A038722(n+1))`
-/

namespace A067418.P143254186023314008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A057428 n + A038722 (n + 1)).toNat

end

end A067418.P143254186023314008

/-! ## A067418.P2644339508837774940

`A067330(A002378(n)%A014132(n+1))`
-/

namespace A067418.P2644339508837774940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A067418.P2644339508837774940

/-! ## A067418.P7492535458437068669

`A213777(comp[∑[n]]+1)-A213777(n+1)`
-/

namespace A067418.P7492535458437068669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A213777 (n + 1)

end

end A067418.P7492535458437068669

/-!
# A067419: Fourth column of triangle A067417.

The programs for A067419, the canonical program `A067419.P2287473286642241397` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067419 has offset 0).

The definition of A067419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067419.P2287473286642241397

`12*a(n-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067419

/-- `12*a(n-1)` -/
def P2287473286642241397.Spec : Prop :=
  ∀ n, (P2287473286642241397.a n : ℤ) = A067419 n

theorem P2287473286642241397.correct : P2287473286642241397.Spec := by
  intro n
  simp only [A067419]

end A067419

/-! ## A067419.P15293911491348045326

`ceil(12^n/2)`
-/

namespace A067419.P15293911491348045326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(12 ^ n : ℚ) / 2⌉

end

end A067419.P15293911491348045326

namespace A067419

/-- `ceil(12^n/2)` -/
def P15293911491348045326.Spec : Prop :=
  ∀ n, P15293911491348045326.a n = A067419 n

end A067419

/-! ## A067419.P8013172600696530488

`ogf((1-6x)/(1-12x))`
-/

namespace A067419.P8013172600696530488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12] n

end

end A067419.P8013172600696530488

namespace A067419

/-- `ogf((1-6x)/(1-12x))` -/
def P8013172600696530488.Spec : Prop :=
  ∀ n, P8013172600696530488.a n = A067419 n

end A067419

/-! ## A067419.P11274790620229131435

`lcm(2, 12^n)/2`
-/

namespace A067419.P11274790620229131435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (12 ^ n) : ℚ) / 2

end

end A067419.P11274790620229131435

namespace A067419

/-- `lcm(2, 12^n)/2` -/
def P11274790620229131435.Spec : Prop :=
  ∀ n, P11274790620229131435.a n = (A067419 n : ℚ)

end A067419

/-! ## A067419.P6028981439883952864

`2^floor(n*tanh(3))*6^n`
-/

namespace A067419.P6028981439883952864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℝ) * Real.tanh (3 : ℝ)⌋ : ℤ) * (6 ^ n : ℚ)

end

end A067419.P6028981439883952864

namespace A067419

/-- `2^floor(n*tanh(3))*6^n` -/
def P6028981439883952864.Spec : Prop :=
  ∀ n, P6028981439883952864.a n = (A067419 n : ℚ)

end A067419

/-! ## A067419.P15963645026142712380

`lcm(3^n, 2^comp[2*(n+1)])`
-/

namespace A067419.P15963645026142712380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 ^ n) (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A067419.P15963645026142712380

namespace A067419

/-- `lcm(3^n, 2^comp[2*(n+1)])` -/
def P15963645026142712380.Spec : Prop :=
  ∀ n, (P15963645026142712380.a n : ℤ) = A067419 n

end A067419

/-! ## A067419.P18273754388998874569

`floor(12^(floor(2/acot(n))/2)/2)`
-/

namespace A067419.P18273754388998874569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 : ℝ) ^ ((⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / 2 : ℝ) / 2⌋

end

end A067419.P18273754388998874569

namespace A067419

/-- `floor(12^(floor(2/acot(n))/2)/2)` -/
def P18273754388998874569.Spec : Prop :=
  ∀ n, P18273754388998874569.a n = A067419 n

end A067419

/-! ## A067419.P7216837924484165996

`Δ[floor(3^(n-1))]*record[round(3*(-2)^(n-2))]`
-/

namespace A067419.P7216837924484165996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A067419.P7216837924484165996

namespace A067419

/-- `Δ[floor(3^(n-1))]*record[round(3*(-2)^(n-2))]` -/
def P7216837924484165996.Spec : Prop :=
  ∀ n, P7216837924484165996.a n = A067419 n

end A067419

/-! ## A067419.P3853452252619994458

`floor(A178248(n)/2)`
-/

namespace A067419.P3853452252619994458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178248 n : ℚ) / 2⌋

end

end A067419.P3853452252619994458

namespace A067419

/-- `floor(A178248(n)/2)` -/
def P3853452252619994458.Spec : Prop :=
  ∀ n, P3853452252619994458.a n = A067419 n

end A067419

/-! ## A067419.P16953457694369621668

`3^n*A081294(n)`
-/

namespace A067419.P16953457694369621668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A081294 n

end

end A067419.P16953457694369621668

namespace A067419

/-- `3^n*A081294(n)` -/
def P16953457694369621668.Spec : Prop :=
  ∀ n, P16953457694369621668.a n = A067419 n

end A067419

/-!
# A067420: Fifth column of triangle A067417.

The programs for A067420, the canonical program `A067420.P16277033960324451470` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067420 has offset 0).

The definition of A067420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067420.P16277033960324451470

`15*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067420

/-- `15*a(n-1)` -/
def P16277033960324451470.Spec : Prop :=
  ∀ n, (P16277033960324451470.a n : ℤ) = A067420 n

theorem P16277033960324451470.correct : P16277033960324451470.Spec := by
  intro n
  simp only [A067420]

end A067420

/-! ## A067420.P7413049175353584391

`ogf((1-8x)/(1-15x))`
-/

namespace A067420.P7413049175353584391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -15] n

end

end A067420.P7413049175353584391

namespace A067420

/-- `ogf((1-8x)/(1-15x))` -/
def P7413049175353584391.Spec : Prop :=
  ∀ n, P7413049175353584391.a n = A067420 n

end A067420

/-! ## A067420.P14365785490316851045

`ceil(7*15^(n-1))`
-/

namespace A067420.P14365785490316851045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (15 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067420.P14365785490316851045

namespace A067420

/-- `ceil(7*15^(n-1))` -/
def P14365785490316851045.Spec : Prop :=
  ∀ n, P14365785490316851045.a n = A067420 n

end A067420

/-! ## A067420.P8829118572142847893

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=15`
-/

namespace A067420.P8829118572142847893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 15] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067420.P8829118572142847893

namespace A067420

/-- `abs(∏[-a(n-1)])` -/
def P8829118572142847893.Spec : Prop :=
  ∀ n, P8829118572142847893.a n = A067420 n

end A067420

/-! ## A067420.P16064353528771899779

`lcm(15^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A067420.P16064353528771899779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((15 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A067420.P16064353528771899779

namespace A067420

/-- `lcm(15^(n-1), a(n-1))` -/
def P16064353528771899779.Spec : Prop :=
  ∀ n, (P16064353528771899779.a n : ℤ) = A067420 n

end A067420

/-! ## A067420.P13462585634654865973

`A067417(eq[4, A002262(n)])`
-/

namespace A067420.P13462585634654865973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067420.P13462585634654865973

namespace A067420

/-- `A067417(eq[4, A002262(n)])` -/
def P13462585634654865973.Spec : Prop :=
  ∀ n, P13462585634654865973.a n = A067420 n

end A067420

/-! ## A067420.P12302075178009268829

`A067417(A167499(n+3)-1)`
-/

namespace A067420.P12302075178009268829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (A167499 (n + 3) - 1).toNat

end

end A067420.P12302075178009268829

namespace A067420

/-- `A067417(A167499(n+3)-1)` -/
def P12302075178009268829.Spec : Prop :=
  ∀ n, P12302075178009268829.a n = A067420 n

end A067420

/-! ## A067420.P15332512766229266737

`A067417(eq[2, A144328(n+1)-2])`
-/

namespace A067420.P15332512766229266737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067420.P15332512766229266737

namespace A067420

/-- `A067417(eq[2, A144328(n+1)-2])` -/
def P15332512766229266737.Spec : Prop :=
  ∀ n, P15332512766229266737.a n = A067420 n

end A067420

/-! ## A067420.P1514263873426406835

`A067417(eq[2, A144328(n+1)/2])`
-/

namespace A067420.P1514263873426406835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A067420.P1514263873426406835

namespace A067420

/-- `A067417(eq[2, A144328(n+1)/2])` -/
def P1514263873426406835.Spec : Prop :=
  ∀ n, P1514263873426406835.a n = A067420 n

end A067420

/-!
# A067421: Sixth column of triangle A067417.

The programs for A067421, the canonical program `A067421.P11459033084619437038` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067421 has offset 0).

The definition of A067421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067421.P11459033084619437038

`18*a(n-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067421

/-- `18*a(n-1)` -/
def P11459033084619437038.Spec : Prop :=
  ∀ n, (P11459033084619437038.a n : ℤ) = A067421 n

theorem P11459033084619437038.correct : P11459033084619437038.Spec := by
  intro n
  simp only [A067421]

end A067421

/-! ## A067421.P555643522025087738

`ogf((1-10x)/(1-18x))`
-/

namespace A067421.P555643522025087738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10] [1, -18] n

end

end A067421.P555643522025087738

namespace A067421

/-- `ogf((1-10x)/(1-18x))` -/
def P555643522025087738.Spec : Prop :=
  ∀ n, P555643522025087738.a n = A067421 n

end A067421

/-! ## A067421.P16256503984199911451

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=18`
-/

namespace A067421.P16256503984199911451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 18] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067421.P16256503984199911451

namespace A067421

/-- `abs(∏[-a(n-1)])` -/
def P16256503984199911451.Spec : Prop :=
  ∀ n, P16256503984199911451.a n = A067421 n

end A067421

/-! ## A067421.P17298158752748029723

`Δ[floor(3^(n-1))]²*2^n`
-/

namespace A067421.P17298158752748029723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (2 ^ n : ℤ)

end

end A067421.P17298158752748029723

namespace A067421

/-- `Δ[floor(3^(n-1))]²*2^n` -/
def P17298158752748029723.Spec : Prop :=
  ∀ n, P17298158752748029723.a n = A067421 n

end A067421

/-! ## A067421.P7491371173483144350

`abs(Δ[floor(3^(n-1))]*A067411(n))`
-/

namespace A067421.P7491371173483144350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A067411 n|

end

end A067421.P7491371173483144350

namespace A067421

/-- `abs(Δ[floor(3^(n-1))]*A067411(n))` -/
def P7491371173483144350.Spec : Prop :=
  ∀ n, P7491371173483144350.a n = A067421 n

end A067421

/-! ## A067421.P14328265842871249836

`abs(Δ[floor(9^(n-1))]*A011782(n))`
-/

namespace A067421.P14328265842871249836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A011782 n|

end

end A067421.P14328265842871249836

namespace A067421

/-- `abs(Δ[floor(9^(n-1))]*A011782(n))` -/
def P14328265842871249836.Spec : Prop :=
  ∀ n, P14328265842871249836.a n = A067421 n

end A067421

/-! ## A067421.P2570504820443871175

`lcm(A133494(n)², A270576(n))`
-/

namespace A067421.P2570504820443871175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133494 n ^ 2) (A270576 n)

end

end A067421.P2570504820443871175

namespace A067421

/-- `lcm(A133494(n)², A270576(n))` -/
def P2570504820443871175.Spec : Prop :=
  ∀ n, (P2570504820443871175.a n : ℤ) = A067421 n

end A067421

/-! ## A067421.P17111496909702807334

`record[A052156(n)*A077957(n)]`
-/

namespace A067421.P17111496909702807334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n * A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067421.P17111496909702807334

namespace A067421

/-- `record[A052156(n)*A077957(n)]` -/
def P17111496909702807334.Spec : Prop :=
  ∀ n, P17111496909702807334.a n = A067421 n

end A067421

/-! ## A067421.P4815215971770463377

`abs(A080923(2*n)*A123344(n))`
-/

namespace A067421.P4815215971770463377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080923 (2 * n) * A123344 n|

end

end A067421.P4815215971770463377

namespace A067421

/-- `abs(A080923(2*n)*A123344(n))` -/
def P4815215971770463377.Spec : Prop :=
  ∀ n, P4815215971770463377.a n = A067421 n

end A067421

/-! ## A067421.P5141184750874573184

`abs(A182522(2*n)²*A320770(2*n))`
-/

namespace A067421.P5141184750874573184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182522 (2 * n) ^ 2 * A320770 (2 * n)|

end

end A067421.P5141184750874573184

namespace A067421

/-- `abs(A182522(2*n)²*A320770(2*n))` -/
def P5141184750874573184.Spec : Prop :=
  ∀ n, P5141184750874573184.a n = A067421 n

end A067421

/-!
# A067422: Seventh column of triangle A067417.

The programs for A067422, the canonical program `A067422.P10911694884674045842` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067422 has offset 0).

The definition of A067422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067422.P10911694884674045842

`21*a(n-1)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067422

/-- `21*a(n-1)` -/
def P10911694884674045842.Spec : Prop :=
  ∀ n, (P10911694884674045842.a n : ℤ) = A067422 n

theorem P10911694884674045842.correct : P10911694884674045842.Spec := by
  intro n
  simp only [A067422]

end A067422

/-! ## A067422.P1540221187651785451

`ogf((1-12x)/(1-21x))`
-/

namespace A067422.P1540221187651785451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12] [1, -21] n

end

end A067422.P1540221187651785451

namespace A067422

/-- `ogf((1-12x)/(1-21x))` -/
def P1540221187651785451.Spec : Prop :=
  ∀ n, P1540221187651785451.a n = A067422 n

end A067422

/-! ## A067422.P7338894602282384732

`ceil(A285400(n)/2)`
-/

namespace A067422.P7338894602282384732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285400 n : ℚ) / 2⌉

end

end A067422.P7338894602282384732

namespace A067422

/-- `ceil(A285400(n)/2)` -/
def P7338894602282384732.Spec : Prop :=
  ∀ n, P7338894602282384732.a n = A067422 n

end A067422

/-! ## A067422.P8008294939921832953

`A285400(n)/A006530(A001316(n))`
-/

namespace A067422.P8008294939921832953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285400 n : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A067422.P8008294939921832953

namespace A067422

/-- `A285400(n)/A006530(A001316(n))` -/
def P8008294939921832953.Spec : Prop :=
  ∀ n, P8008294939921832953.a n = (A067422 n : ℚ)

end A067422

/-! ## A067422.P13529992458444503137

`A285400(n)/A006530(A131136(n))`
-/

namespace A067422.P13529992458444503137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285400 n : ℚ) / (A006530 (A131136 n).toNat : ℚ)

end

end A067422.P13529992458444503137

namespace A067422

/-- `A285400(n)/A006530(A131136(n))` -/
def P13529992458444503137.Spec : Prop :=
  ∀ n, P13529992458444503137.a n = (A067422 n : ℚ)

end A067422

/-! ## A067422.P5736873690406067403

`A285400(n)/A001221(A100484(n+1))`
-/

namespace A067422.P5736873690406067403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285400 n : ℚ) / (A001221 (A100484 (n + 1)).toNat : ℚ)

end

end A067422.P5736873690406067403

namespace A067422

/-- `A285400(n)/A001221(A100484(n+1))` -/
def P5736873690406067403.Spec : Prop :=
  ∀ n, P5736873690406067403.a n = (A067422 n : ℚ)

end A067422

/-!
# A067423: Eighth column of triangle A067417.

The programs for A067423, the canonical program `A067423.P8991997847526556743` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067423 has offset 0).

The definition of A067423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067423.P8991997847526556743

`24*a(n-1)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067423

/-- `24*a(n-1)` -/
def P8991997847526556743.Spec : Prop :=
  ∀ n, (P8991997847526556743.a n : ℤ) = A067423 n

theorem P8991997847526556743.correct : P8991997847526556743.Spec := by
  intro n
  simp only [A067423]

end A067423

/-! ## A067423.P12818943139073311906

`ogf((1-14x)/(1-24x))`
-/

namespace A067423.P12818943139073311906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -14] [1, -24] n

end

end A067423.P12818943139073311906

namespace A067423

/-- `ogf((1-14x)/(1-24x))` -/
def P12818943139073311906.Spec : Prop :=
  ∀ n, P12818943139073311906.a n = A067423 n

end A067423

/-! ## A067423.P1511791686928840230

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=10, a(2)=24`
-/

namespace A067423.P1511791686928840230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 24] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067423.P1511791686928840230

namespace A067423

/-- `abs(∏[-a(n-1)])` -/
def P1511791686928840230.Spec : Prop :=
  ∀ n, P1511791686928840230.a n = A067423 n

end A067423

/-! ## A067423.P10609244005300513839

`ceil(4^n/2)*A052934(n)`
-/

namespace A067423.P10609244005300513839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ * A052934 n

end

end A067423.P10609244005300513839

namespace A067423

/-- `ceil(4^n/2)*A052934(n)` -/
def P10609244005300513839.Spec : Prop :=
  ∀ n, P10609244005300513839.a n = A067423 n

end A067423

/-! ## A067423.P3491202596349485028

`A084215(3*n)*A133494(n)`
-/

namespace A067423.P3491202596349485028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (3 * n) * A133494 n

end

end A067423.P3491202596349485028

namespace A067423

/-- `A084215(3*n)*A133494(n)` -/
def P3491202596349485028.Spec : Prop :=
  ∀ n, P3491202596349485028.a n = A067423 n

end A067423

/-! ## A067423.P3359042004316947329

`lcm(A052934(n), A084215(3*n))`
-/

namespace A067423.P3359042004316947329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052934 n) (A084215 (3 * n))

end

end A067423.P3359042004316947329

namespace A067423

/-- `lcm(A052934(n), A084215(3*n))` -/
def P3359042004316947329.Spec : Prop :=
  ∀ n, (P3359042004316947329.a n : ℤ) = A067423 n

end A067423

/-! ## A067423.P17606995626494013533

`A067412(n)/A067411(n)*A067421(n)`
-/

namespace A067423.P17606995626494013533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067412 n : ℚ) / (A067411 n : ℚ) * (A067421 n : ℚ)

end

end A067423.P17606995626494013533

namespace A067423

/-- `A067412(n)/A067411(n)*A067421(n)` -/
def P17606995626494013533.Spec : Prop :=
  ∀ n, P17606995626494013533.a n = (A067423 n : ℚ)

end A067423

/-!
# A067424: Ninth column of triangle A067417.

The programs for A067424, there is no canonical definition to state claims against.
-/

/-! ## A067424.P10596815890028531353

`ogf((1-16x)/(1-27x))`
-/

namespace A067424.P10596815890028531353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -16] [1, -27] n

end

end A067424.P10596815890028531353

/-! ## A067424.P2476047041466685828

`27*a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A067424.P2476047041466685828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  27 * a (n - 1)

end

end A067424.P2476047041466685828

/-! ## A067424.P9685112433243052744

`A067417(A056126(n)+44)`
-/

namespace A067424.P9685112433243052744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (A056126 n + 44).toNat

end

end A067424.P9685112433243052744

/-! ## A067424.P1888267680431159803

`A067417(eq[8, A002262(n)])`
-/

namespace A067424.P1888267680431159803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067424.P1888267680431159803

/-! ## A067424.P3146431443506855458

`A067417(eq[8, A144328(n+1)])`
-/

namespace A067424.P3146431443506855458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067424.P3146431443506855458

/-! ## A067424.P6279823755702441661

`A067417(eq[9, A002260(n+1)])`
-/

namespace A067424.P6279823755702441661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067424.P6279823755702441661

/-!
# A067426: Sixth column of triangle A067425.

The programs for A067426, the canonical program `A067426.P13256715690506206717` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067426 has offset 0).

The definition of A067426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067426.P13256715690506206717

`ceil(9*24^(n-1))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067426

/-- `ceil(9*24^(n-1))` -/
def P13256715690506206717.Spec : Prop :=
  ∀ n, P13256715690506206717.a n = A067426 n

theorem P13256715690506206717.correct : P13256715690506206717.Spec := by
  intro n
  simp only [A067426]

end A067426

/-! ## A067426.P3223476168913381744

`ogf((1-15x)/(1-24x))`
-/

namespace A067426.P3223476168913381744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -15] [1, -24] n

end

end A067426.P3223476168913381744

namespace A067426

/-- `ogf((1-15x)/(1-24x))` -/
def P3223476168913381744.Spec : Prop :=
  ∀ n, P3223476168913381744.a n = A067426 n

end A067426

/-! ## A067426.P12822993503495792645

`24*a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A067426.P12822993503495792645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  24 * a (n - 1)

end

end A067426.P12822993503495792645

namespace A067426

/-- `24*a(n-1)` -/
def P12822993503495792645.Spec : Prop :=
  ∀ n, (P12822993503495792645.a n : ℤ) = A067426 n

end A067426

/-! ## A067426.P6455899848569130503

`3^n*A122391(3*n)`
-/

namespace A067426.P6455899848569130503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A122391 (3 * n)

end

end A067426.P6455899848569130503

namespace A067426

/-- `3^n*A122391(3*n)` -/
def P6455899848569130503.Spec : Prop :=
  ∀ n, P6455899848569130503.a n = A067426 n

end A067426

/-! ## A067426.P4945708810457347271

`A076505(round(sqrt(n²+1))+n+n)`
-/

namespace A067426.P4945708810457347271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (n : ℤ) + (n : ℤ)).toNat

end

end A067426.P4945708810457347271

namespace A067426

/-- `A076505(round(sqrt(n²+1))+n+n)` -/
def P4945708810457347271.Spec : Prop :=
  ∀ n, P4945708810457347271.a n = A067426 n

end A067426

/-! ## A067426.P7792179196065505564

`A000244(n)*A103333(n)`
-/

namespace A067426.P7792179196065505564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A103333 n

end

end A067426.P7792179196065505564

namespace A067426

/-- `A000244(n)*A103333(n)` -/
def P7792179196065505564.Spec : Prop :=
  ∀ n, P7792179196065505564.a n = A067426 n

end A067426

/-! ## A067426.P10385683246162657699

`record[gcd(A076505(n+1), A131667(n+1))]`
-/

namespace A067426.P10385683246162657699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076505 (n + 1)) (A131667 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067426.P10385683246162657699

namespace A067426

/-- `record[gcd(A076505(n+1), A131667(n+1))]` -/
def P10385683246162657699.Spec : Prop :=
  ∀ n, (P10385683246162657699.a n : ℤ) = A067426 n

end A067426

/-! ## A067426.P933475500244141707

`A067419(n)/A067411(n)*A067419(n)`
-/

namespace A067426.P933475500244141707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067419 n : ℚ) / (A067411 n : ℚ) * (A067419 n : ℚ)

end

end A067426.P933475500244141707

namespace A067426

/-- `A067419(n)/A067411(n)*A067419(n)` -/
def P933475500244141707.Spec : Prop :=
  ∀ n, P933475500244141707.a n = (A067426 n : ℚ)

end A067426

/-! ## A067426.P11588060292397214180

`lcm(A000244(n)*A003945(n), A003951(n))`
-/

namespace A067426.P11588060292397214180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n * A003945 n) (A003951 n)

end

end A067426.P11588060292397214180

namespace A067426

/-- `lcm(A000244(n)*A003945(n), A003951(n))` -/
def P11588060292397214180.Spec : Prop :=
  ∀ n, (P11588060292397214180.a n : ℤ) = A067426 n

end A067426

/-! ## A067426.P8216835004901942470

`(A002001(n)/A000079(n))²*A067411(n)`
-/

namespace A067426.P8216835004901942470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002001 n : ℚ) / (A000079 n : ℚ)) ^ 2 * (A067411 n : ℚ)

end

end A067426.P8216835004901942470

namespace A067426

/-- `(A002001(n)/A000079(n))²*A067411(n)` -/
def P8216835004901942470.Spec : Prop :=
  ∀ n, P8216835004901942470.a n = (A067426 n : ℚ)

end A067426

/-!
# A067427: Seventh column of triangle A067425.

The programs for A067427, there is no canonical definition to state claims against.
-/

/-! ## A067427.P3168660499967303629

`ogf((1-18x)/(1-28x))`
-/

namespace A067427.P3168660499967303629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -18] [1, -28] n

end

end A067427.P3168660499967303629

/-! ## A067427.P3259510904559303885

`28*a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A067427.P3259510904559303885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  28 * a (n - 1)

end

end A067427.P3259510904559303885

/-! ## A067427.P2286505589579583745

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=10, a(2)=28`
-/

namespace A067427.P2286505589579583745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 28] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A067427.P2286505589579583745

/-! ## A067427.P10652794583715713768

`record[A084633(n)]*A196661(n)`
-/

namespace A067427.P10652794583715713768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A196661 n

end

end A067427.P10652794583715713768

/-! ## A067427.P18235235062858760016

`A011782(2*n)*A196661(n)`
-/

namespace A067427.P18235235062858760016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A196661 n

end

end A067427.P18235235062858760016

/-! ## A067427.P5591771928823381448

`A084633(2*n)*A196661(n)`
-/

namespace A067427.P5591771928823381448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084633 (2 * n) * A196661 n

end

end A067427.P5591771928823381448

/-! ## A067427.P15224205545180208097

`A067425(eq[6, A002262(n)])`
-/

namespace A067427.P15224205545180208097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067427.P15224205545180208097

/-! ## A067427.P12789150810832823824

`A067425(eq[7, A002260(n+1)])`
-/

namespace A067427.P12789150810832823824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067427.P12789150810832823824

/-!
# A067428: Eighth column of triangle A067425.

The programs for A067428, there is no canonical definition to state claims against.
-/

/-! ## A067428.P6118509406078962336

`ogf((1-21x)/(1-32x))`
-/

namespace A067428.P6118509406078962336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -21] [1, -32] n

end

end A067428.P6118509406078962336

/-! ## A067428.P12555277522379468877

`32*a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A067428.P12555277522379468877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  32 * a (n - 1)

end

end A067428.P12555277522379468877

/-! ## A067428.P14229437754279533757

`ceil(11*16^(n-1)*A011782(n))`
-/

namespace A067428.P14229437754279533757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 * (16 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A011782 n : ℚ)⌉

end

end A067428.P14229437754279533757

/-! ## A067428.P16374986240107691721

`ceil(11*16^(n-1)*Δ[A094373(n)])`
-/

namespace A067428.P16374986240107691721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 * (16 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (n + 1) - f1 n : ℚ)⌉

end

end A067428.P16374986240107691721

/-! ## A067428.P12756660925599662495

`A011782(n)*A196664(n)`
-/

namespace A067428.P12756660925599662495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A196664 n

end

end A067428.P12756660925599662495

/-! ## A067428.P9154946542626858067

`∑[A034008(n)]*A196664(n)`
-/

namespace A067428.P9154946542626858067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A196664 n

end

end A067428.P9154946542626858067

/-! ## A067428.P6570395320068500120

`Δ[A131577(n)]*A196664(n)`
-/

namespace A067428.P6570395320068500120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A196664 n

end

end A067428.P6570395320068500120

/-! ## A067428.P16067426432185000619

`A131577(A028310(n))*A196664(n)`
-/

namespace A067428.P16067426432185000619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A028310 n).toNat * A196664 n

end

end A067428.P16067426432185000619

/-! ## A067428.P18136171448293790218

`gcd(A196662(n), A196664(n))*A196664(n)`
-/

namespace A067428.P18136171448293790218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A196662 n) (A196664 n) : ℤ) * A196664 n

end

end A067428.P18136171448293790218

/-! ## A067428.P13983885124813002185

`A067425(eq[7, A002262(n)])`
-/

namespace A067428.P13983885124813002185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067425 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067428.P13983885124813002185

/-!
# A067429: Ninth column of triangle A067425.

The programs for A067429, there is no canonical definition to state claims against.
-/

/-! ## A067429.P11898731851732682518

`ceil(36^n/3)`
-/

namespace A067429.P11898731851732682518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(36 ^ n : ℚ) / 3⌉

end

end A067429.P11898731851732682518

/-! ## A067429.P14871671495012587669

`ogf((1-24x)/(1-36x))`
-/

namespace A067429.P14871671495012587669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -24] [1, -36] n

end

end A067429.P14871671495012587669

/-! ## A067429.P6876048976954706192

`36*a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A067429.P6876048976954706192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  36 * a (n - 1)

end

end A067429.P6876048976954706192

/-! ## A067429.P700264497410881386

`lcm(3, (6^n)²)/3`
-/

namespace A067429.P700264497410881386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 ((6 ^ n) ^ 2) : ℚ) / 3

end

end A067429.P700264497410881386

/-! ## A067429.P6689169591822925633

`round(lcm(2, 36^n)/3)`
-/

namespace A067429.P6689169591822925633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (36 ^ n) : ℚ) / 3)

end

end A067429.P6689169591822925633

/-! ## A067429.P18335908756993087421

`(6^n)²/gcd(3, 6^n)`
-/

namespace A067429.P18335908756993087421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n) ^ 2 : ℚ) / (Nat.gcd 3 (6 ^ n) : ℚ)

end

end A067429.P18335908756993087421

/-! ## A067429.P15678149096421727082

`a(n-1)/(2/12)²` with `a(0)=1, a(1)=12`
-/

namespace A067429.P15678149096421727082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 12] fun n a =>
  a (n - 1) / ((2 : ℚ) / 12) ^ 2

end

end A067429.P15678149096421727082

/-! ## A067429.P18171507456704234582

`A167747(2*n)`
-/

namespace A067429.P18171507456704234582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167747 (2 * n)

end

end A067429.P18171507456704234582

/-! ## A067429.P6735088698082339384

`A084391(A133655(n))`
-/

namespace A067429.P6735088698082339384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084391 (A133655 n).toNat

end

end A067429.P6735088698082339384

/-! ## A067429.P10805496965867555514

`A354541(A101328(n+2))`
-/

namespace A067429.P10805496965867555514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354541 (A101328 (n + 2)).toNat

end

end A067429.P10805496965867555514

/-!
# A067430: Convolution of Fibonacci F(n+1), n>=0, with F(n+7), n>=0.

The programs for A067430, the canonical program `A067430.P16408898910722994529` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067430 has offset 0).

The definition of A067430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067430.P16408898910722994529

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=13, a(1)=34, a(2)=81, a(3)=170`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067430

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P16408898910722994529.Spec : Prop :=
  ∀ n, P16408898910722994529.a n = A067430 n

theorem P16408898910722994529.correct : P16408898910722994529.Spec := by
  intro n
  simp only [A067430]

end A067430

/-! ## A067430.P166877947830753283

`((47*n+65)*A000045(n+1)+29*(n+1)*A000045(n))/5`
-/

namespace A067430.P166877947830753283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((47 * n + 65 : ℤ) * A000045 (n + 1) + (29 * (n + 1) : ℤ) * A000045 n : ℚ) / 5

end

end A067430.P166877947830753283

namespace A067430

/-- `((47*n+65)*A000045(n+1)+29*(n+1)*A000045(n))/5` -/
def P166877947830753283.Spec : Prop :=
  ∀ n, P166877947830753283.a n = (A067430 n : ℚ)

end A067430

/-! ## A067430.P5813376741607510409

`A067334(n)+A067333(n)`
-/

namespace A067430.P5813376741607510409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067334 n + A067333 n

end

end A067430.P5813376741607510409

namespace A067430

/-- `A067334(n)+A067333(n)` -/
def P5813376741607510409.Spec : Prop :=
  ∀ n, P5813376741607510409.a n = A067430 n

end A067430

/-! ## A067430.P16387596240856755630

`A067332(n)+2*A067333(n)`
-/

namespace A067430.P16387596240856755630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067332 n + 2 * A067333 n

end

end A067430.P16387596240856755630

namespace A067430

/-- `A067332(n)+2*A067333(n)` -/
def P16387596240856755630.Spec : Prop :=
  ∀ n, P16387596240856755630.a n = A067430 n

end A067430

/-! ## A067430.P16645025411333803856

`A067331(n)+A067334(n)+A067332(n)`
-/

namespace A067430.P16645025411333803856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n + (A067334 n + A067332 n)

end

end A067430.P16645025411333803856

namespace A067430

/-- `A067331(n)+A067334(n)+A067332(n)` -/
def P16645025411333803856.Spec : Prop :=
  ∀ n, P16645025411333803856.a n = A067430 n

end A067430

/-! ## A067430.P32088888958433836

`A067431(n)-A067334(n)`
-/

namespace A067430.P32088888958433836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n - A067334 n

end

end A067430.P32088888958433836

namespace A067430

/-- `A067431(n)-A067334(n)` -/
def P32088888958433836.Spec : Prop :=
  ∀ n, P32088888958433836.a n = A067430 n

theorem P32088888958433836.correct : P32088888958433836.Spec := by
  intro n
  simp only [A067430, Nat.add_sub_cancel, A067430.P32088888958433836.a, A067430.P16408898910722994529.a, A067334, A067334.P13359382140778625802.a, A067431, A067431.P8250582183486252664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067430

/-! ## A067430.P2304683602699692221

`2*A067334(n)-A067332(n)`
-/

namespace A067430.P2304683602699692221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067334 n - A067332 n

end

end A067430.P2304683602699692221

namespace A067430

/-- `2*A067334(n)-A067332(n)` -/
def P2304683602699692221.Spec : Prop :=
  ∀ n, P2304683602699692221.a n = A067430 n

end A067430

/-! ## A067430.P2165687124441219689

`A067977(n)-A067431(n)`
-/

namespace A067430.P2165687124441219689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067977 n - A067431 n

end

end A067430.P2165687124441219689

namespace A067430

/-- `A067977(n)-A067431(n)` -/
def P2165687124441219689.Spec : Prop :=
  ∀ n, P2165687124441219689.a n = A067430 n

theorem P2165687124441219689.correct : P2165687124441219689.Spec := by
  intro n
  simp only [A067430, Nat.add_sub_cancel, A067430.P2165687124441219689.a, A067430.P16408898910722994529.a, A067431, A067431.P8250582183486252664.a, A067977, A067977.P5847705129826826634.a, A067334, A067334.P13359382140778625802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067430

/-! ## A067430.P6943526265817761779

`(A067431(n)+A067333(n))/2`
-/

namespace A067430.P6943526265817761779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067431 n + A067333 n : ℚ) / 2

end

end A067430.P6943526265817761779

namespace A067430

/-- `(A067431(n)+A067333(n))/2` -/
def P6943526265817761779.Spec : Prop :=
  ∀ n, P6943526265817761779.a n = (A067430 n : ℚ)

end A067430

/-! ## A067430.P2791886120373600482

`(A067977(n)-A067334(n))/2`
-/

namespace A067430.P2791886120373600482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067977 n - A067334 n : ℚ) / 2

end

end A067430.P2791886120373600482

namespace A067430

/-- `(A067977(n)-A067334(n))/2` -/
def P2791886120373600482.Spec : Prop :=
  ∀ n, P2791886120373600482.a n = (A067430 n : ℚ)

theorem P2791886120373600482.correct : P2791886120373600482.Spec := by
  intro n
  simp only [A067430, Nat.add_sub_cancel, A067430.P2791886120373600482.a, A067430.P16408898910722994529.a, A067334, A067334.P13359382140778625802.a, A067977, A067977.P5847705129826826634.a, A067431, A067431.P8250582183486252664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067430

/-! ## A067430.P15471623879777319436

`A067978(n)%A067431(n)`
-/

namespace A067430.P15471623879777319436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067978 n) (A067431 n)

end

end A067430.P15471623879777319436

namespace A067430

/-- `A067978(n)%A067431(n)` -/
def P15471623879777319436.Spec : Prop :=
  ∀ n, P15471623879777319436.a n = A067430 n

end A067430

/-! ## A067430.P16226917849083618325

`A067978(n)-(A067977(n)+A067334(n))`
-/

namespace A067430.P16226917849083618325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067978 n - (A067977 n + A067334 n)

end

end A067430.P16226917849083618325

namespace A067430

/-- `A067978(n)-(A067977(n)+A067334(n))` -/
def P16226917849083618325.Spec : Prop :=
  ∀ n, P16226917849083618325.a n = A067430 n

theorem P16226917849083618325.correct : P16226917849083618325.Spec := by
  intro n
  simp only [A067430, Nat.add_sub_cancel, A067430.P16226917849083618325.a, A067430.P16408898910722994529.a, A067334, A067334.P13359382140778625802.a, A067977, A067977.P5847705129826826634.a, A067978, A067978.P743960902897900319.a, A067431, A067431.P8250582183486252664.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067430

/-! ## A067430.P8401411353608099147

`2*A067977(n)-A067978(n)`
-/

namespace A067430.P8401411353608099147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067977 n - A067978 n

end

end A067430.P8401411353608099147

namespace A067430

/-- `2*A067977(n)-A067978(n)` -/
def P8401411353608099147.Spec : Prop :=
  ∀ n, P8401411353608099147.a n = A067430 n

theorem P8401411353608099147.correct : P8401411353608099147.Spec := by
  intro n
  simp only [A067430, Nat.add_sub_cancel, A067430.P8401411353608099147.a, A067430.P16408898910722994529.a, A067977, A067977.P5847705129826826634.a, A067978, A067978.P743960902897900319.a, A067431, A067431.P8250582183486252664.a, A067334, A067334.P13359382140778625802.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067430

/-! ## A067430.P10697708102870952816

`A213777(A056115(n)+21)`
-/

namespace A067430.P10697708102870952816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A056115 n + 21).toNat

end

end A067430.P10697708102870952816

namespace A067430

/-- `A213777(A056115(n)+21)` -/
def P10697708102870952816.Spec : Prop :=
  ∀ n, P10697708102870952816.a n = A067430 n

end A067430

/-! ## A067430.P18364410209265686823

`A213777(A000217(n+5)+6)`
-/

namespace A067430.P18364410209265686823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A000217 (n + 5) + 6).toNat

end

end A067430.P18364410209265686823

namespace A067430

/-- `A213777(A000217(n+5)+6)` -/
def P18364410209265686823.Spec : Prop :=
  ∀ n, P18364410209265686823.a n = A067430 n

end A067430

/-! ## A067430.P12074000432241920216

`A067418(A056119(n)+27)`
-/

namespace A067430.P12074000432241920216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A056119 n + 27).toNat

end

end A067430.P12074000432241920216

namespace A067430

/-- `A067418(A056119(n)+27)` -/
def P12074000432241920216.Spec : Prop :=
  ∀ n, P12074000432241920216.a n = A067430 n

end A067430

/-! ## A067430.P10535762890568612156

`A067418(A000217(n+6)+6)`
-/

namespace A067430.P10535762890568612156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000217 (n + 6) + 6).toNat

end

end A067430.P10535762890568612156

namespace A067430

/-- `A067418(A000217(n+6)+6)` -/
def P10535762890568612156.Spec : Prop :=
  ∀ n, P10535762890568612156.a n = A067430 n

end A067430

/-! ## A067430.P4292497765391506373

`A067330(A055999(n+4)-1)`
-/

namespace A067430.P4292497765391506373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A055999 (n + 4) - 1).toNat

end

end A067430.P4292497765391506373

namespace A067430

/-- `A067330(A055999(n+4)-1)` -/
def P4292497765391506373.Spec : Prop :=
  ∀ n, P4292497765391506373.a n = A067430 n

end A067430

/-! ## A067430.P12126943641601314056

`A067330(A000096(n+6)-6)`
-/

namespace A067430.P12126943641601314056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000096 (n + 6) - 6).toNat

end

end A067430.P12126943641601314056

namespace A067430

/-- `A067330(A000096(n+6)-6)` -/
def P12126943641601314056.Spec : Prop :=
  ∀ n, P12126943641601314056.a n = A067430 n

end A067430

/-! ## A067430.P500719024992268073

`A067330(A000217(n+7)-7)`
-/

namespace A067430.P500719024992268073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000217 (n + 7) - 7).toNat

end

end A067430.P500719024992268073

namespace A067430

/-- `A067330(A000217(n+7)-7)` -/
def P500719024992268073.Spec : Prop :=
  ∀ n, P500719024992268073.a n = A067430 n

end A067430

/-!
# A067431: Convolution of Fibonacci F(n+1), n>=0, with F(n+8), n>=0.

The programs for A067431, the canonical program `A067431.P8250582183486252664` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067431 has offset 0).

The definition of A067431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067431.P8250582183486252664

`A067430(n)+A067334(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067431

/-- `A067430(n)+A067334(n)` -/
def P8250582183486252664.Spec : Prop :=
  ∀ n, P8250582183486252664.a n = A067431 n

theorem P8250582183486252664.correct : P8250582183486252664.Spec := by
  intro n
  simp only [A067431]

end A067431

/-! ## A067431.P8917350559815635293

`A067333(n)+2*A067334(n)`
-/

namespace A067431.P8917350559815635293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067333 n + 2 * A067334 n

end

end A067431.P8917350559815635293

namespace A067431

/-- `A067333(n)+2*A067334(n)` -/
def P8917350559815635293.Spec : Prop :=
  ∀ n, P8917350559815635293.a n = A067431 n

end A067431

/-! ## A067431.P3472080947814859046

`A067332(n)+A067430(n)+A067333(n)`
-/

namespace A067431.P3472080947814859046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067332 n + (A067430 n + A067333 n)

end

end A067431.P3472080947814859046

namespace A067431

/-- `A067332(n)+A067430(n)+A067333(n)` -/
def P3472080947814859046.Spec : Prop :=
  ∀ n, P3472080947814859046.a n = A067431 n

end A067431

/-! ## A067431.P14752754845351521674

`A067977(n)-A067430(n)`
-/

namespace A067431.P14752754845351521674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067977 n - A067430 n

end

end A067431.P14752754845351521674

namespace A067431

/-- `A067977(n)-A067430(n)` -/
def P14752754845351521674.Spec : Prop :=
  ∀ n, P14752754845351521674.a n = A067431 n

theorem P14752754845351521674.correct : P14752754845351521674.Spec := by
  intro n
  simp only [A067431, Nat.add_sub_cancel, A067431.P14752754845351521674.a, A067431.P8250582183486252664.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067977, A067977.P5847705129826826634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067431

/-! ## A067431.P3460184929479547194

`2*A067430(n)-A067333(n)`
-/

namespace A067431.P3460184929479547194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067430 n - A067333 n

end

end A067431.P3460184929479547194

namespace A067431

/-- `2*A067430(n)-A067333(n)` -/
def P3460184929479547194.Spec : Prop :=
  ∀ n, P3460184929479547194.a n = A067431 n

end A067431

/-! ## A067431.P1035228496408691409

`A067978(n)-A067977(n)`
-/

namespace A067431.P1035228496408691409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067978 n - A067977 n

end

end A067431.P1035228496408691409

namespace A067431

/-- `A067978(n)-A067977(n)` -/
def P1035228496408691409.Spec : Prop :=
  ∀ n, P1035228496408691409.a n = A067431 n

theorem P1035228496408691409.correct : P1035228496408691409.Spec := by
  intro n
  simp only [A067431, Nat.add_sub_cancel, A067431.P1035228496408691409.a, A067431.P8250582183486252664.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067977, A067977.P5847705129826826634.a, A067978, A067978.P743960902897900319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067431

/-! ## A067431.P11614056113015896210

`(A067977(n)+A067334(n))/2`
-/

namespace A067431.P11614056113015896210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067977 n + A067334 n : ℚ) / 2

end

end A067431.P11614056113015896210

namespace A067431

/-- `(A067977(n)+A067334(n))/2` -/
def P11614056113015896210.Spec : Prop :=
  ∀ n, P11614056113015896210.a n = (A067431 n : ℚ)

theorem P11614056113015896210.correct : P11614056113015896210.Spec := by
  intro n
  simp only [A067431, Nat.add_sub_cancel, A067431.P11614056113015896210.a, A067431.P8250582183486252664.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067977, A067977.P5847705129826826634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067431

/-! ## A067431.P17300438470382072844

`(A067978(n)-A067430(n))/2`
-/

namespace A067431.P17300438470382072844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067978 n - A067430 n : ℚ) / 2

end

end A067431.P17300438470382072844

namespace A067431

/-- `(A067978(n)-A067430(n))/2` -/
def P17300438470382072844.Spec : Prop :=
  ∀ n, P17300438470382072844.a n = (A067431 n : ℚ)

theorem P17300438470382072844.correct : P17300438470382072844.Spec := by
  intro n
  simp only [A067431, Nat.add_sub_cancel, A067431.P17300438470382072844.a, A067431.P8250582183486252664.a, A067334, A067334.P13359382140778625802.a, A067430, A067430.P16408898910722994529.a, A067978, A067978.P743960902897900319.a, A067977, A067977.P5847705129826826634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A067431

/-! ## A067431.P890237528299605878

`A213777(A167487(n+5))`
-/

namespace A067431.P890237528299605878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (A167487 (n + 5)).toNat

end

end A067431.P890237528299605878

namespace A067431

/-- `A213777(A167487(n+5))` -/
def P890237528299605878.Spec : Prop :=
  ∀ n, P890237528299605878.a n = A067431 n

end A067431

/-! ## A067431.P14347843648039173487

`A067418(A167487(n+6))`
-/

namespace A067431.P14347843648039173487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A167487 (n + 6)).toNat

end

end A067431.P14347843648039173487

namespace A067431

/-- `A067418(A167487(n+6))` -/
def P14347843648039173487.Spec : Prop :=
  ∀ n, P14347843648039173487.a n = A067431 n

end A067431

/-! ## A067431.P15782174385015104539

`A067330(A155212(n+4))`
-/

namespace A067431.P15782174385015104539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A155212 (n + 4)).toNat

end

end A067431.P15782174385015104539

namespace A067431

/-- `A067330(A155212(n+4))` -/
def P15782174385015104539.Spec : Prop :=
  ∀ n, P15782174385015104539.a n = A067431 n

end A067431

/-! ## A067431.P878932392975744265

`A067330(A000096(n+6)+n+1)`
-/

namespace A067431.P878932392975744265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A067431.P878932392975744265

namespace A067431

/-- `A067330(A000096(n+6)+n+1)` -/
def P878932392975744265.Spec : Prop :=
  ∀ n, P878932392975744265.a n = A067431 n

end A067431

/-! ## A067431.P12239549989351436776

`A067330(A055999(n+4)+n+6)`
-/

namespace A067431.P12239549989351436776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 (A055999 (n + 4) + (n + 6 : ℤ)).toNat

end

end A067431.P12239549989351436776

namespace A067431

/-- `A067330(A055999(n+4)+n+6)` -/
def P12239549989351436776.Spec : Prop :=
  ∀ n, P12239549989351436776.a n = A067431 n

end A067431

/-! ## A067431.P5849139017261162196

`A067330(2*n+A000217(n+6)+7)`
-/

namespace A067431.P5849139017261162196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067330 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A067431.P5849139017261162196

namespace A067431

/-- `A067330(2*n+A000217(n+6)+7)` -/
def P5849139017261162196.Spec : Prop :=
  ∀ n, P5849139017261162196.a n = A067431 n

end A067431

/-!
# A067432: Number of ways to represent the n-th prime in form p*q+p+q, where p and q are primes (see A066938).

The programs for A067432, there is no canonical definition to state claims against.
-/

/-! ## A067432.P908176261293273486

`∑[A089643(A174371(n))]%A066075(n+1)`
-/

namespace A067432.P908176261293273486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 (A174371 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A066075 (n + 1))

end

end A067432.P908176261293273486

/-! ## A067432.P1822150792486206792

`A001134(A083416(n+1))%A066075(n+1)`
-/

namespace A067432.P1822150792486206792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001134 (A083416 (n + 1)).toNat) (A066075 (n + 1))

end

end A067432.P1822150792486206792

/-! ## A067432.P12729180080680724762

`A053074(A114294(3*n))%A066075(n+1)`
-/

namespace A067432.P12729180080680724762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053074 (A114294 (3 * n)).toNat) (A066075 (n + 1))

end

end A067432.P12729180080680724762

/-! ## A067432.P14965783739215669772

`A366840(A046014(n+1))%A066075(n+1)`
-/

namespace A067432.P14965783739215669772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366840 (A046014 (n + 1)).toNat) (A066075 (n + 1))

end

end A067432.P14965783739215669772

/-!
# A067433: Triangle in which row n gives trajectory of n under the map k -> k/3 if k is divisible by 3, otherwise k -> next multiple of 3, stopping when reaching 1 (the initial term n is not included).

The programs for A067433, there is no canonical definition to state claims against.
-/

/-! ## A067433.P1741401624540403481

`gcd(A000217(3*n), A007091(A280563(n)))`
-/

namespace A067433.P1741401624540403481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (3 * n)) (A007091 (A280563 n).toNat)

end

end A067433.P1741401624540403481

/-! ## A067433.P13262616429518542596

`A347552(or(4, A045857(n+1)))`
-/

namespace A067433.P13262616429518542596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (Int.lor 4 (A045857 (n + 1))).toNat

end

end A067433.P13262616429518542596

/-!
# A067434: Number of distinct prime factors in binomial(2*n,n).

The programs for A067434, the canonical program `A067434.P13929793644750032362` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067434 has offset 1).

The definition of A067434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067434.P17225632447477852866

`A193990(n+1)+A108954(n+1)`
-/

namespace A067434.P17225632447477852866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (n + 1) + A108954 (n + 1)

end

end A067434.P17225632447477852866

namespace A067434

/-- `A193990(n+1)+A108954(n+1)` -/
def P17225632447477852866.Spec : Prop :=
  ∀ n, P17225632447477852866.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P824553332121164447

`A034973(2*(n+1))`
-/

namespace A067434.P824553332121164447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1))

end

end A067434.P824553332121164447

namespace A067434

/-- `A034973(2*(n+1))` -/
def P824553332121164447.Spec : Prop :=
  ∀ n, P824553332121164447.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P1343772058786374873

`A000027(A034973(n+2+n))`
-/

namespace A067434.P1343772058786374873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A034973 (n + 2 + n)).toNat

end

end A067434.P1343772058786374873

namespace A067434

/-- `A000027(A034973(n+2+n))` -/
def P1343772058786374873.Spec : Prop :=
  ∀ n, P1343772058786374873.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P13929793644750032362

`A056175(2*(n+1))+A056173(2*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A067434

/-- `A056175(2*(n+1))+A056173(2*(n+1))` -/
def P13929793644750032362.Spec : Prop :=
  ∀ n, P13929793644750032362.a n = A067434 (n + 1)

theorem P13929793644750032362.correct : P13929793644750032362.Spec := by
  intro n
  simp only [A067434, Nat.add_sub_cancel]

end A067434

/-! ## A067434.P16092519903099633810

`A000720(2*(n+1))-A036541(2*(n+1))`
-/

namespace A067434.P16092519903099633810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1)) - A036541 (2 * (n + 1))

end

end A067434.P16092519903099633810

namespace A067434

/-- `A000720(2*(n+1))-A036541(2*(n+1))` -/
def P16092519903099633810.Spec : Prop :=
  ∀ n, P16092519903099633810.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P17836481557037794385

`A071854(n+1)+A000720(n+1)`
-/

namespace A067434.P17836481557037794385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071854 (n + 1) + A000720 (n + 1)

end

end A067434.P17836481557037794385

namespace A067434

/-- `A071854(n+1)+A000720(n+1)` -/
def P17836481557037794385.Spec : Prop :=
  ∀ n, P17836481557037794385.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P466734760772818873

`A230980(n+1)+A071854(n+1)`
-/

namespace A067434.P466734760772818873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + A071854 (n + 1)

end

end A067434.P466734760772818873

namespace A067434

/-- `A230980(n+1)+A071854(n+1)` -/
def P466734760772818873.Spec : Prop :=
  ∀ n, P466734760772818873.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P9428870613722616423

`A081387(n+1)+A081386(n+1)`
-/

namespace A067434.P9428870613722616423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081387 (n + 1) + A081386 (n + 1)

end

end A067434.P9428870613722616423

namespace A067434

/-- `A081387(n+1)+A081386(n+1)` -/
def P9428870613722616423.Spec : Prop :=
  ∀ n, P9428870613722616423.a n = A067434 (n + 1)

end A067434

/-! ## A067434.P4152715195931873895

`log2(A039593(2*(n+1)))`
-/

namespace A067434.P4152715195931873895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A039593 (2 * (n + 1)) : ℝ)

end

end A067434.P4152715195931873895

namespace A067434

/-- `log2(A039593(2*(n+1)))` -/
def P4152715195931873895.Spec : Prop :=
  ∀ n, P4152715195931873895.a n = (A067434 (n + 1) : ℝ)

end A067434

/-! ## A067434.P13082620925134131813

`val(lcm(A039593(2*(n+1)), A039593(n+2)), 2)`
-/

namespace A067434.P13082620925134131813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lcm (A039593 (2 * (n + 1))) (A039593 (n + 2))) 2

end

end A067434.P13082620925134131813

namespace A067434

/-- `val(lcm(A039593(2*(n+1)), A039593(n+2)), 2)` -/
def P13082620925134131813.Spec : Prop :=
  ∀ n, (P13082620925134131813.a n : ℤ) = A067434 (n + 1)

end A067434

/-! ## A067434.P11218760373993772164

`A383214(n+1)+A383213(n+1)`
-/

namespace A067434.P11218760373993772164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383214 (n + 1) + A383213 (n + 1)

end

end A067434.P11218760373993772164

namespace A067434

/-- `A383214(n+1)+A383213(n+1)` -/
def P11218760373993772164.Spec : Prop :=
  ∀ n, P11218760373993772164.a n = A067434 (n + 1)

end A067434

/-!
# A067435: a(n) is the sum of all the remainders when n-th odd number is divided by odd numbers < 2n-1.

The programs for A067435, the canonical program `A067435.P18206073877840351185` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067435 has offset 1).

The definition of A067435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067435.P18206073877840351185

`a(n-1)+4*(n+1)-3-A000203(2*(n+1)-1)-A000593(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067435

/-- `a(n-1)+4*(n+1)-3-A000203(2*(n+1)-1)-A000593(n)` -/
def P18206073877840351185.Spec : Prop :=
  ∀ n, P18206073877840351185.a n = A067435 (n + 1)

theorem P18206073877840351185.correct : P18206073877840351185.Spec := by
  intro n
  simp only [A067435, Nat.add_sub_cancel]

end A067435

/-! ## A067435.P10062879875954455989

`A024930(Δ[n²])`
-/

namespace A067435.P10062879875954455989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024930 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A067435.P10062879875954455989

namespace A067435

/-- `A024930(Δ[n²])` -/
def P10062879875954455989.Spec : Prop :=
  ∀ n, P10062879875954455989.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P13301868757339020652

`A000384(n+1)-A078471(2*n+1)`
-/

namespace A067435.P13301868757339020652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) - A078471 (2 * n + 1)

end

end A067435.P13301868757339020652

namespace A067435

/-- `A000384(n+1)-A078471(2*n+1)` -/
def P13301868757339020652.Spec : Prop :=
  ∀ n, P13301868757339020652.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P2858347016624375021

`A004125(2*n+1)-A024931(2*(n+1))`
-/

namespace A067435.P2858347016624375021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (2 * n + 1) - A024931 (2 * (n + 1))

end

end A067435.P2858347016624375021

namespace A067435

/-- `A004125(2*n+1)-A024931(2*(n+1))` -/
def P2858347016624375021.Spec : Prop :=
  ∀ n, P2858347016624375021.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P9427583949148315173

`A000217(2*n+1)-A078471(2*n+1)`
-/

namespace A067435.P9427583949148315173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) - A078471 (2 * n + 1)

end

end A067435.P9427583949148315173

namespace A067435

/-- `A000217(2*n+1)-A078471(2*n+1)` -/
def P9427583949148315173.Spec : Prop :=
  ∀ n, P9427583949148315173.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P8963331684067407213

`A093005(2*n+1)-A078471(2*n+1)`
-/

namespace A067435.P8963331684067407213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (2 * n + 1) - A078471 (2 * n + 1)

end

end A067435.P8963331684067407213

namespace A067435

/-- `A093005(2*n+1)-A078471(2*n+1)` -/
def P8963331684067407213.Spec : Prop :=
  ∀ n, P8963331684067407213.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P12679412601600073113

`A333194(2*n+1)-A000203(2*n+1)`
-/

namespace A067435.P12679412601600073113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333194 (2 * n + 1) - A000203 (2 * n + 1)

end

end A067435.P12679412601600073113

namespace A067435

/-- `A333194(2*n+1)-A000203(2*n+1)` -/
def P12679412601600073113.Spec : Prop :=
  ∀ n, P12679412601600073113.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P9265681662732469071

`A333194(2*n+1)-A000593(2*n+1)`
-/

namespace A067435.P9265681662732469071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333194 (2 * n + 1) - A000593 (2 * n + 1)

end

end A067435.P9265681662732469071

namespace A067435

/-- `A333194(2*n+1)-A000593(2*n+1)` -/
def P9265681662732469071.Spec : Prop :=
  ∀ n, P9265681662732469071.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P18101518006369194725

`A000292(2*n+1)-(A078471(2*n+1)+A000292(2*n))`
-/

namespace A067435.P18101518006369194725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) - (A078471 (2 * n + 1) + A000292 (2 * n))

end

end A067435.P18101518006369194725

namespace A067435

/-- `A000292(2*n+1)-(A078471(2*n+1)+A000292(2*n))` -/
def P18101518006369194725.Spec : Prop :=
  ∀ n, P18101518006369194725.a n = A067435 (n + 1)

end A067435

/-! ## A067435.P18347983875005763944

`A093005(2*n+1)+A271342(2*n+1)-A024916(2*n+1)`
-/

namespace A067435.P18347983875005763944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (2 * n + 1) + (A271342 (2 * n + 1) - A024916 (2 * n + 1))

end

end A067435.P18347983875005763944

namespace A067435

/-- `A093005(2*n+1)+A271342(2*n+1)-A024916(2*n+1)` -/
def P18347983875005763944.Spec : Prop :=
  ∀ n, P18347983875005763944.a n = A067435 (n + 1)

end A067435

/-!
# A067436: a(n) = sum of all the remainders when n-th even number is divided by even numbers < 2n.

The programs for A067436, the canonical program `A067436.P3160659514685204136` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067436 has offset 1).

The definition of A067436 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067436.P3160659514685204136

`2*A004125(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067436

/-- `2*A004125(n+1)` -/
def P3160659514685204136.Spec : Prop :=
  ∀ n, P3160659514685204136.a n = A067436 (n + 1)

theorem P3160659514685204136.correct : P3160659514685204136.Spec := by
  intro n
  simp only [A067436, Nat.add_sub_cancel]

end A067436

/-! ## A067436.P11806383099553004914

`∑[2*(Δ[n²]-∑{d}[n+1, #])]`
-/

namespace A067436.P11806383099553004914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P11806383099553004914

namespace A067436

/-- `∑[2*(Δ[n²]-∑{d}[n+1, #])]` -/
def P11806383099553004914.Spec : Prop :=
  ∀ n, P11806383099553004914.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P5743566292571431889

`2*((n+1)²-∑[∑{d}[n+1, #]])`
-/

namespace A067436.P5743566292571431889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A067436.P5743566292571431889

namespace A067436

/-- `2*((n+1)²-∑[∑{d}[n+1, #]])` -/
def P5743566292571431889.Spec : Prop :=
  ∀ n, P5743566292571431889.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P14980328516507660751

`2*(n+1)²%∑[∑{d}[n+1, #]]`
-/

namespace A067436.P14980328516507660751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A067436.P14980328516507660751

namespace A067436

/-- `2*(n+1)²%∑[∑{d}[n+1, #]]` -/
def P14980328516507660751.Spec : Prop :=
  ∀ n, (P14980328516507660751.a n : ℤ) = A067436 (n + 1)

end A067436

/-! ## A067436.P2762724064584658222

`∑[4*n+2]%∑[∑{d}[n+1, #]]`
-/

namespace A067436.P2762724064584658222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A067436.P2762724064584658222

namespace A067436

/-- `∑[4*n+2]%∑[∑{d}[n+1, #]]` -/
def P2762724064584658222.Spec : Prop :=
  ∀ n, (P2762724064584658222.a n : ℤ) = A067436 (n + 1)

end A067436

/-! ## A067436.P13183748684661154549

`∑[2*(2*n+1-∑{d}[n+1, #])]`
-/

namespace A067436.P13183748684661154549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P13183748684661154549

namespace A067436

/-- `∑[2*(2*n+1-∑{d}[n+1, #])]` -/
def P13183748684661154549.Spec : Prop :=
  ∀ n, P13183748684661154549.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P1432316474656306766

`Δ[2*A072481(n)]`
-/

namespace A067436.P1432316474656306766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067436.P1432316474656306766

namespace A067436

/-- `Δ[2*A072481(n)]` -/
def P1432316474656306766.Spec : Prop :=
  ∀ n, P1432316474656306766.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P15107388580838169466

`∑[2*A235796(n+1)]`
-/

namespace A067436.P15107388580838169466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P15107388580838169466

namespace A067436

/-- `∑[2*A235796(n+1)]` -/
def P15107388580838169466.Spec : Prop :=
  ∀ n, P15107388580838169466.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P13419248591004545415

`abs(∑[2*A237588(n+1)])`
-/

namespace A067436.P13419248591004545415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A067436.P13419248591004545415

namespace A067436

/-- `abs(∑[2*A237588(n+1)])` -/
def P13419248591004545415.Spec : Prop :=
  ∀ n, P13419248591004545415.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P11516401547328013597

`∑[2*(A033879(n+1)-1)]`
-/

namespace A067436.P11516401547328013597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033879 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P11516401547328013597

namespace A067436

/-- `∑[2*(A033879(n+1)-1)]` -/
def P11516401547328013597.Spec : Prop :=
  ∀ n, P11516401547328013597.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P1263609152497640900

`(n+1)²-A294016(n+1)`
-/

namespace A067436.P1263609152497640900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A294016 (n + 1)

end

end A067436.P1263609152497640900

namespace A067436

/-- `(n+1)²-A294016(n+1)` -/
def P1263609152497640900.Spec : Prop :=
  ∀ n, P1263609152497640900.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P6330016839916642482

`∑[2*(n-A001065(n+1))]`
-/

namespace A067436.P6330016839916642482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A001065 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P6330016839916642482

namespace A067436

/-- `∑[2*(n-A001065(n+1))]` -/
def P6330016839916642482.Spec : Prop :=
  ∀ n, P6330016839916642482.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P10881333077193114126

`2*(A049766(n+1)-∑[n])`
-/

namespace A067436.P10881333077193114126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049766 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A067436.P10881333077193114126

namespace A067436

/-- `2*(A049766(n+1)-∑[n])` -/
def P10881333077193114126.Spec : Prop :=
  ∀ n, P10881333077193114126.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P873500399284468122

`∑[2*n-A091818(n+1)]`
-/

namespace A067436.P873500399284468122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A091818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P873500399284468122

namespace A067436

/-- `∑[2*n-A091818(n+1)]` -/
def P873500399284468122.Spec : Prop :=
  ∀ n, P873500399284468122.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P11186120087660719070

`2*(∑[n]-A153485(n+1))`
-/

namespace A067436.P11186120087660719070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153485 (n + 1))

end

end A067436.P11186120087660719070

namespace A067436

/-- `2*(∑[n]-A153485(n+1))` -/
def P11186120087660719070.Spec : Prop :=
  ∀ n, P11186120087660719070.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P2921519268579216232

`2*(A111490(n+1)-(n+1))`
-/

namespace A067436.P2921519268579216232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111490 (n + 1) - (n + 1 : ℤ))

end

end A067436.P2921519268579216232

namespace A067436

/-- `2*(A111490(n+1)-(n+1))` -/
def P2921519268579216232.Spec : Prop :=
  ∀ n, P2921519268579216232.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P15359647774359446263

`2/(n+1)*A256532(n+1)`
-/

namespace A067436.P15359647774359446263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A256532 (n + 1) : ℚ)

end

end A067436.P15359647774359446263

namespace A067436

/-- `2/(n+1)*A256532(n+1)` -/
def P15359647774359446263.Spec : Prop :=
  ∀ n, P15359647774359446263.a n = (A067436 (n + 1) : ℚ)

end A067436

/-! ## A067436.P1746111986208800783

`(n+1)²-∑[A294015(n+1)]`
-/

namespace A067436.P1746111986208800783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P1746111986208800783

namespace A067436

/-- `(n+1)²-∑[A294015(n+1)]` -/
def P1746111986208800783.Spec : Prop :=
  ∀ n, P1746111986208800783.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P3264558103917660694

`∑[2*(Δ[n²]-A000203(n+1))]`
-/

namespace A067436.P3264558103917660694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067436.P3264558103917660694

namespace A067436

/-- `∑[2*(Δ[n²]-A000203(n+1))]` -/
def P3264558103917660694.Spec : Prop :=
  ∀ n, P3264558103917660694.a n = A067436 (n + 1)

end A067436

/-! ## A067436.P8280113836968384211

`2*∑[2*n+1-A000203(C(n+1, n))]`
-/

namespace A067436.P8280113836968384211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000203 (Nat.choose (n + 1) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067436.P8280113836968384211

namespace A067436

/-- `2*∑[2*n+1-A000203(C(n+1, n))]` -/
def P8280113836968384211.Spec : Prop :=
  ∀ n, P8280113836968384211.a n = A067436 (n + 1)

end A067436

/-!
# A067437: Number of distinct prime factors in binomial(2*n,n)+1.

The programs for A067437, there is no canonical definition to state claims against.
-/

/-! ## A067437.P3764574327599524603

`A070032(A166010(n+1)+A007947(A227955(n)))`
-/

namespace A067437.P3764574327599524603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070032 (A166010 (n + 1) + A007947 (A227955 n).toNat).toNat

end

end A067437.P3764574327599524603

/-! ## A067437.P1303527151638841501

`A095684(A000040(A057436(n+1)))`
-/

namespace A067437.P1303527151638841501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095684 (A000040 (A057436 (n + 1)).toNat).toNat

end

end A067437.P1303527151638841501

/-! ## A067437.P2999392994020107250

`A001221(or(A059943(n+1), A336484(n)))`
-/

namespace A067437.P2999392994020107250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A059943 (n + 1)) (A336484 n)).toNat

end

end A067437.P2999392994020107250

/-! ## A067437.P14146284474553521122

`A001221(A350878(n+1)+A346809(n+1))`
-/

namespace A067437.P14146284474553521122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350878 (n + 1) + A346809 (n + 1)).toNat

end

end A067437.P14146284474553521122

/-! ## A067437.P14828469476706714980

`A001221(A079921(n+1)+A049610(n))`
-/

namespace A067437.P14828469476706714980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079921 (n + 1) + A049610 n).toNat

end

end A067437.P14828469476706714980

/-!
# A067438: Number of distinct prime factors in floor((4/3)^n).

The programs for A067438, there is no canonical definition to state claims against.
-/

/-! ## A067438.P9350748892548331873

`∑{e}[A064628(n+1), A008302(#)]`
-/

namespace A067438.P9350748892548331873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008302 (Nat.factorization (f1 n).natAbs p)

end

end A067438.P9350748892548331873

/-! ## A067438.P14749256456188072296

`∑{e}[A064628(n+1), A034380(#)]`
-/

namespace A067438.P14749256456188072296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A034380 (Nat.factorization (f1 n).natAbs p)

end

end A067438.P14749256456188072296

/-! ## A067438.P9782045700335895329

`∑{e}[A064628(n+1), A054576(#)]`
-/

namespace A067438.P9782045700335895329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A054576 (Nat.factorization (f1 n).natAbs p)

end

end A067438.P9782045700335895329

/-! ## A067438.P3137853752219882420

`∑{e}[A064628(n+1), A069010(#)]`
-/

namespace A067438.P3137853752219882420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069010 (Nat.factorization (f1 n).natAbs p)

end

end A067438.P3137853752219882420

/-! ## A067438.P6395516255514560770

`∑{e}[A064628(n+1), A117358(#)]`
-/

namespace A067438.P6395516255514560770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A117358 (Nat.factorization (f1 n).natAbs p)

end

end A067438.P6395516255514560770

/-!
# A067439: a(n) = sum of all the remainders when n is divided by positive integers less than and coprime to n.

The programs for A067439, the canonical program `A067439.P11811676257442922889` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067439 has offset 1).

The definition of A067439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067439.P676198367526043422

`A004125(n+1)-A072514(n+1)`
-/

namespace A067439.P676198367526043422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) - A072514 (n + 1)

end

end A067439.P676198367526043422

namespace A067439

/-- `A004125(n+1)-A072514(n+1)` -/
def P676198367526043422.Spec : Prop :=
  ∀ n, P676198367526043422.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P15582890686219543494

`Δ[A072481(n)]-A072514(n+1)`
-/

namespace A067439.P15582890686219543494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A072514 (n + 1)

end

end A067439.P15582890686219543494

namespace A067439

/-- `Δ[A072481(n)]-A072514(n+1)` -/
def P15582890686219543494.Spec : Prop :=
  ∀ n, P15582890686219543494.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P6466781839709154224

`∑[A235796(n+1)]-A072514(n+1)`
-/

namespace A067439.P6466781839709154224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A072514 (n + 1)

end

end A067439.P6466781839709154224

namespace A067439

/-- `∑[A235796(n+1)]-A072514(n+1)` -/
def P6466781839709154224.Spec : Prop :=
  ∀ n, P6466781839709154224.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P9365620530960500570

`A067436(n+1)/2-A072514(n+1)`
-/

namespace A067439.P9365620530960500570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067436 (n + 1) : ℚ) / 2 - (A072514 (n + 1) : ℚ)

end

end A067439.P9365620530960500570

namespace A067439

/-- `A067436(n+1)/2-A072514(n+1)` -/
def P9365620530960500570.Spec : Prop :=
  ∀ n, P9365620530960500570.a n = (A067439 (n + 1) : ℚ)

end A067439

/-! ## A067439.P11811676257442922889

`∑{d}[n+1, A004125(#)*A055615((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067439

/-- `∑{d}[n+1, A004125(#)*A055615((n+1)/#)]` -/
def P11811676257442922889.Spec : Prop :=
  ∀ n, P11811676257442922889.a n = A067439 (n + 1)

theorem P11811676257442922889.correct : P11811676257442922889.Spec := by
  intro n
  simp only [A067439, Nat.add_sub_cancel]

end A067439

/-! ## A067439.P11854701671515903644

`A000217(n)-(A153485(n+1)+A072514(n+1))`
-/

namespace A067439.P11854701671515903644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A153485 (n + 1) + A072514 (n + 1))

end

end A067439.P11854701671515903644

namespace A067439

/-- `A000217(n)-(A153485(n+1)+A072514(n+1))` -/
def P11854701671515903644.Spec : Prop :=
  ∀ n, P11854701671515903644.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P5172055497280594267

`A163180(n+1)-(A072514(n+1)+A000005(n+1))`
-/

namespace A067439.P5172055497280594267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163180 (n + 1) - (A072514 (n + 1) + A000005 (n + 1))

end

end A067439.P5172055497280594267

namespace A067439

/-- `A163180(n+1)-(A072514(n+1)+A000005(n+1))` -/
def P5172055497280594267.Spec : Prop :=
  ∀ n, P5172055497280594267.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P9496963521293675286

`A014682(A067436(n+1)-2*A072514(n+1))`
-/

namespace A067439.P9496963521293675286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067436 (n + 1) - 2 * A072514 (n + 1)).toNat

end

end A067439.P9496963521293675286

namespace A067439

/-- `A014682(A067436(n+1)-2*A072514(n+1))` -/
def P9496963521293675286.Spec : Prop :=
  ∀ n, P9496963521293675286.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P7283897252996825647

`A014682(A067436(n+1)-A072514(n+1)-A072514(n+1))`
-/

namespace A067439.P7283897252996825647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067436 (n + 1) - A072514 (n + 1) - A072514 (n + 1)).toNat

end

end A067439.P7283897252996825647

namespace A067439

/-- `A014682(A067436(n+1)-A072514(n+1)-A072514(n+1))` -/
def P7283897252996825647.Spec : Prop :=
  ∀ n, P7283897252996825647.a n = A067439 (n + 1)

end A067439

/-! ## A067439.P4476807012918257584

`A014682(A067436(n+1))-A072514(n+1)`
-/

namespace A067439.P4476807012918257584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067436 (n + 1)).toNat - A072514 (n + 1)

end

end A067439.P4476807012918257584

namespace A067439

/-- `A014682(A067436(n+1))-A072514(n+1)` -/
def P4476807012918257584.Spec : Prop :=
  ∀ n, P4476807012918257584.a n = A067439 (n + 1)

end A067439

/-!
# A067440: Sum(i(n)), where i(n) is the smallest integer with i(n)^m=n for some m.

The programs for A067440, the canonical program `A067440.P11258630054404040537` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067440 has offset 1).

The definition of A067440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067440.P11258630054404040537

`∑[A052410(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A067440

/-- `∑[A052410(n+1)]` -/
def P11258630054404040537.Spec : Prop :=
  ∀ n, P11258630054404040537.a n = A067440 (n + 1)

theorem P11258630054404040537.correct : P11258630054404040537.Spec := by
  intro n
  simp only [A067440, Nat.add_sub_cancel]

end A067440

/-! ## A067440.P4378943068310564134

`∑[root(n+1, A253641(n+1))]`
-/

namespace A067440.P4378943068310564134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A253641 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P4378943068310564134

namespace A067440

/-- `∑[root(n+1, A253641(n+1))]` -/
def P4378943068310564134.Spec : Prop :=
  ∀ n, P4378943068310564134.a n = (A067440 (n + 1) : ℝ)

end A067440

/-! ## A067440.P13899786934619669917

`∑[gcd(n+1, A175067(n+1))]`
-/

namespace A067440.P13899786934619669917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A175067 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P13899786934619669917

namespace A067440

/-- `∑[gcd(n+1, A175067(n+1))]` -/
def P13899786934619669917.Spec : Prop :=
  ∀ n, (P13899786934619669917.a n : ℤ) = A067440 (n + 1)

end A067440

/-! ## A067440.P7281280186555631088

`∑[A025478(A340698(n+1))]`
-/

namespace A067440.P7281280186555631088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (A340698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P7281280186555631088

namespace A067440

/-- `∑[A025478(A340698(n+1))]` -/
def P7281280186555631088.Spec : Prop :=
  ∀ n, P7281280186555631088.a n = A067440 (n + 1)

end A067440

/-! ## A067440.P10324155279078275270

`A052410((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A067440.P10324155279078275270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052410 ((n + 1) ^ 2) + a (n - 1)

end

end A067440.P10324155279078275270

namespace A067440

/-- `A052410((n+1)²)+a(n-1)` -/
def P10324155279078275270.Spec : Prop :=
  ∀ n, P10324155279078275270.a n = A067440 (n + 1)

end A067440

/-! ## A067440.P15059267907027262501

`∑[A112537((n+1)²)]`
-/

namespace A067440.P15059267907027262501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112537 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P15059267907027262501

namespace A067440

/-- `∑[A112537((n+1)²)]` -/
def P15059267907027262501.Spec : Prop :=
  ∀ n, P15059267907027262501.a n = A067440 (n + 1)

end A067440

/-! ## A067440.P12257994411374854837

`∑[A329814((n+1)²)]`
-/

namespace A067440.P12257994411374854837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P12257994411374854837

namespace A067440

/-- `∑[A329814((n+1)²)]` -/
def P12257994411374854837.Spec : Prop :=
  ∀ n, P12257994411374854837.a n = A067440 (n + 1)

end A067440

/-! ## A067440.P11175133654852995290

`∑[ratio[A068625(n)]]`
-/

namespace A067440.P11175133654852995290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068625 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067440.P11175133654852995290

namespace A067440

/-- `∑[ratio[A068625(n)]]` -/
def P11175133654852995290.Spec : Prop :=
  ∀ n, P11175133654852995290.a n = (A067440 (n + 1) : ℚ)

end A067440

/-!
# A067441: Number of distinct prime factors in floor((5/4)^n).

The programs for A067441, there is no canonical definition to state claims against.
-/

/-! ## A067441.P7833867811942522203

`∑{e}[A065565(n+1), A039996(#)]`
-/

namespace A067441.P7833867811942522203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A039996 (Nat.factorization (f1 n).natAbs p)

end

end A067441.P7833867811942522203

/-! ## A067441.P10129052398390545069

`∑{e}[A065565(n+1), A055642(#)]`
-/

namespace A067441.P10129052398390545069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055642 (Nat.factorization (f1 n).natAbs p)

end

end A067441.P10129052398390545069

/-! ## A067441.P12483699390716832157

`∑{e}[A065565(n+1), A158388(#)]`
-/

namespace A067441.P12483699390716832157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A158388 (Nat.factorization (f1 n).natAbs p)

end

end A067441.P12483699390716832157

/-! ## A067441.P1044685711164265097

`∑{e}[A065565(n+1), A275420(#)]`
-/

namespace A067441.P1044685711164265097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A275420 (Nat.factorization (f1 n).natAbs p)

end

end A067441.P1044685711164265097

/-! ## A067441.P17390801973225311773

`∑{e}[A065565(n+1), A275422(#)]`
-/

namespace A067441.P17390801973225311773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A275422 (Nat.factorization (f1 n).natAbs p)

end

end A067441.P17390801973225311773

/-! ## A067441.P18129582558871926565

`∑{e}[A065565(n+1), A275423(#)]`
-/

namespace A067441.P18129582558871926565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A275423 (Nat.factorization (f1 n).natAbs p)

end

end A067441.P18129582558871926565

/-! ## A067441.P15648665520490777556

`∑{p}[A065565(n+1), A001222(#)]`
-/

namespace A067441.P15648665520490777556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A067441.P15648665520490777556

/-! ## A067441.P13171579740539396563

`∑{p}[A065565(n+1), A300251(#)]`
-/

namespace A067441.P13171579740539396563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A300251 p

end

end A067441.P13171579740539396563

/-! ## A067441.P11963931911715833136

`A001222(∏{p}[A065565(n+1), #])`
-/

namespace A067441.P11963931911715833136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A067441.P11963931911715833136

/-! ## A067441.P5053524207474703941

`val(A000005(∏{p}[A065565(n+1), #]), 2)`
-/

namespace A067441.P5053524207474703941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat 2

end

end A067441.P5053524207474703941

/-!
# A067442: a(1) = 1 and then smallest nontrivial n-th power starting with 1.

The programs for A067442, there is no canonical definition to state claims against.
-/

/-! ## A067442.P2098353818155549506

`A309707(n+1)^floor(A103517(n)/2)`
-/

namespace A067442.P2098353818155549506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309707 (n + 1) : ℚ) ^ (⌊(A103517 n : ℚ) / 2⌋ : ℤ)

end

end A067442.P2098353818155549506

/-! ## A067442.P18114183362481555640

`A309707(n+1)^((n+1)%A270976(n))`
-/

namespace A067442.P18114183362481555640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309707 (n + 1) : ℚ) ^ (Int.tmod (n + 1 : ℤ) (A270976 n) : ℤ)

end

end A067442.P18114183362481555640

/-! ## A067442.P15914924888932169633

`A309707(n+1)^A004526(A103517(n))`
-/

namespace A067442.P15914924888932169633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309707 (n + 1) : ℚ) ^ (A004526 (A103517 n).toNat : ℤ)

end

end A067442.P15914924888932169633

/-! ## A067442.P17754709131784622523

`A309707(n+1)^A000720(A006005(n+1))`
-/

namespace A067442.P17754709131784622523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309707 (n + 1) : ℚ) ^ (A000720 (A006005 (n + 1)).toNat : ℤ)

end

end A067442.P17754709131784622523

/-! ## A067442.P378773993532411159

`A309707(n+1)^A008612(A004275(3*n+1))`
-/

namespace A067442.P378773993532411159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309707 (n + 1) : ℚ) ^ (A008612 (A004275 (3 * n + 1)).toNat : ℤ)

end

end A067442.P378773993532411159

/-!
# A067443: Smallest n-th power starting with 2.

The programs for A067443, there is no canonical definition to state claims against.
-/

/-! ## A067443.P888608813766528182

`A309735(n+1)^(n+1)`
-/

namespace A067443.P888608813766528182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309735 (n + 1) ^ (n + 1)

end

end A067443.P888608813766528182

/-! ## A067443.P12878651080078443359

`ceil(A309735(Δ[n²]-n)^(Δ[n²]-n))`
-/

namespace A067443.P12878651080078443359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A309735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) : ℤ)⌉

end

end A067443.P12878651080078443359

/-! ## A067443.P17847335781877002290

`root(A309735(n+1), 1/A000027(n+1))`
-/

namespace A067443.P17847335781877002290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A309735 (n + 1) : ℝ) ^ (1 / (1 / (A000027 (n + 1) : ℚ) : ℝ))

end

end A067443.P17847335781877002290

/-!
# A067445: Smallest n-th power starting with 4.

The programs for A067445, there is no canonical definition to state claims against.
-/

/-! ## A067445.P9292457199480481484

`A185381(A203555(n+1))^A203555(n+1)`
-/

namespace A067445.P9292457199480481484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185381 (A203555 (n + 1)).toNat : ℚ) ^ (A203555 (n + 1) : ℤ)

end

end A067445.P9292457199480481484

/-!
# A067451: Numbers such that the geometric and arithmetic mean of their decimal digits are integers.

The programs for A067451, there is no canonical definition to state claims against.
-/

/-! ## A067451.P11759724930503341443

`lt[A114727(n+1), A047813(n)*A119875(n)]`
-/

namespace A067451.P11759724930503341443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n * A119875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067451.P11759724930503341443

/-! ## A067451.P8990928068662935468

`lt[A058348(n), A083365(A033665(n))]`
-/

namespace A067451.P8990928068662935468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083365 (A033665 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067451.P8990928068662935468

/-!
# A067454: Binomial(a,b) where a = n! and b = sum of first n natural numbers.

The programs for A067454, the canonical program `A067454.P15293826185310029901` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067454 has offset 0).

The definition of A067454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067454.P15293826185310029901

`C(n!, n*(n+1)/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067454

/-- `C(n!, n*(n+1)/2)` -/
def P15293826185310029901.Spec : Prop :=
  ∀ n, (P15293826185310029901.a n : ℤ) = A067454 n

theorem P15293826185310029901.correct : P15293826185310029901.Spec := by
  intro n
  simp only [A067454]

end A067454

/-! ## A067454.P15440299216315794516

`C(∏[n+1]/(n+1), ∑[n])`
-/

namespace A067454.P15440299216315794516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A067454.P15440299216315794516

namespace A067454

/-- `C(∏[n+1]/(n+1), ∑[n])` -/
def P15440299216315794516.Spec : Prop :=
  ∀ n, (P15440299216315794516.a n : ℤ) = A067454 n

end A067454

/-!
# A067455: Let m be the product of the decimal digits in n, then a(n) = 0 if m = 0, otherwise a(n) = n!/m.

The programs for A067455, there is no canonical definition to state claims against.
-/

/-! ## A067455.P8675134507357434745

`lcm(gcd(11*n, n^15)!, A282134(n+1))`
-/

namespace A067455.P8675134507357434745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (Nat.gcd (11 * n) (n ^ 15)) : ℤ) (A282134 (n + 1))

end

end A067455.P8675134507357434745

/-! ## A067455.P16336287408008629714

`lcm(n!, A198954(A184974(n)))`
-/

namespace A067455.P16336287408008629714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (A198954 (A184974 n).toNat)

end

end A067455.P16336287408008629714

/-! ## A067455.P6384845187184559854

`lcm(A029967(n+1)!, A058574(n))`
-/

namespace A067455.P6384845187184559854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A029967 (n + 1)).toNat : ℤ) (A058574 n)

end

end A067455.P6384845187184559854

/-! ## A067455.P792467375013704717

`lcm(A029968(n+1)!, A078802(n))`
-/

namespace A067455.P792467375013704717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A029968 (n + 1)).toNat : ℤ) (A078802 n)

end

end A067455.P792467375013704717

/-! ## A067455.P1415773146308413288

`lcm(A248899(n+1)!, A112187(n))`
-/

namespace A067455.P1415773146308413288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A248899 (n + 1)).toNat : ℤ) (A112187 n)

end

end A067455.P1415773146308413288

/-!
# A067456: Floor( sqrt( sum of the decimal digits of n squared)).

The programs for A067456, the canonical program `A067456.P4645113891199048441` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067456 has offset 0).

The definition of A067456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067456.P4645113891199048441

`floor(sqrt(∑{digits}[n, #²]))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067456

/-- `floor(sqrt(∑{digits}[n, #²]))` -/
def P4645113891199048441.Spec : Prop :=
  ∀ n, (P4645113891199048441.a n : ℤ) = A067456 n

theorem P4645113891199048441.correct : P4645113891199048441.Spec := by
  intro n
  simp only [A067456]

end A067456

/-! ## A067456.P7433971260769002863

`floor(sqrt(A003132(n)))`
-/

namespace A067456.P7433971260769002863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A003132 n)

end

end A067456.P7433971260769002863

namespace A067456

/-- `floor(sqrt(A003132(n)))` -/
def P7433971260769002863.Spec : Prop :=
  ∀ n, P7433971260769002863.a n = A067456 n

end A067456

/-! ## A067456.P5597023527528675895

`A000196(∑{digits}[n, #²])`
-/

namespace A067456.P5597023527528675895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A067456.P5597023527528675895

namespace A067456

/-- `A000196(∑{digits}[n, #²])` -/
def P5597023527528675895.Spec : Prop :=
  ∀ n, P5597023527528675895.a n = A067456 n

end A067456

/-! ## A067456.P7803676599764512324

`A000196(A003132(n))`
-/

namespace A067456.P7803676599764512324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003132 n).toNat

end

end A067456.P7803676599764512324

namespace A067456

/-- `A000196(A003132(n))` -/
def P7803676599764512324.Spec : Prop :=
  ∀ n, P7803676599764512324.a n = A067456 n

end A067456

/-! ## A067456.P15746669588387998735

`A003059(A003132(n)+1)-1`
-/

namespace A067456.P15746669588387998735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A003132 n + 1).toNat - 1

end

end A067456.P15746669588387998735

namespace A067456

/-- `A003059(A003132(n)+1)-1` -/
def P15746669588387998735.Spec : Prop :=
  ∀ n, P15746669588387998735.a n = A067456 n

end A067456

/-! ## A067456.P1697134140437616106

`A000196(A004159(n)+A067552(n)-A069816(n))`
-/

namespace A067456.P1697134140437616106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004159 n + (A067552 n - A069816 n)).toNat

end

end A067456.P1697134140437616106

namespace A067456

/-- `A000196(A004159(n)+A067552(n)-A069816(n))` -/
def P1697134140437616106.Spec : Prop :=
  ∀ n, P1697134140437616106.a n = A067456 n

end A067456

/-! ## A067456.P18043268658868022367

`A000196(A258881(n)-n)`
-/

namespace A067456.P18043268658868022367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A258881 n - (n : ℤ)).toNat

end

end A067456.P18043268658868022367

namespace A067456

/-- `A000196(A258881(n)-n)` -/
def P18043268658868022367.Spec : Prop :=
  ∀ n, P18043268658868022367.a n = A067456 n

end A067456

/-!
# A067457: Smallest n-th power starting with n.

The programs for A067457, there is no canonical definition to state claims against.
-/

/-! ## A067457.P10057784381189084493

`A068001(n+1)^(n+1)`
-/

namespace A067457.P10057784381189084493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068001 (n + 1) ^ (n + 1)

end

end A067457.P10057784381189084493

/-! ## A067457.P5176705117529961211

`root(A068001(n+1), 2/A103517(n))`
-/

namespace A067457.P5176705117529961211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068001 (n + 1) : ℝ) ^ (1 / (2 / (A103517 n : ℚ) : ℝ))

end

end A067457.P5176705117529961211

/-! ## A067457.P673061582587789063

`root(A068001(n+1), 1/A000027(n+1))`
-/

namespace A067457.P673061582587789063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068001 (n + 1) : ℝ) ^ (1 / (1 / (A000027 (n + 1) : ℚ) : ℝ))

end

end A067457.P673061582587789063

/-!
# A067458: Sum of remainders when n is divided by its nonzero digits.

The programs for A067458, there is no canonical definition to state claims against.
-/

/-! ## A067458.P2301719283959995740

`∑{digits}[A347323(n+10), #]`
-/

namespace A067458.P2301719283959995740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347323 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A067458.P2301719283959995740

/-! ## A067458.P5212074472915805074

`A007953(A347323(n+10))`
-/

namespace A067458.P5212074472915805074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A347323 (n + 10)).toNat

end

end A067458.P5212074472915805074

/-! ## A067458.P9516835405289358215

`A088330(A151878(n)+n)`
-/

namespace A067458.P9516835405289358215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 ((A151878 n + (n : ℤ)).toNat + 10)

end

end A067458.P9516835405289358215

/-! ## A067458.P14244420983892699240

`A088330(n)%A326490(n)`
-/

namespace A067458.P14244420983892699240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088330 (n + 10)) (A326490 n)

end

end A067458.P14244420983892699240

/-! ## A067458.P13089492000964266193

`A088330(or(n, A151878(n)))`
-/

namespace A067458.P13089492000964266193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 ((Int.lor (n : ℤ) (A151878 n)).toNat + 10)

end

end A067458.P13089492000964266193

/-! ## A067458.P9471063479632545522

`A088330(xor(n, A151878(n)))`
-/

namespace A067458.P9471063479632545522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 ((Int.xor (n : ℤ) (A151878 n)).toNat + 10)

end

end A067458.P9471063479632545522

/-! ## A067458.P16753803238895073005

`A088330(n)*A151878(A151878(n))`
-/

namespace A067458.P16753803238895073005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 (n + 10) * A151878 (A151878 n).toNat

end

end A067458.P16753803238895073005

/-! ## A067458.P10448266135781828155

`A088330(n)-A088330(A151878(n)²)`
-/

namespace A067458.P10448266135781828155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 (n + 10) - A088330 ((A151878 n ^ 2).toNat + 10)

end

end A067458.P10448266135781828155

/-! ## A067458.P16786825111475928200

`A088330(A055639(A007602(n+1))+n)`
-/

namespace A067458.P16786825111475928200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 ((A055639 (A007602 (n + 1)).toNat + (n : ℤ)).toNat + 10)

end

end A067458.P16786825111475928200

/-! ## A067458.P10714643856692430521

`A088330(A078547(A007602(n+1))+n)`
-/

namespace A067458.P10714643856692430521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088330 ((A078547 (A007602 (n + 1)).toNat + (n : ℤ)).toNat + 10)

end

end A067458.P10714643856692430521

/-!
# A067459: Sum of the remainders when n^2 is divided by squares less than n.

The programs for A067459, the canonical program `A067459.P11641626775103324224` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067459 has offset 1).

The definition of A067459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072516, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067459.P11641626775103324224

`A072516((n+1)²)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A067459

/-- `A072516((n+1)²)` -/
def P11641626775103324224.Spec : Prop :=
  ∀ n, P11641626775103324224.a n = A067459 (n + 1)

theorem P11641626775103324224.correct : P11641626775103324224.Spec := by
  intro n
  simp only [A067459, Nat.add_sub_cancel]

end A067459

/-! ## A067459.P17384423162740601021

`Δ[∑[n]²]-A309125((n+1)²)`
-/

namespace A067459.P17384423162740601021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A309125 ((n + 1) ^ 2)

end

end A067459.P17384423162740601021

namespace A067459

/-- `Δ[∑[n]²]-A309125((n+1)²)` -/
def P17384423162740601021.Spec : Prop :=
  ∀ n, P17384423162740601021.a n = A067459 (n + 1)

end A067459

/-!
# A067460: a(n) = mu(prime(n)-1)+1.

The programs for A067460, the canonical program `A067460.P7460291602574700690` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067460 has offset 1).

The definition of A067460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067460.P5793890621605569434

`A089451(n+1)+1`
-/

namespace A067460.P5793890621605569434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089451 (n + 1) + 1

end

end A067460.P5793890621605569434

namespace A067460

/-- `A089451(n+1)+1` -/
def P5793890621605569434.Spec : Prop :=
  ∀ n, P5793890621605569434.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P7460291602574700690

`A008683(A000040(n+1)-1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067460

/-- `A008683(A000040(n+1)-1)+1` -/
def P7460291602574700690.Spec : Prop :=
  ∀ n, P7460291602574700690.a n = A067460 (n + 1)

theorem P7460291602574700690.correct : P7460291602574700690.Spec := by
  intro n
  simp only [A067460, Nat.add_sub_cancel]

end A067460

/-! ## A067460.P12670351195373437131

`A089496(n+1)+1-A089495(n+1)`
-/

namespace A067460.P12670351195373437131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089496 (n + 1) + (1 - A089495 (n + 1))

end

end A067460.P12670351195373437131

namespace A067460

/-- `A089496(n+1)+1-A089495(n+1)` -/
def P12670351195373437131.Spec : Prop :=
  ∀ n, P12670351195373437131.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P9044726690411906943

`A008683(A278227(n+1))+1`
-/

namespace A067460.P9044726690411906943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278227 (n + 1)).toNat + 1

end

end A067460.P9044726690411906943

namespace A067460

/-- `A008683(A278227(n+1))+1` -/
def P9044726690411906943.Spec : Prop :=
  ∀ n, P9044726690411906943.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P16949245984342559937

`A008683(p?[abs(xor(n, -2))]-1)+1`
-/

namespace A067460.P16949245984342559937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat + 1

end

end A067460.P16949245984342559937

namespace A067460

/-- `A008683(p?[abs(xor(n, -2))]-1)+1` -/
def P16949245984342559937.Spec : Prop :=
  ∀ n, P16949245984342559937.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P17536329418891873801

`A008683(p?[xor(1, n)+1]-1)+1`
-/

namespace A067460.P17536329418891873801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1) + 1

end

end A067460.P17536329418891873801

namespace A067460

/-- `A008683(p?[xor(1, n)+1]-1)+1` -/
def P17536329418891873801.Spec : Prop :=
  ∀ n, P17536329418891873801.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P11352917454934168328

`A008683(p?[n%3+n]-1)+1`
-/

namespace A067460.P11352917454934168328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1) + 1

end

end A067460.P11352917454934168328

namespace A067460

/-- `A008683(p?[n%3+n]-1)+1` -/
def P11352917454934168328.Spec : Prop :=
  ∀ n, P11352917454934168328.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P3471264685538151583

`A008683(A006093(n+1))+1`
-/

namespace A067460.P3471264685538151583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1)).toNat + 1

end

end A067460.P3471264685538151583

namespace A067460

/-- `A008683(A006093(n+1))+1` -/
def P3471264685538151583.Spec : Prop :=
  ∀ n, P3471264685538151583.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P5946818457067106554

`A008683(sqrt(A005722(n+1)))+1`
-/

namespace A067460.P5946818457067106554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A005722 (n + 1) : ℝ))).toNat + 1

end

end A067460.P5946818457067106554

namespace A067460

/-- `A008683(sqrt(A005722(n+1)))+1` -/
def P5946818457067106554.Spec : Prop :=
  ∀ n, P5946818457067106554.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P18415815580418180552

`A008683(record[A000010(n+1)])+1`
-/

namespace A067460.P18415815580418180552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A067460.P18415815580418180552

namespace A067460

/-- `A008683(record[A000010(n+1)])+1` -/
def P18415815580418180552.Spec : Prop :=
  ∀ n, P18415815580418180552.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P12377285570458756834

`A008683(record[A037225(n)])+1`
-/

namespace A067460.P12377285570458756834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A067460.P12377285570458756834

namespace A067460

/-- `A008683(record[A037225(n)])+1` -/
def P12377285570458756834.Spec : Prop :=
  ∀ n, P12377285570458756834.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P1740332073486251224

`A008683(record[A033883(n)])+1`
-/

namespace A067460.P1740332073486251224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A067460.P1740332073486251224

namespace A067460

/-- `A008683(record[A033883(n)])+1` -/
def P1740332073486251224.Spec : Prop :=
  ∀ n, P1740332073486251224.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P15381884073717316196

`A007423(A278227(n+1))`
-/

namespace A067460.P15381884073717316196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A278227 (n + 1)).toNat

end

end A067460.P15381884073717316196

namespace A067460

/-- `A007423(A278227(n+1))` -/
def P15381884073717316196.Spec : Prop :=
  ∀ n, P15381884073717316196.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P7358996940242544794

`A098018(p?[xor(1, n)+1])+1`
-/

namespace A067460.P7358996940242544794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A067460.P7358996940242544794

namespace A067460

/-- `A098018(p?[xor(1, n)+1])+1` -/
def P7358996940242544794.Spec : Prop :=
  ∀ n, P7358996940242544794.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P11340459997931916354

`A007423(p?[xor(1, n)+1]-1)`
-/

namespace A067460.P11340459997931916354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A067460.P11340459997931916354

namespace A067460

/-- `A007423(p?[xor(1, n)+1]-1)` -/
def P11340459997931916354.Spec : Prop :=
  ∀ n, P11340459997931916354.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P1250359485486806511

`A007423(A006093(n+1))`
-/

namespace A067460.P1250359485486806511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A006093 (n + 1)).toNat

end

end A067460.P1250359485486806511

namespace A067460

/-- `A007423(A006093(n+1))` -/
def P1250359485486806511.Spec : Prop :=
  ∀ n, P1250359485486806511.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P6301145822216819027

`A007423(record[A000010(n+1)])`
-/

namespace A067460.P6301145822216819027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067460.P6301145822216819027

namespace A067460

/-- `A007423(record[A000010(n+1)])` -/
def P6301145822216819027.Spec : Prop :=
  ∀ n, P6301145822216819027.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P9877109504314619622

`A098018(A000040(n+1))+1`
-/

namespace A067460.P9877109504314619622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098018 (A000040 (n + 1)).toNat + 1

end

end A067460.P9877109504314619622

namespace A067460

/-- `A098018(A000040(n+1))+1` -/
def P9877109504314619622.Spec : Prop :=
  ∀ n, P9877109504314619622.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P6283566414018642940

`A343910(A006005(n+1))+1`
-/

namespace A067460.P6283566414018642940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343910 (A006005 (n + 1)).toNat + 1

end

end A067460.P6283566414018642940

namespace A067460

/-- `A343910(A006005(n+1))+1` -/
def P6283566414018642940.Spec : Prop :=
  ∀ n, P6283566414018642940.a n = A067460 (n + 1)

end A067460

/-! ## A067460.P16705460128159760433

`A007423(A000040(n+1)-1)`
-/

namespace A067460.P16705460128159760433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A000040 (n + 1) - 1).toNat

end

end A067460.P16705460128159760433

namespace A067460

/-- `A007423(A000040(n+1)-1)` -/
def P16705460128159760433.Spec : Prop :=
  ∀ n, P16705460128159760433.a n = A067460 (n + 1)

end A067460

/-!
# A067461: a(n) = mu(prime(n)+1)+1.

The programs for A067461, the canonical program `A067461.P14669510870591473496` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067461 has offset 1).

The definition of A067461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A067461.P14669510870591473496

`A008683(A000040(n+1)+1)+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067461

/-- `A008683(A000040(n+1)+1)+1` -/
def P14669510870591473496.Spec : Prop :=
  ∀ n, P14669510870591473496.a n = A067461 (n + 1)

theorem P14669510870591473496.correct : P14669510870591473496.Spec := by
  intro n
  simp only [A067461, Nat.add_sub_cancel]

end A067461

/-! ## A067461.P14210839454157303699

`A089495(n+1)+1`
-/

namespace A067461.P14210839454157303699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089495 (n + 1) + 1

end

end A067461.P14210839454157303699

namespace A067461

/-- `A089495(n+1)+1` -/
def P14210839454157303699.Spec : Prop :=
  ∀ n, P14210839454157303699.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P11258357802485748573

`A089496(n+1)+1-A089451(n+1)`
-/

namespace A067461.P11258357802485748573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089496 (n + 1) + (1 - A089451 (n + 1))

end

end A067461.P11258357802485748573

namespace A067461

/-- `A089496(n+1)+1-A089451(n+1)` -/
def P11258357802485748573.Spec : Prop :=
  ∀ n, P11258357802485748573.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P13964779737808963135

`A008683(A278228(n+1))+1`
-/

namespace A067461.P13964779737808963135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278228 (n + 1)).toNat + 1

end

end A067461.P13964779737808963135

namespace A067461

/-- `A008683(A278228(n+1))+1` -/
def P13964779737808963135.Spec : Prop :=
  ∀ n, P13964779737808963135.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P15928925405757043345

`A008683(p?[abs(xor(n, -2))]+1)+1`
-/

namespace A067461.P15928925405757043345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat + 1

end

end A067461.P15928925405757043345

namespace A067461

/-- `A008683(p?[abs(xor(n, -2))]+1)+1` -/
def P15928925405757043345.Spec : Prop :=
  ∀ n, P15928925405757043345.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P15476053567795061010

`A008683(p?[xor(1, n)+1]+1)+1`
-/

namespace A067461.P15476053567795061010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1

end

end A067461.P15476053567795061010

namespace A067461

/-- `A008683(p?[xor(1, n)+1]+1)+1` -/
def P15476053567795061010.Spec : Prop :=
  ∀ n, P15476053567795061010.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P11824817312084468314

`A008683(p?[n%3+n]+1)+1`
-/

namespace A067461.P11824817312084468314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1

end

end A067461.P11824817312084468314

namespace A067461

/-- `A008683(p?[n%3+n]+1)+1` -/
def P11824817312084468314.Spec : Prop :=
  ∀ n, P11824817312084468314.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P2391337246886652740

`A008683(p?[round(sqrt(n)+n)]+1)+1`
-/

namespace A067461.P2391337246886652740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat + 1

end

end A067461.P2391337246886652740

namespace A067461

/-- `A008683(p?[round(sqrt(n)+n)]+1)+1` -/
def P2391337246886652740.Spec : Prop :=
  ∀ n, P2391337246886652740.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P971082642613983205

`A008683(A008864(n+1))+1`
-/

namespace A067461.P971082642613983205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008864 (n + 1)).toNat + 1

end

end A067461.P971082642613983205

namespace A067461

/-- `A008683(A008864(n+1))+1` -/
def P971082642613983205.Spec : Prop :=
  ∀ n, P971082642613983205.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P16911120145148257814

`A008683(A028815(n+1))+1`
-/

namespace A067461.P16911120145148257814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028815 (n + 1)).toNat + 1

end

end A067461.P16911120145148257814

namespace A067461

/-- `A008683(A028815(n+1))+1` -/
def P16911120145148257814.Spec : Prop :=
  ∀ n, P16911120145148257814.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P16926057141284000271

`A008683(A299763(n+2))+1`
-/

namespace A067461.P16926057141284000271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A299763 (n + 2)).toNat + 1

end

end A067461.P16926057141284000271

namespace A067461

/-- `A008683(A299763(n+2))+1` -/
def P16926057141284000271.Spec : Prop :=
  ∀ n, P16926057141284000271.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P8174631273621617205

`A008683(sqrt(A110833(n+1)))+1`
-/

namespace A067461.P8174631273621617205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A110833 (n + 1) : ℝ))).toNat + 1

end

end A067461.P8174631273621617205

namespace A067461

/-- `A008683(sqrt(A110833(n+1)))+1` -/
def P8174631273621617205.Spec : Prop :=
  ∀ n, P8174631273621617205.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P4347238033404256429

`A127440(A000040(n+1))`
-/

namespace A067461.P4347238033404256429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (A000040 (n + 1)).toNat

end

end A067461.P4347238033404256429

namespace A067461

/-- `A127440(A000040(n+1))` -/
def P4347238033404256429.Spec : Prop :=
  ∀ n, P4347238033404256429.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P6200406711605262474

`A127440(A008578(n+2))`
-/

namespace A067461.P6200406711605262474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (A008578 (n + 2)).toNat

end

end A067461.P6200406711605262474

namespace A067461

/-- `A127440(A008578(n+2))` -/
def P6200406711605262474.Spec : Prop :=
  ∀ n, P6200406711605262474.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P7147992132924255390

`A127440(A182986(n+2))`
-/

namespace A067461.P7147992132924255390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (A182986 (n + 2)).toNat

end

end A067461.P7147992132924255390

namespace A067461

/-- `A127440(A182986(n+2))` -/
def P7147992132924255390.Spec : Prop :=
  ∀ n, P7147992132924255390.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P4563338264493551615

`A127440(record[A006530(n+2)])`
-/

namespace A067461.P4563338264493551615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067461.P4563338264493551615

namespace A067461

/-- `A127440(record[A006530(n+2)])` -/
def P4563338264493551615.Spec : Prop :=
  ∀ n, P4563338264493551615.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P18417134218723343411

`A127440(record[A020639(n+2)])`
-/

namespace A067461.P18417134218723343411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A067461.P18417134218723343411

namespace A067461

/-- `A127440(record[A020639(n+2)])` -/
def P18417134218723343411.Spec : Prop :=
  ∀ n, P18417134218723343411.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P9672695568571179914

`A127440(A006093(n+1)+1)`
-/

namespace A067461.P9672695568571179914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (A006093 (n + 1) + 1).toNat

end

end A067461.P9672695568571179914

namespace A067461

/-- `A127440(A006093(n+1)+1)` -/
def P9672695568571179914.Spec : Prop :=
  ∀ n, P9672695568571179914.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P9067607902792754778

`A099991(A111333(n+1))+1`
-/

namespace A067461.P9067607902792754778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099991 (A111333 (n + 1)).toNat + 1

end

end A067461.P9067607902792754778

namespace A067461

/-- `A099991(A111333(n+1))+1` -/
def P9067607902792754778.Spec : Prop :=
  ∀ n, P9067607902792754778.a n = A067461 (n + 1)

end A067461

/-! ## A067461.P6111069419753487537

`A007423(A278228(n+1))`
-/

namespace A067461.P6111069419753487537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A278228 (n + 1)).toNat

end

end A067461.P6111069419753487537

namespace A067461

/-- `A007423(A278228(n+1))` -/
def P6111069419753487537.Spec : Prop :=
  ∀ n, P6111069419753487537.a n = A067461 (n + 1)

end A067461

/-!
# A067462: a(n) = (1! + 2! + ... + (n-1)!) mod n.

The programs for A067462, the canonical program `A067462.P13589642650643839564` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067462 has offset 1).

The definition of A067462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067462.P6456101752271123761

`(A226570(n+1)+1)%(n+1)`
-/

namespace A067462.P6456101752271123761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226570 (n + 1) + 1) (n + 1 : ℤ)

end

end A067462.P6456101752271123761

namespace A067462

/-- `(A226570(n+1)+1)%(n+1)` -/
def P6456101752271123761.Spec : Prop :=
  ∀ n, P6456101752271123761.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P13589642650643839564

`(A049782(n+1)+n)%(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067462

/-- `(A049782(n+1)+n)%(n+1)` -/
def P13589642650643839564.Spec : Prop :=
  ∀ n, P13589642650643839564.a n = A067462 (n + 1)

theorem P13589642650643839564.correct : P13589642650643839564.Spec := by
  intro n
  simp only [A067462, Nat.add_sub_cancel]

end A067462

/-! ## A067462.P16808492301202253744

`A134824(n)+A049782(n+1)`
-/

namespace A067462.P16808492301202253744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A049782 (n + 1)

end

end A067462.P16808492301202253744

namespace A067462

/-- `A134824(n)+A049782(n+1)` -/
def P16808492301202253744.Spec : Prop :=
  ∀ n, P16808492301202253744.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P4375743985620886436

`abs(A049782(n+1)-A057427(n))`
-/

namespace A067462.P4375743985620886436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049782 (n + 1) - A057427 n|

end

end A067462.P4375743985620886436

namespace A067462

/-- `abs(A049782(n+1)-A057427(n))` -/
def P4375743985620886436.Spec : Prop :=
  ∀ n, P4375743985620886436.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P12220784050181733471

`n-A216369(2*(n+1))%(n+1)`
-/

namespace A067462.P12220784050181733471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A216369 (2 * (n + 1))) (n + 1 : ℤ)

end

end A067462.P12220784050181733471

namespace A067462

/-- `n-A216369(2*(n+1))%(n+1)` -/
def P12220784050181733471.Spec : Prop :=
  ∀ n, P12220784050181733471.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P1010385537798989778

`A025581(A000124(A049782(n+1)))%A000124(n)`
-/

namespace A067462.P1010385537798989778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 (A000124 (A049782 (n + 1)).toNat).toNat) (A000124 n)

end

end A067462.P1010385537798989778

namespace A067462

/-- `A025581(A000124(A049782(n+1)))%A000124(n)` -/
def P1010385537798989778.Spec : Prop :=
  ∀ n, P1010385537798989778.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P5628252704231060266

`A025581(∑[n]-A049782(n+1))`
-/

namespace A067462.P5628252704231060266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A049782 (n + 1)).toNat

end

end A067462.P5628252704231060266

namespace A067462

/-- `A025581(∑[n]-A049782(n+1))` -/
def P5628252704231060266.Spec : Prop :=
  ∀ n, P5628252704231060266.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P2671385472514196880

`A025581(A000124(n)-(A049782(n+1)+1))`
-/

namespace A067462.P2671385472514196880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000124 n - (A049782 (n + 1) + 1)).toNat

end

end A067462.P2671385472514196880

namespace A067462

/-- `A025581(A000124(n)-(A049782(n+1)+1))` -/
def P2671385472514196880.Spec : Prop :=
  ∀ n, P2671385472514196880.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P4875353346959268827

`A002262(A226570(n+1)+A000124(n))`
-/

namespace A067462.P4875353346959268827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A226570 (n + 1) + A000124 n).toNat

end

end A067462.P4875353346959268827

namespace A067462

/-- `A002262(A226570(n+1)+A000124(n))` -/
def P4875353346959268827.Spec : Prop :=
  ∀ n, P4875353346959268827.a n = A067462 (n + 1)

end A067462

/-! ## A067462.P18001645175072928781

`A002262(A226570(n+1)+A133263(n)-1)`
-/

namespace A067462.P18001645175072928781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A226570 (n + 1) + (A133263 n - 1)).toNat

end

end A067462.P18001645175072928781

namespace A067462

/-- `A002262(A226570(n+1)+A133263(n)-1)` -/
def P18001645175072928781.Spec : Prop :=
  ∀ n, P18001645175072928781.a n = A067462 (n + 1)

end A067462

/-!
# A067463: Primes p such that p+sigma(p+1) is prime.

The programs for A067463, the canonical program `A067463.P10661731570235801234` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067463 has offset 1).

The definition of A067463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067463.P10661731570235801234

`p?[eq[1, A001222(A000203(n+1)+n)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A067463

/-- `p?[eq[1, A001222(A000203(n+1)+n)]]` -/
def P10661731570235801234.Spec : Prop :=
  ∀ n, (P10661731570235801234.a n : ℤ) = A067463 (n + 1)

theorem P10661731570235801234.correct : P10661731570235801234.Spec := by
  intro n
  simp only [A067463, Nat.add_sub_cancel]

end A067463

/-! ## A067463.P4586022561305244986

`p?[eq[2, A000005(A000203(n+1)+n)]]`
-/

namespace A067463.P4586022561305244986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067463.P4586022561305244986

namespace A067463

/-- `p?[eq[2, A000005(A000203(n+1)+n)]]` -/
def P4586022561305244986.Spec : Prop :=
  ∀ n, (P4586022561305244986.a n : ℤ) = A067463 (n + 1)

end A067463

/-! ## A067463.P13160416734315240285

`p?[lt[n, A020639(A000203(n+1)+n)]]`
-/

namespace A067463.P13160416734315240285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067463.P13160416734315240285

namespace A067463

/-- `p?[lt[n, A020639(A000203(n+1)+n)]]` -/
def P13160416734315240285.Spec : Prop :=
  ∀ n, (P13160416734315240285.a n : ℤ) = A067463 (n + 1)

end A067463

/-! ## A067463.P9265312966738734782

`lt[A322900(n), A000005(A009205(n+1))]`
-/

namespace A067463.P9265312966738734782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009205 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067463.P9265312966738734782

namespace A067463

/-- `lt[A322900(n), A000005(A009205(n+1))]` -/
def P9265312966738734782.Spec : Prop :=
  ∀ n, (P9265312966738734782.a n : ℤ) = A067463 (n + 1)

end A067463

/-! ## A067463.P12793442196542700266

`A000040(lt[A340244(n+1), A140735(3*(n+1))])`
-/

namespace A067463.P12793442196542700266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140735 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A067463.P12793442196542700266

namespace A067463

/-- `A000040(lt[A340244(n+1), A140735(3*(n+1))])` -/
def P12793442196542700266.Spec : Prop :=
  ∀ n, P12793442196542700266.a n = A067463 (n + 1)

end A067463

/-!
# A067464: Primes p such that sigma(p-1)+sigma(p+1) is prime.

The programs for A067464, there is no canonical definition to state claims against.
-/

/-! ## A067464.P14588695058396101068

`p?[A208852(n+1)²+1]`
-/

namespace A067464.P14588695058396101068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208852 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067464.P14588695058396101068

/-! ## A067464.P14790106708851565051

`p?[A002522(n)^(val(n+1, 5)+1)]`
-/

namespace A067464.P14790106708851565051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n ^ (SequenceMachineLib.valuation (n + 1) 5 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067464.P14790106708851565051

/-!
# A067465: Numbers k such that sigma(k^2+1) is a perfect square.

The programs for A067465, there is no canonical definition to state claims against.
-/

/-! ## A067465.P1249390517018640961

`eq[1, A007913(A193433(n))]`
-/

namespace A067465.P1249390517018640961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A193433 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067465.P1249390517018640961

/-!
# A067466: Primes p such that p-1 has 2 distinct prime factors.

The programs for A067466, the canonical program `A067466.P3837231332204403752` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067466 has offset 1).

The definition of A067466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067466.P1470719094551484340

`∩[A077500(n+1), A274915(n+1)]`
-/

namespace A067466.P1470719094551484340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P1470719094551484340

namespace A067466

/-- `∩[A077500(n+1), A274915(n+1)]` -/
def P1470719094551484340.Spec : Prop :=
  ∀ n, (P1470719094551484340.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P2535582373835695392

`p?[lcm(n+1, A001221(A000010(n+1)))-(n+1)]`
-/

namespace A067466.P2535582373835695392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A001221 (A000010 (n + 1)).toNat) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067466.P2535582373835695392

namespace A067466

/-- `p?[lcm(n+1, A001221(A000010(n+1)))-(n+1)]` -/
def P2535582373835695392.Spec : Prop :=
  ∀ n, P2535582373835695392.a n = A067466 (n + 1)

end A067466

/-! ## A067466.P3837231332204403752

`p?[A100367(n+1)+1]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A067466

/-- `p?[A100367(n+1)+1]` -/
def P3837231332204403752.Spec : Prop :=
  ∀ n, P3837231332204403752.a n = A067466 (n + 1)

theorem P3837231332204403752.correct : P3837231332204403752.Spec := by
  intro n
  simp only [A067466, Nat.add_sub_cancel]

end A067466

/-! ## A067466.P5162571549593527795

`∩[A000040(n+1), A100367(n+1)+1]`
-/

namespace A067466.P5162571549593527795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P5162571549593527795

namespace A067466

/-- `∩[A000040(n+1), A100367(n+1)+1]` -/
def P5162571549593527795.Spec : Prop :=
  ∀ n, (P5162571549593527795.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P8878426865146833878

`∩[A093515(n+1), A100367(n+1)+1]`
-/

namespace A067466.P8878426865146833878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P8878426865146833878

namespace A067466

/-- `∩[A093515(n+1), A100367(n+1)+1]` -/
def P8878426865146833878.Spec : Prop :=
  ∀ n, (P8878426865146833878.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P7029379458733119265

`p?[eq[A001221(n+1), A020639(n+1)]+2]`
-/

namespace A067466.P7029379458733119265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067466.P7029379458733119265

namespace A067466

/-- `p?[eq[A001221(n+1), A020639(n+1)]+2]` -/
def P7029379458733119265.Spec : Prop :=
  ∀ n, (P7029379458733119265.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P7558855626024671448

`∩[A038550(n+1), A100367(n+1)+1]`
-/

namespace A067466.P7558855626024671448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P7558855626024671448

namespace A067466

/-- `∩[A038550(n+1), A100367(n+1)+1]` -/
def P7558855626024671448.Spec : Prop :=
  ∀ n, (P7558855626024671448.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P12650971942616766979

`∩[A093641(n+1), A100367(n+1)+1]`
-/

namespace A067466.P12650971942616766979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P12650971942616766979

namespace A067466

/-- `∩[A093641(n+1), A100367(n+1)+1]` -/
def P12650971942616766979.Spec : Prop :=
  ∀ n, (P12650971942616766979.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P4570276851373580309

`p?[A336101(n+1)+1]`
-/

namespace A067466.P4570276851373580309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067466.P4570276851373580309

namespace A067466

/-- `p?[A336101(n+1)+1]` -/
def P4570276851373580309.Spec : Prop :=
  ∀ n, P4570276851373580309.a n = A067466 (n + 1)

end A067466

/-! ## A067466.P11048176275764360596

`p?[(n+1)*a(A001221(n))]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A067466.P11048176275764360596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 1] fun n f1 =>
  (n + 1) * f1 (A001221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067466.P11048176275764360596

namespace A067466

/-- `p?[(n+1)*a(A001221(n))]` -/
def P11048176275764360596.Spec : Prop :=
  ∀ n, (P11048176275764360596.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P4522601058244427327

`∩[A077500(n+1), A292315(n+1)]`
-/

namespace A067466.P4522601058244427327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P4522601058244427327

namespace A067466

/-- `∩[A077500(n+1), A292315(n+1)]` -/
def P4522601058244427327.Spec : Prop :=
  ∀ n, (P4522601058244427327.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P327193114297422751

`∩[A077500(n+1), A372781(n+1)]`
-/

namespace A067466.P327193114297422751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P327193114297422751

namespace A067466

/-- `∩[A077500(n+1), A372781(n+1)]` -/
def P327193114297422751.Spec : Prop :=
  ∀ n, (P327193114297422751.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P3401876258138090804

`p?[A007774(n+1)+1]`
-/

namespace A067466.P3401876258138090804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067466.P3401876258138090804

namespace A067466

/-- `p?[A007774(n+1)+1]` -/
def P3401876258138090804.Spec : Prop :=
  ∀ n, P3401876258138090804.a n = A067466 (n + 1)

end A067466

/-! ## A067466.P4369294247514811535

`p?[eq[2, A001221(n+1)]+2]`
-/

namespace A067466.P4369294247514811535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067466.P4369294247514811535

namespace A067466

/-- `p?[eq[2, A001221(n+1)]+2]` -/
def P4369294247514811535.Spec : Prop :=
  ∀ n, (P4369294247514811535.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P2394801041374043148

`record[A020639(eq[2, A001221(n+1)]+2)]`
-/

namespace A067466.P2394801041374043148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067466.P2394801041374043148

namespace A067466

/-- `record[A020639(eq[2, A001221(n+1)]+2)]` -/
def P2394801041374043148.Spec : Prop :=
  ∀ n, P2394801041374043148.a n = A067466 (n + 1)

end A067466

/-! ## A067466.P6688870367070705938

`∩[A007774(n+1)+1, A093515(n+1)]`
-/

namespace A067466.P6688870367070705938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P6688870367070705938

namespace A067466

/-- `∩[A007774(n+1)+1, A093515(n+1)]` -/
def P6688870367070705938.Spec : Prop :=
  ∀ n, (P6688870367070705938.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P8708361546354377099

`∩[A055741(n+1), A077500(n+1)]`
-/

namespace A067466.P8708361546354377099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P8708361546354377099

namespace A067466

/-- `∩[A055741(n+1), A077500(n+1)]` -/
def P8708361546354377099.Spec : Prop :=
  ∀ n, (P8708361546354377099.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P18245416950324019294

`p?[(n+2)*A297155(n+1)]`
-/

namespace A067466.P18245416950324019294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A297155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067466.P18245416950324019294

namespace A067466

/-- `p?[(n+2)*A297155(n+1)]` -/
def P18245416950324019294.Spec : Prop :=
  ∀ n, P18245416950324019294.a n = A067466 (n + 1)

end A067466

/-! ## A067466.P6724602551892781642

`∩[A004169(n+1), A077500(n+1)]`
-/

namespace A067466.P6724602551892781642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P6724602551892781642

namespace A067466

/-- `∩[A004169(n+1), A077500(n+1)]` -/
def P6724602551892781642.Spec : Prop :=
  ∀ n, (P6724602551892781642.a n : ℤ) = A067466 (n + 1)

end A067466

/-! ## A067466.P18183722318492871914

`∩[A072823(n+1), A077500(n+1)]`
-/

namespace A067466.P18183722318492871914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067466.P18183722318492871914

namespace A067466

/-- `∩[A072823(n+1), A077500(n+1)]` -/
def P18183722318492871914.Spec : Prop :=
  ∀ n, (P18183722318492871914.a n : ℤ) = A067466 (n + 1)

end A067466

/-!
# A067467: Primes p such that p-1 has 3 distinct prime factors.

The programs for A067467, the canonical program `A067467.P5397239229491418573` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067467 has offset 1).

The definition of A067467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067467.P5397239229491418573

`p?[(n+1)*(A001221(A000010(n+1))-2)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A067467

/-- `p?[(n+1)*(A001221(A000010(n+1))-2)]` -/
def P5397239229491418573.Spec : Prop :=
  ∀ n, P5397239229491418573.a n = A067467 (n + 1)

theorem P5397239229491418573.correct : P5397239229491418573.Spec := by
  intro n
  simp only [A067467, Nat.add_sub_cancel]

end A067467

/-! ## A067467.P16862444394115128065

`p?[A033992(n+1)+1]`
-/

namespace A067467.P16862444394115128065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067467.P16862444394115128065

namespace A067467

/-- `p?[A033992(n+1)+1]` -/
def P16862444394115128065.Spec : Prop :=
  ∀ n, P16862444394115128065.a n = A067467 (n + 1)

end A067467

/-! ## A067467.P14213951130977391134

`p?[A214195(n+2)+1]`
-/

namespace A067467.P14213951130977391134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067467.P14213951130977391134

namespace A067467

/-- `p?[A214195(n+2)+1]` -/
def P14213951130977391134.Spec : Prop :=
  ∀ n, P14213951130977391134.a n = A067467 (n + 1)

end A067467

/-! ## A067467.P13739518654966794119

`record[A020639(A033992(n+1)+1)]`
-/

namespace A067467.P13739518654966794119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033992 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067467.P13739518654966794119

namespace A067467

/-- `record[A020639(A033992(n+1)+1)]` -/
def P13739518654966794119.Spec : Prop :=
  ∀ n, P13739518654966794119.a n = A067467 (n + 1)

end A067467

/-! ## A067467.P8707138422597381403

`record[A006530(eq[3, A001221(n+1)]+2)]`
-/

namespace A067467.P8707138422597381403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067467.P8707138422597381403

namespace A067467

/-- `record[A006530(eq[3, A001221(n+1)]+2)]` -/
def P8707138422597381403.Spec : Prop :=
  ∀ n, P8707138422597381403.a n = A067467 (n + 1)

end A067467

/-! ## A067467.P5786588010460722049

`record[A020639(eq[3, A001221(n+1)]+2)]`
-/

namespace A067467.P5786588010460722049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067467.P5786588010460722049

namespace A067467

/-- `record[A020639(eq[3, A001221(n+1)]+2)]` -/
def P5786588010460722049.Spec : Prop :=
  ∀ n, P5786588010460722049.a n = A067467 (n + 1)

end A067467

/-! ## A067467.P522845057250673268

`p?[eq[3, A001222(A007947(n+1))]+2]`
-/

namespace A067467.P522845057250673268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067467.P522845057250673268

namespace A067467

/-- `p?[eq[3, A001222(A007947(n+1))]+2]` -/
def P522845057250673268.Spec : Prop :=
  ∀ n, (P522845057250673268.a n : ℤ) = A067467 (n + 1)

end A067467

/-! ## A067467.P6779909337394659053

`∩[A033992(n+1)+1, A093515(n+1)]`
-/

namespace A067467.P6779909337394659053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067467.P6779909337394659053

namespace A067467

/-- `∩[A033992(n+1)+1, A093515(n+1)]` -/
def P6779909337394659053.Spec : Prop :=
  ∀ n, (P6779909337394659053.a n : ℤ) = A067467 (n + 1)

end A067467

/-! ## A067467.P5228564757405238265

`∩[A093515(n+2), A214195(n+2)+1]`
-/

namespace A067467.P5228564757405238265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A067467.P5228564757405238265

namespace A067467

/-- `∩[A093515(n+2), A214195(n+2)+1]` -/
def P5228564757405238265.Spec : Prop :=
  ∀ n, (P5228564757405238265.a n : ℤ) = A067467 (n + 1)

end A067467

/-! ## A067467.P22873786399165499

`p?[eq[2, A005087(n+1)]+2]`
-/

namespace A067467.P22873786399165499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A067467.P22873786399165499

namespace A067467

/-- `p?[eq[2, A005087(n+1)]+2]` -/
def P22873786399165499.Spec : Prop :=
  ∀ n, (P22873786399165499.a n : ℤ) = A067467 (n + 1)

end A067467

/-! ## A067467.P17090171368430757049

`p?[A004442(A033992(n+1))]`
-/

namespace A067467.P17090171368430757049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A033992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067467.P17090171368430757049

namespace A067467

/-- `p?[A004442(A033992(n+1))]` -/
def P17090171368430757049.Spec : Prop :=
  ∀ n, P17090171368430757049.a n = A067467 (n + 1)

end A067467

/-! ## A067467.P2081636720423131289

`record[A014963(A033992(n+1)+1)]`
-/

namespace A067467.P2081636720423131289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A033992 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067467.P2081636720423131289

namespace A067467

/-- `record[A014963(A033992(n+1)+1)]` -/
def P2081636720423131289.Spec : Prop :=
  ∀ n, P2081636720423131289.a n = A067467 (n + 1)

end A067467

/-!
# A067469: Numbers k such that 2 is the first digit of 2^k.

The programs for A067469, the canonical program `A067469.P1772719252959586475` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067469 has offset 1).

The definition of A067469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A067469.P1772719252959586475

`eq[2, A008952(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A067469

/-- `eq[2, A008952(n)]` -/
def P1772719252959586475.Spec : Prop :=
  ∀ n, (P1772719252959586475.a n : ℤ) = A067469 (n + 1)

theorem P1772719252959586475.correct : P1772719252959586475.Spec := by
  intro n
  simp only [A067469, Nat.add_sub_cancel]

end A067469

/-! ## A067469.P16413321564628482268

`eq[2, A309735(n+1)]+1`
-/

namespace A067469.P16413321564628482268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067469.P16413321564628482268

namespace A067469

/-- `eq[2, A309735(n+1)]+1` -/
def P16413321564628482268.Spec : Prop :=
  ∀ n, (P16413321564628482268.a n : ℤ) = A067469 (n + 1)

end A067469

/-! ## A067469.P9670758804114768643

`eq[2, A000030(A247243(n+1))]`
-/

namespace A067469.P9670758804114768643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067469.P9670758804114768643

namespace A067469

/-- `eq[2, A000030(A247243(n+1))]` -/
def P9670758804114768643.Spec : Prop :=
  ∀ n, (P9670758804114768643.a n : ℤ) = A067469 (n + 1)

end A067469

/-! ## A067469.P6855707562780304638

`log2(A067480(n+1))`
-/

namespace A067469.P6855707562780304638
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A067480 (n + 1) : ℝ)

end

end A067469.P6855707562780304638

namespace A067469

/-- `log2(A067480(n+1))` -/
def P6855707562780304638.Spec : Prop :=
  ∀ n, P6855707562780304638.a n = (A067469 (n + 1) : ℝ)

end A067469

/-! ## A067469.P15182251947141482571

`eq[2, A004094(n)%10]`
-/

namespace A067469.P15182251947141482571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004094 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067469.P15182251947141482571

namespace A067469

/-- `eq[2, A004094(n)%10]` -/
def P15182251947141482571.Spec : Prop :=
  ∀ n, (P15182251947141482571.a n : ℤ) = A067469 (n + 1)

end A067469

/-!
# A067470: Smallest n-digit n-th power.

The programs for A067470, there is no canonical definition to state claims against.
-/

/-! ## A067470.P6357309354156670290

`ceil(10^(n/(n+1)))^(n+1)`
-/

namespace A067470.P6357309354156670290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / (n + 1 : ℚ) : ℝ)⌉ ^ (n + 1)

end

end A067470.P6357309354156670290

/-! ## A067470.P7339907662929683319

`A067471(n+1)^n*A067471(n+1)`
-/

namespace A067470.P7339907662929683319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067471 (n + 1) ^ n * A067471 (n + 1)

end

end A067470.P7339907662929683319

/-!
# A067472: Smallest n-digit square starting with 2.

The programs for A067472, the canonical program `A067472.P6719527458701129361` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067472 has offset 2).

The definition of A067472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067472.P6719527458701129361

`ceil(sqrt(2*10^(n+1)))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067472

/-- `ceil(sqrt(2*10^(n+1)))²` -/
def P6719527458701129361.Spec : Prop :=
  ∀ n, P6719527458701129361.a n = A067472 (n + 2)

theorem P6719527458701129361.correct : P6719527458701129361.Spec := by
  intro n
  simp only [A067472, Nat.add_sub_cancel]

end A067472

/-! ## A067472.P13385097795056985612

`A035069(n+1)^2`
-/

namespace A067472.P13385097795056985612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (n + 1) ^ 2

end

end A067472.P13385097795056985612

namespace A067472

/-- `A035069(n+1)^2` -/
def P13385097795056985612.Spec : Prop :=
  ∀ n, P13385097795056985612.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P18019110618729426479

`record[A035069(A002260(n+1))²]`
-/

namespace A067472.P18019110618729426479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (A002260 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067472.P18019110618729426479

namespace A067472

/-- `record[A035069(A002260(n+1))²]` -/
def P18019110618729426479.Spec : Prop :=
  ∀ n, P18019110618729426479.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P7309083710226463621

`record[A035069(A004737(n+1))²]`
-/

namespace A067472.P7309083710226463621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (A004737 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067472.P7309083710226463621

namespace A067472

/-- `record[A035069(A004737(n+1))²]` -/
def P7309083710226463621.Spec : Prop :=
  ∀ n, P7309083710226463621.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P9130026766325196961

`lcm(A035069(n+1)², A033999(n))`
-/

namespace A067472.P9130026766325196961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035069 (n + 1) ^ 2) (A033999 n)

end

end A067472.P9130026766325196961

namespace A067472

/-- `lcm(A035069(n+1)², A033999(n))` -/
def P9130026766325196961.Spec : Prop :=
  ∀ n, (P9130026766325196961.a n : ℤ) = A067472 (n + 2)

end A067472

/-! ## A067472.P14729766716953394960

`or(A035069(n+1)², A000007(n))`
-/

namespace A067472.P14729766716953394960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035069 (n + 1) ^ 2) (A000007 n)

end

end A067472.P14729766716953394960

namespace A067472

/-- `or(A035069(n+1)², A000007(n))` -/
def P14729766716953394960.Spec : Prop :=
  ∀ n, P14729766716953394960.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P14858957931557555243

`A035363(2*n+1)+A035069(n+1)²`
-/

namespace A067472.P14858957931557555243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) + A035069 (n + 1) ^ 2

end

end A067472.P14858957931557555243

namespace A067472

/-- `A035363(2*n+1)+A035069(n+1)²` -/
def P14858957931557555243.Spec : Prop :=
  ∀ n, P14858957931557555243.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P13366283245152199371

`A035069(n+1)²*A001511(2*n+1)`
-/

namespace A067472.P13366283245152199371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (n + 1) ^ 2 * A001511 (2 * n + 1)

end

end A067472.P13366283245152199371

namespace A067472

/-- `A035069(n+1)²*A001511(2*n+1)` -/
def P13366283245152199371.Spec : Prop :=
  ∀ n, P13366283245152199371.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P3764033912342862952

`A035069(n+1)²*A014963(A008458(n))`
-/

namespace A067472.P3764033912342862952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (n + 1) ^ 2 * A014963 (A008458 n).toNat

end

end A067472.P3764033912342862952

namespace A067472

/-- `A035069(n+1)²*A014963(A008458(n))` -/
def P3764033912342862952.Spec : Prop :=
  ∀ n, P3764033912342862952.a n = A067472 (n + 2)

end A067472

/-! ## A067472.P16855078531665902955

`record[A035069(A002260(n+1))]*A035069(n+1)`
-/

namespace A067472.P16855078531665902955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035069 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035069 (n + 1)

end

end A067472.P16855078531665902955

namespace A067472

/-- `record[A035069(A002260(n+1))]*A035069(n+1)` -/
def P16855078531665902955.Spec : Prop :=
  ∀ n, P16855078531665902955.a n = A067472 (n + 2)

end A067472

/-!
# A067473: Smallest n-digit square starting with 3.

The programs for A067473, the canonical program `A067473.P6889147784083757504` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067473 has offset 2).

The definition of A067473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067473.P6889147784083757504

`ceil(sqrt(3*10^(n+1)))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067473

/-- `ceil(sqrt(3*10^(n+1)))²` -/
def P6889147784083757504.Spec : Prop :=
  ∀ n, P6889147784083757504.a n = A067473 (n + 2)

theorem P6889147784083757504.correct : P6889147784083757504.Spec := by
  intro n
  simp only [A067473, Nat.add_sub_cancel]

end A067473

/-! ## A067473.P12744917794436600632

`A035070(n+1)^2`
-/

namespace A067473.P12744917794436600632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035070 (n + 1) ^ 2

end

end A067473.P12744917794436600632

namespace A067473

/-- `A035070(n+1)^2` -/
def P12744917794436600632.Spec : Prop :=
  ∀ n, P12744917794436600632.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P9426608299753665460

`ceil(sqrt(A198698(n+1)))^2`
-/

namespace A067473.P9426608299753665460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A198698 (n + 1) : ℝ)⌉ ^ 2

end

end A067473.P9426608299753665460

namespace A067473

/-- `ceil(sqrt(A198698(n+1)))^2` -/
def P9426608299753665460.Spec : Prop :=
  ∀ n, P9426608299753665460.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P7317024284318780840

`(floor(sqrt(3*A002283(n+1)))+1)^2`
-/

namespace A067473.P7317024284318780840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (3 * A002283 (n + 1)) + 1) ^ 2

end

end A067473.P7317024284318780840

namespace A067473

/-- `(floor(sqrt(3*A002283(n+1)))+1)^2` -/
def P7317024284318780840.Spec : Prop :=
  ∀ n, P7317024284318780840.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P18115369147095511233

`(floor(sqrt(3*A011557(n+1)))+1)^2`
-/

namespace A067473.P18115369147095511233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (3 * A011557 (n + 1)) + 1) ^ 2

end

end A067473.P18115369147095511233

namespace A067473

/-- `(floor(sqrt(3*A011557(n+1)))+1)^2` -/
def P18115369147095511233.Spec : Prop :=
  ∀ n, P18115369147095511233.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P6208919394433642608

`record[A035070(A002260(n+1))²]`
-/

namespace A067473.P6208919394433642608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035070 (A002260 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067473.P6208919394433642608

namespace A067473

/-- `record[A035070(A002260(n+1))²]` -/
def P6208919394433642608.Spec : Prop :=
  ∀ n, P6208919394433642608.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P4715740527019911344

`record[A035070(A004737(n+1))²]`
-/

namespace A067473.P4715740527019911344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035070 (A004737 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067473.P4715740527019911344

namespace A067473

/-- `record[A035070(A004737(n+1))²]` -/
def P4715740527019911344.Spec : Prop :=
  ∀ n, P4715740527019911344.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P1083489275205206003

`record[A035070(A277564(n+1))²]`
-/

namespace A067473.P1083489275205206003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035070 (A277564 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067473.P1083489275205206003

namespace A067473

/-- `record[A035070(A277564(n+1))²]` -/
def P1083489275205206003.Spec : Prop :=
  ∀ n, P1083489275205206003.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P13893933913288845122

`record[A035070(A284318(n+1))²]`
-/

namespace A067473.P13893933913288845122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035070 (A284318 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067473.P13893933913288845122

namespace A067473

/-- `record[A035070(A284318(n+1))²]` -/
def P13893933913288845122.Spec : Prop :=
  ∀ n, P13893933913288845122.a n = A067473 (n + 2)

end A067473

/-! ## A067473.P12377702048610567710

`lcm(A035070(n+1)², A033999(n))`
-/

namespace A067473.P12377702048610567710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035070 (n + 1) ^ 2) (A033999 n)

end

end A067473.P12377702048610567710

namespace A067473

/-- `lcm(A035070(n+1)², A033999(n))` -/
def P12377702048610567710.Spec : Prop :=
  ∀ n, (P12377702048610567710.a n : ℤ) = A067473 (n + 2)

end A067473

/-!
# A067474: Smallest n-digit square starting with 4.

The programs for A067474, the canonical program `A067474.P16137602945229342153` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067474 has offset 1).

The definition of A067474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067474.P16137602945229342153

`ceil(sqrt(4*10^n))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067474

/-- `ceil(sqrt(4*10^n))²` -/
def P16137602945229342153.Spec : Prop :=
  ∀ n, P16137602945229342153.a n = A067474 (n + 1)

theorem P16137602945229342153.correct : P16137602945229342153.Spec := by
  intro n
  simp only [A067474, Nat.add_sub_cancel]

end A067474

/-! ## A067474.P3803383000154177606

`A035071(n)^2`
-/

namespace A067474.P3803383000154177606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 n ^ 2

end

end A067474.P3803383000154177606

namespace A067474

/-- `A035071(n)^2` -/
def P3803383000154177606.Spec : Prop :=
  ∀ n, P3803383000154177606.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P13511982638024031234

`record[A035071(A002262(n))²]`
-/

namespace A067474.P13511982638024031234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (A002262 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067474.P13511982638024031234

namespace A067474

/-- `record[A035071(A002262(n))²]` -/
def P13511982638024031234.Spec : Prop :=
  ∀ n, P13511982638024031234.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P1781566820424480198

`record[A035071(A025581(n))²]`
-/

namespace A067474.P1781566820424480198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (A025581 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067474.P1781566820424480198

namespace A067474

/-- `record[A035071(A025581(n))²]` -/
def P1781566820424480198.Spec : Prop :=
  ∀ n, P1781566820424480198.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P2628792572518637840

`A035071(n)²*A057427(n+4)`
-/

namespace A067474.P2628792572518637840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 n ^ 2 * A057427 (n + 4)

end

end A067474.P2628792572518637840

namespace A067474

/-- `A035071(n)²*A057427(n+4)` -/
def P2628792572518637840.Spec : Prop :=
  ∀ n, P2628792572518637840.a n = A067474 (n + 1)

theorem P2628792572518637840.correct : P2628792572518637840.Spec := by
  intro n
  simp only [A067474, Nat.add_sub_cancel, A067474.P2628792572518637840.a, A067474.P16137602945229342153.a, A035071, A035071.P7959397829130865033.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A067474

/-! ## A067474.P6514684008525748134

`A035071(n)²*A057078(3*n)`
-/

namespace A067474.P6514684008525748134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 n ^ 2 * A057078 (3 * n)

end

end A067474.P6514684008525748134

namespace A067474

/-- `A035071(n)²*A057078(3*n)` -/
def P6514684008525748134.Spec : Prop :=
  ∀ n, P6514684008525748134.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P925500021674797025

`char[A038813(n+1)]+A035071(n)²`
-/

namespace A067474.P925500021674797025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038813 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A035071 n ^ 2

end

end A067474.P925500021674797025

namespace A067474

/-- `char[A038813(n+1)]+A035071(n)²` -/
def P925500021674797025.Spec : Prop :=
  ∀ n, P925500021674797025.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P40264411328538254

`A035071(sqrt(A000290(n)))*A035071(n)`
-/

namespace A067474.P40264411328538254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat * A035071 n

end

end A067474.P40264411328538254

namespace A067474

/-- `A035071(sqrt(A000290(n)))*A035071(n)` -/
def P40264411328538254.Spec : Prop :=
  ∀ n, P40264411328538254.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P223986473003541224

`record[A035071(A002262(n))]*A035071(n)`
-/

namespace A067474.P223986473003541224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035071 n

end

end A067474.P223986473003541224

namespace A067474

/-- `record[A035071(A002262(n))]*A035071(n)` -/
def P223986473003541224.Spec : Prop :=
  ∀ n, P223986473003541224.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P5513382016388838312

`record[A035071(A025581(n))]*A035071(n)`
-/

namespace A067474.P5513382016388838312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A035071 n

end

end A067474.P5513382016388838312

namespace A067474

/-- `record[A035071(A025581(n))]*A035071(n)` -/
def P5513382016388838312.Spec : Prop :=
  ∀ n, P5513382016388838312.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P7090826349122068066

`A035071(A004526(2*n))*A035071(n)`
-/

namespace A067474.P7090826349122068066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035071 (A004526 (2 * n)).toNat * A035071 n

end

end A067474.P7090826349122068066

namespace A067474

/-- `A035071(A004526(2*n))*A035071(n)` -/
def P7090826349122068066.Spec : Prop :=
  ∀ n, P7090826349122068066.a n = A067474 (n + 1)

end A067474

/-! ## A067474.P3955540944055521060

`and(A035071(n)², A008683(A023246(n+1)))`
-/

namespace A067474.P3955540944055521060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035071 n ^ 2) (A008683 (A023246 (n + 1)).toNat)

end

end A067474.P3955540944055521060

namespace A067474

/-- `and(A035071(n)², A008683(A023246(n+1)))` -/
def P3955540944055521060.Spec : Prop :=
  ∀ n, P3955540944055521060.a n = A067474 (n + 1)

end A067474

/-!
# A067475: Smallest n-digit square starting with 5.

The programs for A067475, the canonical program `A067475.P7789097694759456774` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067475 has offset 3).

The definition of A067475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067475.P7789097694759456774

`ceil(sqrt(5*10^(n+2)))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067475

/-- `ceil(sqrt(5*10^(n+2)))²` -/
def P7789097694759456774.Spec : Prop :=
  ∀ n, P7789097694759456774.a n = A067475 (n + 3)

theorem P7789097694759456774.correct : P7789097694759456774.Spec := by
  intro n
  simp only [A067475, Nat.add_sub_cancel]

end A067475

/-! ## A067475.P2645220019860750687

`A035072(n+2)^2`
-/

namespace A067475.P2645220019860750687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035072 (n + 2) ^ 2

end

end A067475.P2645220019860750687

namespace A067475

/-- `A035072(n+2)^2` -/
def P2645220019860750687.Spec : Prop :=
  ∀ n, P2645220019860750687.a n = A067475 (n + 3)

end A067475

/-! ## A067475.P9715091532606245573

`lcm(A035072(n+2)², A033999(n))`
-/

namespace A067475.P9715091532606245573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035072 (n + 2) ^ 2) (A033999 n)

end

end A067475.P9715091532606245573

namespace A067475

/-- `lcm(A035072(n+2)², A033999(n))` -/
def P9715091532606245573.Spec : Prop :=
  ∀ n, (P9715091532606245573.a n : ℤ) = A067475 (n + 3)

end A067475

/-! ## A067475.P14678716255283227160

`or(A035072(n+2)², A000007(n))`
-/

namespace A067475.P14678716255283227160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035072 (n + 2) ^ 2) (A000007 n)

end

end A067475.P14678716255283227160

namespace A067475

/-- `or(A035072(n+2)², A000007(n))` -/
def P14678716255283227160.Spec : Prop :=
  ∀ n, P14678716255283227160.a n = A067475 (n + 3)

end A067475

/-! ## A067475.P16606704692627183661

`A070109(A020882(n+1))+A035072(n+2)²`
-/

namespace A067475.P16606704692627183661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (A020882 (n + 1)).toNat + A035072 (n + 2) ^ 2

end

end A067475.P16606704692627183661

namespace A067475

/-- `A070109(A020882(n+1))+A035072(n+2)²` -/
def P16606704692627183661.Spec : Prop :=
  ∀ n, P16606704692627183661.a n = A067475 (n + 3)

end A067475

/-! ## A067475.P8335937263560772801

`(A059995(A059995(n))+A035072(n+2))*A035072(n+2)`
-/

namespace A067475.P8335937263560772801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059995 (A059995 n).toNat + A035072 (n + 2)) * A035072 (n + 2)

end

end A067475.P8335937263560772801

namespace A067475

/-- `(A059995(A059995(n))+A035072(n+2))*A035072(n+2)` -/
def P8335937263560772801.Spec : Prop :=
  ∀ n, P8335937263560772801.a n = A067475 (n + 3)

end A067475

/-!
# A067476: Smallest n-digit square starting with 6.

The programs for A067476, the canonical program `A067476.P12981035764265906753` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067476 has offset 2).

The definition of A067476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067476.P12981035764265906753

`ceil(sqrt(6*10^(n+1)))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067476

/-- `ceil(sqrt(6*10^(n+1)))²` -/
def P12981035764265906753.Spec : Prop :=
  ∀ n, P12981035764265906753.a n = A067476 (n + 2)

theorem P12981035764265906753.correct : P12981035764265906753.Spec := by
  intro n
  simp only [A067476, Nat.add_sub_cancel]

end A067476

/-! ## A067476.P10397588875003106085

`A035073(n+1)^2`
-/

namespace A067476.P10397588875003106085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (n + 1) ^ 2

end

end A067476.P10397588875003106085

namespace A067476

/-- `A035073(n+1)^2` -/
def P10397588875003106085.Spec : Prop :=
  ∀ n, P10397588875003106085.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P16875766638788240699

`record[A035073(A002260(n+1))²]`
-/

namespace A067476.P16875766638788240699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (A002260 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067476.P16875766638788240699

namespace A067476

/-- `record[A035073(A002260(n+1))²]` -/
def P16875766638788240699.Spec : Prop :=
  ∀ n, P16875766638788240699.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P10163421136026059889

`record[A035073(A002262(n)+1)²]`
-/

namespace A067476.P10163421136026059889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (A002262 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067476.P10163421136026059889

namespace A067476

/-- `record[A035073(A002262(n)+1)²]` -/
def P10163421136026059889.Spec : Prop :=
  ∀ n, P10163421136026059889.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P4423757083838879321

`record[A035073(A004736(n+1))²]`
-/

namespace A067476.P4423757083838879321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (A004736 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067476.P4423757083838879321

namespace A067476

/-- `record[A035073(A004736(n+1))²]` -/
def P4423757083838879321.Spec : Prop :=
  ∀ n, P4423757083838879321.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P6778241831274752748

`record[A035073(A004737(n+1))²]`
-/

namespace A067476.P6778241831274752748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (A004737 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067476.P6778241831274752748

namespace A067476

/-- `record[A035073(A004737(n+1))²]` -/
def P6778241831274752748.Spec : Prop :=
  ∀ n, P6778241831274752748.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P11489672679197558837

`record[A035073(A050873(n+1))²]`
-/

namespace A067476.P11489672679197558837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (A050873 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067476.P11489672679197558837

namespace A067476

/-- `record[A035073(A050873(n+1))²]` -/
def P11489672679197558837.Spec : Prop :=
  ∀ n, P11489672679197558837.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P14072016972210293093

`lcm(A035073(n+1)², A020985(n))`
-/

namespace A067476.P14072016972210293093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035073 (n + 1) ^ 2) (A020985 n)

end

end A067476.P14072016972210293093

namespace A067476

/-- `lcm(A035073(n+1)², A020985(n))` -/
def P14072016972210293093.Spec : Prop :=
  ∀ n, (P14072016972210293093.a n : ℤ) = A067476 (n + 2)

end A067476

/-! ## A067476.P12350611578420636766

`A035073(n+1)*A035073(abs(xor(n, -1)))`
-/

namespace A067476.P12350611578420636766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035073 (n + 1) * A035073 |Int.xor (n : ℤ) (-1)|.toNat

end

end A067476.P12350611578420636766

namespace A067476

/-- `A035073(n+1)*A035073(abs(xor(n, -1)))` -/
def P12350611578420636766.Spec : Prop :=
  ∀ n, P12350611578420636766.a n = A067476 (n + 2)

end A067476

/-! ## A067476.P14170122513491908230

`and(A035073(n+1)², A008683(A023246(n+1)))`
-/

namespace A067476.P14170122513491908230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035073 (n + 1) ^ 2) (A008683 (A023246 (n + 1)).toNat)

end

end A067476.P14170122513491908230

namespace A067476

/-- `and(A035073(n+1)², A008683(A023246(n+1)))` -/
def P14170122513491908230.Spec : Prop :=
  ∀ n, P14170122513491908230.a n = A067476 (n + 2)

end A067476

/-!
# A067477: Smallest n-digit square starting with 7.

The programs for A067477, the canonical program `A067477.P3013669096841720414` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067477 has offset 3).

The definition of A067477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067477.P3013669096841720414

`ceil(sqrt(7*10^(n+2)))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067477

/-- `ceil(sqrt(7*10^(n+2)))²` -/
def P3013669096841720414.Spec : Prop :=
  ∀ n, P3013669096841720414.a n = A067477 (n + 3)

theorem P3013669096841720414.correct : P3013669096841720414.Spec := by
  intro n
  simp only [A067477, Nat.add_sub_cancel]

end A067477

/-! ## A067477.P13518084136249537360

`A035074(n+2)^2`
-/

namespace A067477.P13518084136249537360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035074 (n + 2) ^ 2

end

end A067477.P13518084136249537360

namespace A067477

/-- `A035074(n+2)^2` -/
def P13518084136249537360.Spec : Prop :=
  ∀ n, P13518084136249537360.a n = A067477 (n + 3)

end A067477

/-! ## A067477.P14469060479600581922

`A035074(n+2)²%A183850(n+1)`
-/

namespace A067477.P14469060479600581922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035074 (n + 2) ^ 2) (A183850 (n + 1))

end

end A067477.P14469060479600581922

namespace A067477

/-- `A035074(n+2)²%A183850(n+1)` -/
def P14469060479600581922.Spec : Prop :=
  ∀ n, P14469060479600581922.a n = A067477 (n + 3)

end A067477

/-! ## A067477.P16645276501495169574

`A034785(n+1)%2+A035074(n+2)²`
-/

namespace A067477.P16645276501495169574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034785 (n + 1)) 2 + A035074 (n + 2) ^ 2

end

end A067477.P16645276501495169574

namespace A067477

/-- `A034785(n+1)%2+A035074(n+2)²` -/
def P16645276501495169574.Spec : Prop :=
  ∀ n, P16645276501495169574.a n = A067477 (n + 3)

end A067477

/-! ## A067477.P9455125531224582211

`A333821(n+1)%2+A035074(n+2)²`
-/

namespace A067477.P9455125531224582211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333821 (n + 1)) 2 + A035074 (n + 2) ^ 2

end

end A067477.P9455125531224582211

namespace A067477

/-- `A333821(n+1)%2+A035074(n+2)²` -/
def P9455125531224582211.Spec : Prop :=
  ∀ n, P9455125531224582211.a n = A067477 (n + 3)

end A067477

/-!
# A067478: Smallest n-digit square starting with 8.

The programs for A067478, the canonical program `A067478.P17314618488285642705` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067478 has offset 2).

The definition of A067478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067478.P17314618488285642705

`ceil(sqrt(8*10^(n+1)))²`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067478

/-- `ceil(sqrt(8*10^(n+1)))²` -/
def P17314618488285642705.Spec : Prop :=
  ∀ n, P17314618488285642705.a n = A067478 (n + 2)

theorem P17314618488285642705.correct : P17314618488285642705.Spec := by
  intro n
  simp only [A067478, Nat.add_sub_cancel]

end A067478

/-! ## A067478.P5528366505226112737

`A035075(n+1)^2`
-/

namespace A067478.P5528366505226112737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035075 (n + 1) ^ 2

end

end A067478.P5528366505226112737

namespace A067478

/-- `A035075(n+1)^2` -/
def P5528366505226112737.Spec : Prop :=
  ∀ n, P5528366505226112737.a n = A067478 (n + 2)

end A067478

/-! ## A067478.P5270839427467600198

`record[A035075(A002260(n+1))²]`
-/

namespace A067478.P5270839427467600198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035075 (A002260 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067478.P5270839427467600198

namespace A067478

/-- `record[A035075(A002260(n+1))²]` -/
def P5270839427467600198.Spec : Prop :=
  ∀ n, P5270839427467600198.a n = A067478 (n + 2)

end A067478

/-! ## A067478.P4765734626261745376

`record[A035075(A002262(n)+1)²]`
-/

namespace A067478.P4765734626261745376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035075 (A002262 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067478.P4765734626261745376

namespace A067478

/-- `record[A035075(A002262(n)+1)²]` -/
def P4765734626261745376.Spec : Prop :=
  ∀ n, P4765734626261745376.a n = A067478 (n + 2)

end A067478

/-! ## A067478.P3771166711654000026

`record[A035075(A004737(n+1))²]`
-/

namespace A067478.P3771166711654000026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035075 (A004737 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067478.P3771166711654000026

namespace A067478

/-- `record[A035075(A004737(n+1))²]` -/
def P3771166711654000026.Spec : Prop :=
  ∀ n, P3771166711654000026.a n = A067478 (n + 2)

end A067478

/-! ## A067478.P8688826442746314535

`lcm(A035075(n+1)², A020985(n))`
-/

namespace A067478.P8688826442746314535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035075 (n + 1) ^ 2) (A020985 n)

end

end A067478.P8688826442746314535

namespace A067478

/-- `lcm(A035075(n+1)², A020985(n))` -/
def P8688826442746314535.Spec : Prop :=
  ∀ n, (P8688826442746314535.a n : ℤ) = A067478 (n + 2)

end A067478

/-! ## A067478.P3891483938385011102

`or(A035075(n+1)², A000007(n))`
-/

namespace A067478.P3891483938385011102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035075 (n + 1) ^ 2) (A000007 n)

end

end A067478.P3891483938385011102

namespace A067478

/-- `or(A035075(n+1)², A000007(n))` -/
def P3891483938385011102.Spec : Prop :=
  ∀ n, P3891483938385011102.a n = A067478 (n + 2)

end A067478

/-! ## A067478.P16992457249818235428

`A000007(n+1)+A035075(n+1)²`
-/

namespace A067478.P16992457249818235428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A035075 (n + 1) ^ 2

end

end A067478.P16992457249818235428

namespace A067478

/-- `A000007(n+1)+A035075(n+1)²` -/
def P16992457249818235428.Spec : Prop :=
  ∀ n, P16992457249818235428.a n = A067478 (n + 2)

theorem P16992457249818235428.correct : P16992457249818235428.Spec := by
  intro n
  simp only [A067478, Nat.add_sub_cancel, A067478.P16992457249818235428.a, A067478.P17314618488285642705.a, A000007, A000007.P6599383543502402472.a, A035075, A035075.P12927775116135263700.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A067478

/-! ## A067478.P1722453813084657591

`A000038(n+1)+A035075(n+1)²`
-/

namespace A067478.P1722453813084657591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + A035075 (n + 1) ^ 2

end

end A067478.P1722453813084657591

namespace A067478

/-- `A000038(n+1)+A035075(n+1)²` -/
def P1722453813084657591.Spec : Prop :=
  ∀ n, P1722453813084657591.a n = A067478 (n + 2)

theorem P1722453813084657591.correct : P1722453813084657591.Spec := by
  intro n
  simp only [A067478, Nat.add_sub_cancel, A067478.P1722453813084657591.a, A067478.P17314618488285642705.a, A000038, A000038.P13734959004655594922.a, A035075, A035075.P12927775116135263700.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A067478

/-! ## A067478.P5155067066584632759

`and(A035075(n+1)², A008683(A023246(n+1)))`
-/

namespace A067478.P5155067066584632759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035075 (n + 1) ^ 2) (A008683 (A023246 (n + 1)).toNat)

end

end A067478.P5155067066584632759

namespace A067478

/-- `and(A035075(n+1)², A008683(A023246(n+1)))` -/
def P5155067066584632759.Spec : Prop :=
  ∀ n, P5155067066584632759.a n = A067478 (n + 2)

end A067478

/-!
# A067480: Powers of 2 with initial digit 2.

The programs for A067480, there is no canonical definition to state claims against.
-/

/-! ## A067480.P18189043888262527257

`2^A067469(n+1)`
-/

namespace A067480.P18189043888262527257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A067469 (n + 1) : ℤ)

end

end A067480.P18189043888262527257

/-! ## A067480.P18049233128507846473

`A000079(A067469(n+1))`
-/

namespace A067480.P18049233128507846473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A067469 (n + 1)).toNat

end

end A067480.P18049233128507846473

/-! ## A067480.P15105177312302195460

`A000079(eq[2, A008952(n)])`
-/

namespace A067480.P15105177312302195460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067480.P15105177312302195460

/-! ## A067480.P5728950385706005227

`A011782(A067469(n+1)+1)`
-/

namespace A067480.P5728950385706005227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A067469 (n + 1) + 1).toNat

end

end A067480.P5728950385706005227

/-! ## A067480.P14096320601327395913

`A017910(2*A067469(n+1))`
-/

namespace A067480.P14096320601327395913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * A067469 (n + 1)).toNat

end

end A067480.P14096320601327395913

/-!
# A067481: 

The programs for A067481, there is no canonical definition to state claims against.
-/

/-! ## A067481.P2924743928127254091

`3^A054565(n+1)`
-/

namespace A067481.P2924743928127254091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A054565 (n + 1) : ℤ)

end

end A067481.P2924743928127254091

/-! ## A067481.P12583562028323876666

`A000244(A054565(n+1))`
-/

namespace A067481.P12583562028323876666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A054565 (n + 1)).toNat

end

end A067481.P12583562028323876666

/-!
# A067482: 

The programs for A067482, there is no canonical definition to state claims against.
-/

/-! ## A067482.P6734719026726436551

`4^A242594(n+1)`
-/

namespace A067482.P6734719026726436551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A242594 (n + 1) : ℤ)

end

end A067482.P6734719026726436551

/-! ## A067482.P17799672889126238060

`A000302(A242594(n+1))`
-/

namespace A067482.P17799672889126238060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A242594 (n + 1)).toNat

end

end A067482.P17799672889126238060

/-! ## A067482.P7239566188207127291

`A000079(2*A242594(n+1))`
-/

namespace A067482.P7239566188207127291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A242594 (n + 1)).toNat

end

end A067482.P7239566188207127291

/-! ## A067482.P17273557914859133635

`A051049(2*A242594(n+1))`
-/

namespace A067482.P17273557914859133635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (2 * A242594 (n + 1)).toNat

end

end A067482.P17273557914859133635

/-!
# A067484: 

The programs for A067484, there is no canonical definition to state claims against.
-/

/-! ## A067484.P458413091544519319

`6^(9*n+1)`
-/

namespace A067484.P458413091544519319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (9 * n + 1)

end

end A067484.P458413091544519319

/-! ## A067484.P4073878300824233926

`a(n-1)/(1/6)^9` with `a(0)=6`
-/

namespace A067484.P4073878300824233926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 6) ^ 9

end

end A067484.P4073878300824233926

/-! ## A067484.P10446291923194777026

`record[6^((n+1)/dr(n+1))]`
-/

namespace A067484.P10446291923194777026
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 : ℝ) ^ ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067484.P10446291923194777026

/-! ## A067484.P9934552388100509063

`A013738(3*n)`
-/

namespace A067484.P9934552388100509063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013738 (3 * n)

end

end A067484.P9934552388100509063

/-! ## A067484.P944489139825769634

`abs((-6)^A017173(n))`
-/

namespace A067484.P944489139825769634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-6 : ℚ) ^ (A017173 n : ℤ)|

end

end A067484.P944489139825769634

/-!
# A067485: 

The programs for A067485, there is no canonical definition to state claims against.
-/

/-! ## A067485.P158745989846862137

`7^A067468(n+1)`
-/

namespace A067485.P158745989846862137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A067468 (n + 1) : ℤ)

end

end A067485.P158745989846862137

/-!
# A067487: 

The programs for A067487, there is no canonical definition to state claims against.
-/

/-! ## A067487.P11796986909229093393

`9^A048841(2*n)`
-/

namespace A067487.P11796986909229093393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (A048841 (2 * n) : ℤ)

end

end A067487.P11796986909229093393

/-!
# A067488: Powers of 2 with initial digit 1.

The programs for A067488, the canonical program `A067488.P10416879168026951780` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067488 has offset 1).

The definition of A067488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067488.P10416879168026951780

`2^ceil(n*log(10)/log(2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067488

/-- `2^ceil(n*log(10)/log(2))` -/
def P10416879168026951780.Spec : Prop :=
  ∀ n, P10416879168026951780.a n = (A067488 (n + 1) : ℚ)

end A067488

/-! ## A067488.P3309336672474282865

`A000079(ceil(n*log2(10)))`
-/

namespace A067488.P3309336672474282865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉.toNat

end

end A067488.P3309336672474282865

namespace A067488

/-- `A000079(ceil(n*log2(10)))` -/
def P3309336672474282865.Spec : Prop :=
  ∀ n, P3309336672474282865.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P7174782581764971280

`A011782(ceil(n*log2(10))+1)`
-/

namespace A067488.P7174782581764971280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉ + 1).toNat

end

end A067488.P7174782581764971280

namespace A067488

/-- `A011782(ceil(n*log2(10))+1)` -/
def P7174782581764971280.Spec : Prop :=
  ∀ n, P7174782581764971280.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P12266321110257925263

`floor(2^record[2-A008952(n+1)+n])`
-/

namespace A067488.P12266321110257925263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008952 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)⌋

end

end A067488.P12266321110257925263

namespace A067488

/-- `floor(2^record[2-A008952(n+1)+n])` -/
def P12266321110257925263.Spec : Prop :=
  ∀ n, P12266321110257925263.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P3402713164357151144

`A151821(A123384(n))`
-/

namespace A067488.P3402713164357151144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (A123384 n).toNat

end

end A067488.P3402713164357151144

namespace A067488

/-- `A151821(A123384(n))` -/
def P3402713164357151144.Spec : Prop :=
  ∀ n, P3402713164357151144.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P5928203943203709116

`A017910(2*A067497(n))`
-/

namespace A067488.P5928203943203709116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * A067497 n).toNat

end

end A067488.P5928203943203709116

namespace A067488

/-- `A017910(2*A067497(n))` -/
def P5928203943203709116.Spec : Prop :=
  ∀ n, P5928203943203709116.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P17226633198746362572

`record[A000079(n)/A008952(n)]`
-/

namespace A067488.P17226633198746362572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A008952 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067488.P17226633198746362572

namespace A067488

/-- `record[A000079(n)/A008952(n)]` -/
def P17226633198746362572.Spec : Prop :=
  ∀ n, P17226633198746362572.a n = (A067488 (n + 1) : ℚ)

end A067488

/-! ## A067488.P11777517272218973214

`A000225(ceil(log2(A098610(n)-1+n)))+1`
-/

namespace A067488.P11777517272218973214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ⌈Real.logb 2 (A098610 n - 1 + (n : ℤ) : ℝ)⌉.toNat + 1

end

end A067488.P11777517272218973214

namespace A067488

/-- `A000225(ceil(log2(A098610(n)-1+n)))+1` -/
def P11777517272218973214.Spec : Prop :=
  ∀ n, P11777517272218973214.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P1986731006602035598

`A000079(A067497(n))%A198973(n)`
-/

namespace A067488.P1986731006602035598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A067497 n).toNat) (A198973 n)

end

end A067488.P1986731006602035598

namespace A067488

/-- `A000079(A067497(n))%A198973(n)` -/
def P1986731006602035598.Spec : Prop :=
  ∀ n, P1986731006602035598.a n = A067488 (n + 1)

end A067488

/-! ## A067488.P18148357783140971173

`A000079(A067497(n))*A055396(2*(n+1))`
-/

namespace A067488.P18148357783140971173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A067497 n).toNat * A055396 (2 * (n + 1))

end

end A067488.P18148357783140971173

namespace A067488

/-- `A000079(A067497(n))*A055396(2*(n+1))` -/
def P18148357783140971173.Spec : Prop :=
  ∀ n, P18148357783140971173.a n = A067488 (n + 1)

end A067488

/-!
# A067489: Powers of 3 with initial digit 1.

The programs for A067489, there is no canonical definition to state claims against.
-/

/-! ## A067489.P11243121396048588650

`3^eq[1, A060956(n)]`
-/

namespace A067489.P11243121396048588650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067489.P11243121396048588650

/-! ## A067489.P7236156540030493834

`A000244(eq[1, A060956(n)])`
-/

namespace A067489.P7236156540030493834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067489.P7236156540030493834

/-! ## A067489.P9149114465558402648

`A000244(lt[A060956(n), 2])`
-/

namespace A067489.P9149114465558402648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060956 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A067489.P9149114465558402648

/-! ## A067489.P15646497767536566233

`A000244(eq[1, A004167(n)%10])`
-/

namespace A067489.P15646497767536566233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004167 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A067489.P15646497767536566233

/-!
# A067490: Powers of 4 with initial digit 1.

The programs for A067490, there is no canonical definition to state claims against.
-/

/-! ## A067490.P5513604213809702729

`A000079(eq[1, A008952(2*n)])²`
-/

namespace A067490.P5513604213809702729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A067490.P5513604213809702729

/-! ## A067490.P16513716701321272572

`4^A319571(A008587(n)²)`
-/

namespace A067490.P16513716701321272572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A319571 (A008587 n ^ 2).toNat : ℤ)

end

end A067490.P16513716701321272572

/-! ## A067490.P9539173610042154037

`4^A319571(A008706(n)²)`
-/

namespace A067490.P9539173610042154037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A319571 (A008706 n ^ 2).toNat : ℤ)

end

end A067490.P9539173610042154037

/-! ## A067490.P8322182811560611018

`A010879(Δ[floor(5/2*n²)]²)^A047215(n)`
-/

namespace A067490.P8322182811560611018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010879 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ) ^ (A047215 n : ℤ)

end

end A067490.P8322182811560611018

/-! ## A067490.P8948032069795939501

`A011782(A319571(A010015(n)))²`
-/

namespace A067490.P8948032069795939501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A319571 (A010015 n).toNat).toNat ^ 2

end

end A067490.P8948032069795939501

/-!
# A067491: Powers of 5 with initial digit 1.

The programs for A067491, there is no canonical definition to state claims against.
-/

/-! ## A067491.P232213242811941577

`5^floor(n*log2(10))`
-/

namespace A067491.P232213242811941577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋ : ℤ)

end

end A067491.P232213242811941577

/-! ## A067491.P2644827156675427207

`5^A123384(n)/5`
-/

namespace A067491.P2644827156675427207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A123384 n : ℤ) / 5

end

end A067491.P2644827156675427207

/-! ## A067491.P7071344009473007689

`A000351(floor(n*log2(10)))`
-/

namespace A067491.P7071344009473007689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋.toNat

end

end A067491.P7071344009473007689

/-! ## A067491.P14883639788961264407

`A020699(floor(n*log2(10))+1)/2`
-/

namespace A067491.P14883639788961264407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020699 (⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋ + 1).toNat : ℚ) / 2

end

end A067491.P14883639788961264407

/-! ## A067491.P491922513211101412

`A005053(floor(n*log2(10))+1)/3`
-/

namespace A067491.P491922513211101412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005053 (⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋ + 1).toNat : ℚ) / 3

end

end A067491.P491922513211101412

/-!
# A067492: Powers of 6 with initial digit 1.

The programs for A067492, there is no canonical definition to state claims against.
-/

/-! ## A067492.P12293806655843439774

`6^(n%3+3*n)`
-/

namespace A067492.P12293806655843439774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n % 3 + 3 * n)

end

end A067492.P12293806655843439774

/-! ## A067492.P17952014326112482342

`6^∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=4, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A067492.P17952014326112482342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A067492.P17952014326112482342

/-! ## A067492.P15575215941569241020

`6^A140282(n)`
-/

namespace A067492.P15575215941569241020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A140282 n : ℤ)

end

end A067492.P15575215941569241020

/-! ## A067492.P14977625179228973557

`A018062(4*A140282(n))`
-/

namespace A067492.P14977625179228973557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 (4 * A140282 n).toNat

end

end A067492.P14977625179228973557

/-! ## A067492.P3456839069102579020

`6^(A010872(n)+A008585(n))`
-/

namespace A067492.P3456839069102579020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A010872 n + A008585 n : ℤ)

end

end A067492.P3456839069102579020

/-!
# A067493: Powers of 7 with initial digit 1.

The programs for A067493, there is no canonical definition to state claims against.
-/

/-! ## A067493.P48114331608576473

`7^A047264(A113929(n+1))`
-/

namespace A067493.P48114331608576473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A047264 (A113929 (n + 1)).toNat : ℤ)

end

end A067493.P48114331608576473

/-!
# A067497: Smallest k for which 2^k is n+1 decimal digits long, and equivalently numbers k such that 1 is the first digit of 2^k.

The programs for A067497, the canonical program `A067497.P1379721111122819957` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A067497 has offset 0).

The definition of A067497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A067497.P1379721111122819957

`ceil(n*log2(10))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A067497

/-- `ceil(n*log2(10))` -/
def P1379721111122819957.Spec : Prop :=
  ∀ n, P1379721111122819957.a n = A067497 n

theorem P1379721111122819957.correct : P1379721111122819957.Spec := by
  intro n
  simp only [A067497]

end A067497

/-! ## A067497.P4714364305313746474

`log2(A067488(n+1))`
-/

namespace A067497.P4714364305313746474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A067488 (n + 1) : ℝ)

end

end A067497.P4714364305313746474

namespace A067497

/-- `log2(A067488(n+1))` -/
def P4714364305313746474.Spec : Prop :=
  ∀ n, P4714364305313746474.a n = (A067497 n : ℝ)

end A067497

/-! ## A067497.P815646609304487248

`eq[1, A008952(n)]`
-/

namespace A067497.P815646609304487248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067497.P815646609304487248

namespace A067497

/-- `eq[1, A008952(n)]` -/
def P815646609304487248.Spec : Prop :=
  ∀ n, (P815646609304487248.a n : ℤ) = A067497 n

end A067497

/-! ## A067497.P16900148253985871887

`record[2-A008952(n+1)+n]`
-/

namespace A067497.P16900148253985871887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008952 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067497.P16900148253985871887

namespace A067497

/-- `record[2-A008952(n+1)+n]` -/
def P16900148253985871887.Spec : Prop :=
  ∀ n, P16900148253985871887.a n = A067497 n

end A067497

/-! ## A067497.P2530240493002430338

`∑[A129344(n+1)]-A129344(n+1)`
-/

namespace A067497.P2530240493002430338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129344 (n + 1)

end

end A067497.P2530240493002430338

namespace A067497

/-- `∑[A129344(n+1)]-A129344(n+1)` -/
def P2530240493002430338.Spec : Prop :=
  ∀ n, P2530240493002430338.a n = A067497 n

end A067497

/-! ## A067497.P12724348639630946175

`A066343(n+1)+1-A129344(n+1)`
-/

namespace A067497.P12724348639630946175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) + (1 - A129344 (n + 1))

end

end A067497.P12724348639630946175

namespace A067497

/-- `A066343(n+1)+1-A129344(n+1)` -/
def P12724348639630946175.Spec : Prop :=
  ∀ n, P12724348639630946175.a n = A067497 n

end A067497

/-! ## A067497.P3272767424045700696

`A123384(n)-A000007(n)`
-/

namespace A067497.P3272767424045700696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n - A000007 n

end

end A067497.P3272767424045700696

namespace A067497

/-- `A123384(n)-A000007(n)` -/
def P3272767424045700696.Spec : Prop :=
  ∀ n, P3272767424045700696.a n = A067497 n

end A067497

/-! ## A067497.P9539439438040548236

`A057427(n)*A123384(n)`
-/

namespace A067497.P9539439438040548236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A123384 n

end

end A067497.P9539439438040548236

namespace A067497

/-- `A057427(n)*A123384(n)` -/
def P9539439438040548236.Spec : Prop :=
  ∀ n, P9539439438040548236.a n = A067497 n

end A067497

/-! ## A067497.P16801966881136078312

`A123384(n)%A000132(n)`
-/

namespace A067497.P16801966881136078312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123384 n) (A000132 n)

end

end A067497.P16801966881136078312

namespace A067497

/-- `A123384(n)%A000132(n)` -/
def P16801966881136078312.Spec : Prop :=
  ∀ n, P16801966881136078312.a n = A067497 n

end A067497

/-! ## A067497.P13799002694443915735

`and(A057428(n), A123384(n))`
-/

namespace A067497.P13799002694443915735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A123384 n)

end

end A067497.P13799002694443915735

namespace A067497

/-- `and(A057428(n), A123384(n))` -/
def P13799002694443915735.Spec : Prop :=
  ∀ n, P13799002694443915735.a n = A067497 n

end A067497

/-! ## A067497.P17422538801655632083

`A123384(n)+n-A028310(n)`
-/

namespace A067497.P17422538801655632083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n + ((n : ℤ) - A028310 n)

end

end A067497.P17422538801655632083

namespace A067497

/-- `A123384(n)+n-A028310(n)` -/
def P17422538801655632083.Spec : Prop :=
  ∀ n, P17422538801655632083.a n = A067497 n

end A067497

/-! ## A067497.P11583984263050254866

`A123384(n)-char[A066234(n+1)]`
-/

namespace A067497.P11583984263050254866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066234 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A067497.P11583984263050254866

namespace A067497

/-- `A123384(n)-char[A066234(n+1)]` -/
def P11583984263050254866.Spec : Prop :=
  ∀ n, P11583984263050254866.a n = A067497 n

end A067497

/-! ## A067497.P9706085228455677964

`A123384(n)-char[A066234(n)-1]`
-/

namespace A067497.P9706085228455677964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066234 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A067497.P9706085228455677964

namespace A067497

/-- `A123384(n)-char[A066234(n)-1]` -/
def P9706085228455677964.Spec : Prop :=
  ∀ n, P9706085228455677964.a n = A067497 n

end A067497

/-! ## A067497.P8158825442383617757

`floor(n/A210435(n))*A123384(n)`
-/

namespace A067497.P8158825442383617757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A210435 n : ℚ)⌋ * A123384 n

end

end A067497.P8158825442383617757

namespace A067497

/-- `floor(n/A210435(n))*A123384(n)` -/
def P8158825442383617757.Spec : Prop :=
  ∀ n, P8158825442383617757.a n = A067497 n

end A067497

/-! ## A067497.P6658027424372569880

`A123384(n+1)-A129344(n+1)`
-/

namespace A067497.P6658027424372569880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 (n + 1) - A129344 (n + 1)

end

end A067497.P6658027424372569880

namespace A067497

/-- `A123384(n+1)-A129344(n+1)` -/
def P6658027424372569880.Spec : Prop :=
  ∀ n, P6658027424372569880.a n = A067497 n

end A067497

/-! ## A067497.P5022734914676591928

`record[A028310(n+1)-A008952(n)]`
-/

namespace A067497.P5022734914676591928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) - A008952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067497.P5022734914676591928

namespace A067497

/-- `record[A028310(n+1)-A008952(n)]` -/
def P5022734914676591928.Spec : Prop :=
  ∀ n, P5022734914676591928.a n = A067497 n

end A067497

/-! ## A067497.P15591104355309624575

`eq[1, A000030(A247243(n+1))]`
-/

namespace A067497.P15591104355309624575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067497.P15591104355309624575

namespace A067497

/-- `eq[1, A000030(A247243(n+1))]` -/
def P15591104355309624575.Spec : Prop :=
  ∀ n, (P15591104355309624575.a n : ℤ) = A067497 n

end A067497

/-! ## A067497.P17502021045279858559

`and(A123384(n), A130567(n+1))`
-/

namespace A067497.P17502021045279858559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123384 n) (A130567 (n + 1))

end

end A067497.P17502021045279858559

namespace A067497

/-- `and(A123384(n), A130567(n+1))` -/
def P17502021045279858559.Spec : Prop :=
  ∀ n, P17502021045279858559.a n = A067497 n

end A067497

/-! ## A067497.P1778600368838143077

`ceil(log2(A104745(n)))+n`
-/

namespace A067497.P1778600368838143077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A104745 n : ℝ)⌉ + (n : ℤ)

end

end A067497.P1778600368838143077

namespace A067497

/-- `ceil(log2(A104745(n)))+n` -/
def P1778600368838143077.Spec : Prop :=
  ∀ n, P1778600368838143077.a n = A067497 n

end A067497

/-!
# A067498: Maximum number of reflections for a ray of light which reflects at n points (reflecting more than once at most or all points).

The programs for A067498, there is no canonical definition to state claims against.
-/

/-! ## A067498.P1506460470945890512

`or(1, A166333(n)+n²)`
-/

namespace A067498.P1506460470945890512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A166333 n + (n ^ 2 : ℤ))

end

end A067498.P1506460470945890512

/-! ## A067498.P17942840838771055251

`or(1, gcd(n, A000010(n+1)²)+n²)`
-/

namespace A067498.P17942840838771055251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Int.gcd (n : ℤ) (A000010 (n + 1) ^ 2) + n ^ 2)

end

end A067498.P17942840838771055251

/-! ## A067498.P6131969125562066979

`A002034(A141056(n))+n²`
-/

namespace A067498.P6131969125562066979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A141056 n).toNat + (n ^ 2 : ℤ)

end

end A067498.P6131969125562066979

/-! ## A067498.P17683179486026062144

`A020639(A234741(n+1))+n²`
-/

namespace A067498.P17683179486026062144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A234741 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A067498.P17683179486026062144

/-! ## A067498.P16548141455996666814

`A006530(A141056(n))+A000290(n)`
-/

namespace A067498.P16548141455996666814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A141056 n).toNat + A000290 n

end

end A067498.P16548141455996666814

/-!
# A067499: Powers of 2 with digit sum also a power of 2.

The programs for A067499, there is no canonical definition to state claims against.
-/

/-! ## A067499.P3585440060968009429

`2^A095412(n+1)`
-/

namespace A067499.P3585440060968009429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A095412 (n + 1) : ℤ)

end

end A067499.P3585440060968009429

/-! ## A067499.P13958096764718730023

`A000079(A095412(n+1))`
-/

namespace A067499.P13958096764718730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A095412 (n + 1)).toNat

end

end A067499.P13958096764718730023

/-! ## A067499.P8641780207159033348

`2^lt[A006530(A001370(n)), 3]`
-/

namespace A067499.P8641780207159033348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001370 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A067499.P8641780207159033348

/-! ## A067499.P12346544969413277133

`2^eq[1, A003958(2*A001370(n))]`
-/

namespace A067499.P12346544969413277133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 * A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067499.P12346544969413277133

/-! ## A067499.P2526254130305683330

`2^eq[A014963(A001370(n)), A036453(n+1)]`
-/

namespace A067499.P2526254130305683330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067499.P2526254130305683330

