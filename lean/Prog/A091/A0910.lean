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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A091000: Number of closed walks of length n on the Petersen graph rooted at a given vertex.

The programs for A091000, the canonical program `A091000.P6491748809571549339` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091000 has offset 0).

The definition of A091000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091000.P6491748809571549339

`(3^n+(-2)^(n+2)+5)/10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091000

/-- `(3^n+(-2)^(n+2)+5)/10` -/
def P6491748809571549339.Spec : Prop :=
  ∀ n, P6491748809571549339.a n = (A091000 n : ℚ)

end A091000

/-! ## A091000.P13066156559061780260

`∑[ogf((-1+2x+2x^2)/(-1+x+6x^2))]`
-/

namespace A091000.P13066156559061780260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091000.P13066156559061780260

namespace A091000

/-- `∑[ogf((-1+2x+2x^2)/(-1+x+6x^2))]` -/
def P13066156559061780260.Spec : Prop :=
  ∀ n, P13066156559061780260.a n = A091000 n

end A091000

/-! ## A091000.P12848728456778252968

`ogf((-1+2x+2x^2)/(-1+2x+5x^2-6x^3))`
-/

namespace A091000.P12848728456778252968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2] [1, -2, -5, 6] n

end

end A091000.P12848728456778252968

namespace A091000

/-- `ogf((-1+2x+2x^2)/(-1+2x+5x^2-6x^3))` -/
def P12848728456778252968.Spec : Prop :=
  ∀ n, P12848728456778252968.a n = A091000 n

end A091000

/-! ## A091000.P3029074854856845571

`3*a(n-1)+(-2)^n-1` with `a(0)=1`
-/

namespace A091000.P3029074854856845571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + ((-2) ^ n - 1)

end

end A091000.P3029074854856845571

namespace A091000

/-- `3*a(n-1)+(-2)^n-1` -/
def P3029074854856845571.Spec : Prop :=
  ∀ n, P3029074854856845571.a n = A091000 n

end A091000

/-! ## A091000.P16470994223872250066

`(-2)^n-(1-3*a(n-1))` with `a(0)=1`
-/

namespace A091000.P16470994223872250066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-2) ^ n - (1 - 3 * a (n - 1))

end

end A091000.P16470994223872250066

namespace A091000

/-- `(-2)^n-(1-3*a(n-1))` -/
def P16470994223872250066.Spec : Prop :=
  ∀ n, P16470994223872250066.a n = A091000 n

end A091000

/-! ## A091000.P5547348703404069752

`a(n-1)+6*a(n-2)-3` with `a(0)=1, a(1)=0`
-/

namespace A091000.P5547348703404069752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 6 * a (n - 2) - 3

end

end A091000.P5547348703404069752

namespace A091000

/-- `a(n-1)+6*a(n-2)-3` -/
def P5547348703404069752.Spec : Prop :=
  ∀ n, P5547348703404069752.a n = A091000 n

end A091000

/-! ## A091000.P13421791582490334685

`a(n-1)-3*(1-2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A091000.P13421791582490334685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - 3 * (1 - 2 * a (n - 2))

end

end A091000.P13421791582490334685

namespace A091000

/-- `a(n-1)-3*(1-2*a(n-2))` -/
def P13421791582490334685.Spec : Prop :=
  ∀ n, P13421791582490334685.a n = A091000 n

end A091000

/-! ## A091000.P12836428119789064644

`ceil(A232015(n)/2)`
-/

namespace A091000.P12836428119789064644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232015 n : ℚ) / 2⌉

end

end A091000.P12836428119789064644

namespace A091000

/-- `ceil(A232015(n)/2)` -/
def P12836428119789064644.Spec : Prop :=
  ∀ n, P12836428119789064644.a n = A091000 n

end A091000

/-! ## A091000.P15981335876394949515

`A054883(n)+A054882(n)`
-/

namespace A091000.P15981335876394949515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054883 n + A054882 n

end

end A091000.P15981335876394949515

namespace A091000

/-- `A054883(n)+A054882(n)` -/
def P15981335876394949515.Spec : Prop :=
  ∀ n, P15981335876394949515.a n = A091000 n

end A091000

/-! ## A091000.P7598887413877811152

`A091001(n)+A077925(n)`
-/

namespace A091000.P7598887413877811152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 n + A077925 n

end

end A091000.P7598887413877811152

namespace A091000

/-- `A091001(n)+A077925(n)` -/
def P7598887413877811152.Spec : Prop :=
  ∀ n, P7598887413877811152.a n = A091000 n

end A091000

/-! ## A091000.P15805266121832569788

`A151575(n)+A091002(n)`
-/

namespace A091000.P15805266121832569788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + A091002 n

end

end A091000.P15805266121832569788

namespace A091000

/-- `A151575(n)+A091002(n)` -/
def P15805266121832569788.Spec : Prop :=
  ∀ n, P15805266121832569788.a n = A091000 n

end A091000

/-! ## A091000.P14409615835150107777

`A091002(n)-Δ[A140962(n)]`
-/

namespace A091000.P14409615835150107777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n - (f1 (n + 1) - f1 n)

end

end A091000.P14409615835150107777

namespace A091000

/-- `A091002(n)-Δ[A140962(n)]` -/
def P14409615835150107777.Spec : Prop :=
  ∀ n, P14409615835150107777.a n = A091000 n

end A091000

/-! ## A091000.P9049372768406134775

`A015441(n+1)-A003462(n)`
-/

namespace A091000.P9049372768406134775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (n + 1) - A003462 n

end

end A091000.P9049372768406134775

namespace A091000

/-- `A015441(n+1)-A003462(n)` -/
def P9049372768406134775.Spec : Prop :=
  ∀ n, P9049372768406134775.a n = A091000 n

end A091000

/-! ## A091000.P13042690150254307932

`∑[A232015(n)]-2*A091002(n)`
-/

namespace A091000.P13042690150254307932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A091002 n

end

end A091000.P13042690150254307932

namespace A091000

/-- `∑[A232015(n)]-2*A091002(n)` -/
def P13042690150254307932.Spec : Prop :=
  ∀ n, P13042690150254307932.a n = A091000 n

end A091000

/-! ## A091000.P18039546858861105040

`A091001(n+1)-2*A091002(n)`
-/

namespace A091000.P18039546858861105040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 (n + 1) - 2 * A091002 n

end

end A091000.P18039546858861105040

namespace A091000

/-- `A091001(n+1)-2*A091002(n)` -/
def P18039546858861105040.Spec : Prop :=
  ∀ n, P18039546858861105040.a n = A091000 n

end A091000

/-! ## A091000.P16090753021383947390

`A094555(n+1)-(A091002(n+1)+A091002(n))`
-/

namespace A091000.P16090753021383947390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) - (A091002 (n + 1) + A091002 n)

end

end A091000.P16090753021383947390

namespace A091000

/-- `A094555(n+1)-(A091002(n+1)+A091002(n))` -/
def P16090753021383947390.Spec : Prop :=
  ∀ n, P16090753021383947390.a n = A091000 n

end A091000

/-! ## A091000.P2477036011564680097

`A140431(n+1)-A091002(n+2)`
-/

namespace A091000.P2477036011564680097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140431 (n + 1) - A091002 (n + 2)

end

end A091000.P2477036011564680097

namespace A091000

/-- `A140431(n+1)-A091002(n+2)` -/
def P2477036011564680097.Spec : Prop :=
  ∀ n, P2477036011564680097.a n = A091000 n

end A091000

/-!
# A091001: Number of walks of length n between adjacent nodes on the Petersen graph.

The programs for A091001, the canonical program `A091001.P7170187902048169177` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091001 has offset 0).

The definition of A091001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091001.P11873521461651291409

`A091002(n+1)-2*A091002(n)`
-/

namespace A091001.P11873521461651291409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (n + 1) - 2 * A091002 n

end

end A091001.P11873521461651291409

namespace A091001

/-- `A091002(n+1)-2*A091002(n)` -/
def P11873521461651291409.Spec : Prop :=
  ∀ n, P11873521461651291409.a n = A091001 n

end A091001

/-! ## A091001.P15885354660433585231

`(A000244(n)-A001045(n+1)*(-1)^n-6*A001045(n)*(-1)^n)/10`
-/

namespace A091001.P15885354660433585231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001045 (n + 1) * (-1) ^ n - 6 * A001045 n * (-1) ^ n : ℚ) / 10

end

end A091001.P15885354660433585231

namespace A091001

/-- `(A000244(n)-A001045(n+1)*(-1)^n-6*A001045(n)*(-1)^n)/10` -/
def P15885354660433585231.Spec : Prop :=
  ∀ n, P15885354660433585231.a n = (A091001 n : ℚ)

end A091001

/-! ## A091001.P7170187902048169177

`(3^(n+1)+(-2)^(n+3)+5)/30`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091001

/-- `(3^(n+1)+(-2)^(n+3)+5)/30` -/
def P7170187902048169177.Spec : Prop :=
  ∀ n, P7170187902048169177.a n = (A091001 n : ℚ)

end A091001

/-! ## A091001.P7994986618175837069

`∑[ogf((-x+2x^2)/(-1+x+6x^2))]`
-/

namespace A091001.P7994986618175837069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091001.P7994986618175837069

namespace A091001

/-- `∑[ogf((-x+2x^2)/(-1+x+6x^2))]` -/
def P7994986618175837069.Spec : Prop :=
  ∀ n, P7994986618175837069.a n = A091001 n

end A091001

/-! ## A091001.P7043827770504501217

`ogf((x-2x^2)/(1-2x-5x^2+6x^3))`
-/

namespace A091001.P7043827770504501217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -2, -5, 6] n

end

end A091001.P7043827770504501217

namespace A091001

/-- `ogf((x-2x^2)/(1-2x-5x^2+6x^3))` -/
def P7043827770504501217.Spec : Prop :=
  ∀ n, P7043827770504501217.a n = A091001 n

end A091001

/-! ## A091001.P6244417992429228476

`3*a(n-1)-∑[(-2)^n]` with `a(0)=0`
-/

namespace A091001.P6244417992429228476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091001.P6244417992429228476

namespace A091001

/-- `3*a(n-1)-∑[(-2)^n]` -/
def P6244417992429228476.Spec : Prop :=
  ∀ n, P6244417992429228476.a n = A091001 n

end A091001

/-! ## A091001.P10743510704353970990

`a(n-1)+6*a(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A091001.P10743510704353970990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 6 * a (n - 2) - 1

end

end A091001.P10743510704353970990

namespace A091001

/-- `a(n-1)+6*a(n-2)-1` -/
def P10743510704353970990.Spec : Prop :=
  ∀ n, P10743510704353970990.a n = A091001 n

end A091001

/-! ## A091001.P6038109990333856129

`A232015(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A091001.P6038109990333856129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A232015 (n - 1) + a (n - 1)

end

end A091001.P6038109990333856129

namespace A091001

/-- `A232015(n-1)+a(n-1)` -/
def P6038109990333856129.Spec : Prop :=
  ∀ n, P6038109990333856129.a n = A091001 n

end A091001

/-! ## A091001.P3364355399021884498

`A124302(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A091001.P3364355399021884498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A124302 n - (a (n - 1) + a (n - 1))

end

end A091001.P3364355399021884498

namespace A091001

/-- `A124302(n)-(a(n-1)+a(n-1))` -/
def P3364355399021884498.Spec : Prop :=
  ∀ n, P3364355399021884498.a n = A091001 n

end A091001

/-! ## A091001.P3218193869006881300

`A015441(n)-A091002(n)`
-/

namespace A091001.P3218193869006881300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n - A091002 n

end

end A091001.P3218193869006881300

namespace A091001

/-- `A015441(n)-A091002(n)` -/
def P3218193869006881300.Spec : Prop :=
  ∀ n, P3218193869006881300.a n = A091001 n

end A091001

/-! ## A091001.P17009529412988577618

`A091000(n)-A077925(n)`
-/

namespace A091001.P17009529412988577618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091000 n - A077925 n

end

end A091001.P17009529412988577618

namespace A091001

/-- `A091000(n)-A077925(n)` -/
def P17009529412988577618.Spec : Prop :=
  ∀ n, P17009529412988577618.a n = A091001 n

end A091001

/-! ## A091001.P17908491988750416893

`A094555(n)-abs(A091005(n))`
-/

namespace A091001.P17908491988750416893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 n - |A091005 n|

end

end A091001.P17908491988750416893

namespace A091001

/-- `A094555(n)-abs(A091005(n))` -/
def P17908491988750416893.Spec : Prop :=
  ∀ n, P17908491988750416893.a n = A091001 n

end A091001

/-! ## A091001.P17567529557745157479

`∑[A094556(n)-A091002(n)]`
-/

namespace A091001.P17567529557745157479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n - A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091001.P17567529557745157479

namespace A091001

/-- `∑[A094556(n)-A091002(n)]` -/
def P17567529557745157479.Spec : Prop :=
  ∀ n, P17567529557745157479.a n = A091001 n

end A091001

/-! ## A091001.P6716360546230721643

`A091002(n)+1-A151575(n)`
-/

namespace A091001.P6716360546230721643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + (1 - A151575 n)

end

end A091001.P6716360546230721643

namespace A091001

/-- `A091002(n)+1-A151575(n)` -/
def P6716360546230721643.Spec : Prop :=
  ∀ n, P6716360546230721643.a n = A091001 n

end A091001

/-! ## A091001.P8747458416910970486

`A091002(n)+Δ[A140962(n)]+1`
-/

namespace A091001.P8747458416910970486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + (f1 (n + 1) - f1 n + 1)

end

end A091001.P8747458416910970486

namespace A091001

/-- `A091002(n)+Δ[A140962(n)]+1` -/
def P8747458416910970486.Spec : Prop :=
  ∀ n, P8747458416910970486.a n = A091001 n

end A091001

/-! ## A091001.P6195813601487690306

`∑[A232015(n)]-A232015(n)`
-/

namespace A091001.P6195813601487690306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A232015 n

end

end A091001.P6195813601487690306

namespace A091001

/-- `∑[A232015(n)]-A232015(n)` -/
def P6195813601487690306.Spec : Prop :=
  ∀ n, P6195813601487690306.a n = A091001 n

end A091001

/-! ## A091001.P13622408022552852459

`Δ[A167910(n)]-(A167910(n)+A091002(n))`
-/

namespace A091001.P13622408022552852459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A167910 n + A091002 n)

end

end A091001.P13622408022552852459

namespace A091001

/-- `Δ[A167910(n)]-(A167910(n)+A091002(n))` -/
def P13622408022552852459.Spec : Prop :=
  ∀ n, P13622408022552852459.a n = A091001 n

end A091001

/-! ## A091001.P4765428277204485735

`3^n-A091002(n+2)`
-/

namespace A091001.P4765428277204485735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A091002 (n + 2)

end

end A091001.P4765428277204485735

namespace A091001

/-- `3^n-A091002(n+2)` -/
def P4765428277204485735.Spec : Prop :=
  ∀ n, P4765428277204485735.a n = A091001 n

end A091001

/-! ## A091001.P12331288741033282155

`A091000(n+1)/A000244(n+1)*A000244(n)`
-/

namespace A091001.P12331288741033282155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091000 (n + 1) : ℚ) / (A000244 (n + 1) : ℚ) * (A000244 n : ℚ)

end

end A091001.P12331288741033282155

namespace A091001

/-- `A091000(n+1)/A000244(n+1)*A000244(n)` -/
def P12331288741033282155.Spec : Prop :=
  ∀ n, P12331288741033282155.a n = (A091001 n : ℚ)

end A091001

/-!
# A091002: Number of walks of length n between non-adjacent nodes on the Petersen graph.

The programs for A091002, the canonical program `A091002.P17160701100159131269` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091002 has offset 0).

The definition of A091002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091002.P6143973117332317387

`(A000244(n)-A001045(n+1)*(-1)^n+4*A001045(n)*(-1)^n)/10`
-/

namespace A091002.P6143973117332317387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n - A001045 (n + 1) * (-1) ^ n + 4 * A001045 n * (-1) ^ n : ℚ) / 10

end

end A091002.P6143973117332317387

namespace A091002

/-- `(A000244(n)-A001045(n+1)*(-1)^n+4*A001045(n)*(-1)^n)/10` -/
def P6143973117332317387.Spec : Prop :=
  ∀ n, P6143973117332317387.a n = (A091002 n : ℚ)

end A091002

/-! ## A091002.P17160701100159131269

`(3^(n+1)-(-2)^(n+1)-5)/30`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091002

/-- `(3^(n+1)-(-2)^(n+1)-5)/30` -/
def P17160701100159131269.Spec : Prop :=
  ∀ n, P17160701100159131269.a n = (A091002 n : ℚ)

end A091002

/-! ## A091002.P8193252226754690831

`ogf(x^2/(1-2x-5x^2+6x^3))`
-/

namespace A091002.P8193252226754690831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -2, -5, 6] n

end

end A091002.P8193252226754690831

namespace A091002

/-- `ogf(x^2/(1-2x-5x^2+6x^3))` -/
def P8193252226754690831.Spec : Prop :=
  ∀ n, P8193252226754690831.a n = A091002 n

end A091002

/-! ## A091002.P6684615245347884379

`6*a(n-2)+a(n-1)+1` with `a(0)=0, a(1)=0`
-/

namespace A091002.P6684615245347884379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  6 * a (n - 2) + (a (n - 1) + 1)

end

end A091002.P6684615245347884379

namespace A091002

/-- `6*a(n-2)+a(n-1)+1` -/
def P6684615245347884379.Spec : Prop :=
  ∀ n, (P6684615245347884379.a n : ℤ) = A091002 n

end A091002

/-! ## A091002.P6625521085283720132

`∑[3*a(n-1)]-2*a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A091002.P6625521085283720132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 * a (n - 1)

end

end A091002.P6625521085283720132

namespace A091002

/-- `∑[3*a(n-1)]-2*a(n-1)` -/
def P6625521085283720132.Spec : Prop :=
  ∀ n, P6625521085283720132.a n = A091002 n

end A091002

/-! ## A091002.P2264043648966812472

`∑[abs(A091005(n))]`
-/

namespace A091002.P2264043648966812472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091002.P2264043648966812472

namespace A091002

/-- `∑[abs(A091005(n))]` -/
def P2264043648966812472.Spec : Prop :=
  ∀ n, P2264043648966812472.a n = A091002 n

end A091002

/-! ## A091002.P11904233865779009356

`∑[A015441(log2(ceil(2^(n-1))))]`
-/

namespace A091002.P11904233865779009356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091002.P11904233865779009356

namespace A091002

/-- `∑[A015441(log2(ceil(2^(n-1))))]` -/
def P11904233865779009356.Spec : Prop :=
  ∀ n, P11904233865779009356.a n = A091002 n

end A091002

/-! ## A091002.P12703949422859468782

`A015441(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A091002.P12703949422859468782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A015441 (n - 1) + a (n - 1)

end

end A091002.P12703949422859468782

namespace A091002

/-- `A015441(n-1)+a(n-1)` -/
def P12703949422859468782.Spec : Prop :=
  ∀ n, P12703949422859468782.a n = A091002 n

end A091002

/-! ## A091002.P1576525450078822801

`A015441(n)-A091001(n)`
-/

namespace A091002.P1576525450078822801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n - A091001 n

end

end A091002.P1576525450078822801

namespace A091002

/-- `A015441(n)-A091001(n)` -/
def P1576525450078822801.Spec : Prop :=
  ∀ n, P1576525450078822801.a n = A091002 n

end A091002

/-! ## A091002.P9463772209562535914

`A091000(n)-A151575(n)`
-/

namespace A091002.P9463772209562535914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091000 n - A151575 n

end

end A091002.P9463772209562535914

namespace A091002

/-- `A091000(n)-A151575(n)` -/
def P9463772209562535914.Spec : Prop :=
  ∀ n, P9463772209562535914.a n = A091002 n

end A091002

/-! ## A091002.P2853394574934798510

`abs(A091005(n+1))-A091001(n)`
-/

namespace A091002.P2853394574934798510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091005 (n + 1)| - A091001 n

end

end A091002.P2853394574934798510

namespace A091002

/-- `abs(A091005(n+1))-A091001(n)` -/
def P2853394574934798510.Spec : Prop :=
  ∀ n, P2853394574934798510.a n = A091002 n

end A091002

/-! ## A091002.P14265962000122202016

`abs(A091004(n))-A094555(n)`
-/

namespace A091002.P14265962000122202016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091004 n| - A094555 n

end

end A091002.P14265962000122202016

namespace A091002

/-- `abs(A091004(n))-A094555(n)` -/
def P14265962000122202016.Spec : Prop :=
  ∀ n, P14265962000122202016.a n = A091002 n

end A091002

/-! ## A091002.P3923446960969598608

`A102901(n)-A091001(n+1)`
-/

namespace A091002.P3923446960969598608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n - A091001 (n + 1)

end

end A091002.P3923446960969598608

namespace A091002

/-- `A102901(n)-A091001(n+1)` -/
def P3923446960969598608.Spec : Prop :=
  ∀ n, P3923446960969598608.a n = A091002 n

end A091002

/-! ## A091002.P7404557266185600630

`2*A167910(n)-∑[A167910(n)]`
-/

namespace A091002.P7404557266185600630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167910 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091002.P7404557266185600630

namespace A091002

/-- `2*A167910(n)-∑[A167910(n)]` -/
def P7404557266185600630.Spec : Prop :=
  ∀ n, P7404557266185600630.a n = A091002 n

end A091002

/-! ## A091002.P7097755820161610192

`A124302(n+1)%(A124302(n)+a(n-1))` with `a(0)=0`
-/

namespace A091002.P7097755820161610192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A124302 (n + 1)) (A124302 n + a (n - 1))

end

end A091002.P7097755820161610192

namespace A091002

/-- `A124302(n+1)%(A124302(n)+a(n-1))` -/
def P7097755820161610192.Spec : Prop :=
  ∀ n, P7097755820161610192.a n = A091002 n

end A091002

/-! ## A091002.P3556014553812867040

`A102901(n)-A091001(n)-A232015(n)`
-/

namespace A091002.P3556014553812867040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n - A091001 n - A232015 n

end

end A091002.P3556014553812867040

namespace A091002

/-- `A102901(n)-A091001(n)-A232015(n)` -/
def P3556014553812867040.Spec : Prop :=
  ∀ n, P3556014553812867040.a n = A091002 n

end A091002

/-! ## A091002.P9168018004248815791

`A102901(n)+∑[A015441(n)-A102901(n)]`
-/

namespace A091002.P9168018004248815791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n - A102901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091002.P9168018004248815791

namespace A091002

/-- `A102901(n)+∑[A015441(n)-A102901(n)]` -/
def P9168018004248815791.Spec : Prop :=
  ∀ n, P9168018004248815791.a n = A091002 n

end A091002

/-!
# A091003: Expansion of (1-3*x^2)/((1-2*x)*(1+3*x)).

The programs for A091003, the canonical program `A091003.P2990863530102686256` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091003 has offset 0).

The definition of A091003 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1+x-6x^2))` (program `A091003.P2990863530102686256`, by `A091003.P2990863530102686256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091003.P2990863530102686256

`ogf((1-3x^2)/(1+x-6x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091003

/-- `ogf((1-3x^2)/(1+x-6x^2))` -/
def P2990863530102686256.Spec : Prop :=
  ∀ n, P2990863530102686256.a n = A091003 n

theorem P2990863530102686256.correct : P2990863530102686256.Spec := by
  intro n
  simp only [A091003]

end A091003

/-! ## A091003.P6832451832434425772

`round(Δ[A091005(n+1)/2])`
-/

namespace A091003.P6832451832434425772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091005 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A091003.P6832451832434425772

namespace A091003

/-- `round(Δ[A091005(n+1)/2])` -/
def P6832451832434425772.Spec : Prop :=
  ∀ n, P6832451832434425772.a n = A091003 n

end A091003

/-! ## A091003.P13047662578778822886

`Δ[A091005(A000038(n)+1+n)/2]`
-/

namespace A091003.P13047662578778822886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091005 (A000038 n + 1 + (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091003.P13047662578778822886

namespace A091003

/-- `Δ[A091005(A000038(n)+1+n)/2]` -/
def P13047662578778822886.Spec : Prop :=
  ∀ n, P13047662578778822886.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P12454277423253694430

`ceil(A091004(n+1)/2)`
-/

namespace A091003.P12454277423253694430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091004 (n + 1) : ℚ) / 2⌉

end

end A091003.P12454277423253694430

namespace A091003

/-- `ceil(A091004(n+1)/2)` -/
def P12454277423253694430.Spec : Prop :=
  ∀ n, P12454277423253694430.a n = A091003 n

end A091003

/-! ## A091003.P1730816345031808443

`A133467(n)/A280560(n)`
-/

namespace A091003.P1730816345031808443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133467 n : ℚ) / (A280560 n : ℚ)

end

end A091003.P1730816345031808443

namespace A091003

/-- `A133467(n)/A280560(n)` -/
def P1730816345031808443.Spec : Prop :=
  ∀ n, P1730816345031808443.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P12764066242904098489

`Δ[A091005(n+1)]/A040001(2*n)`
-/

namespace A091003.P12764066242904098489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A091003.P12764066242904098489

namespace A091003

/-- `Δ[A091005(n+1)]/A040001(2*n)` -/
def P12764066242904098489.Spec : Prop :=
  ∀ n, P12764066242904098489.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P8951658330182200154

`Δ[A091005(n+1)]/A000032(floor(1/(n+1)))`
-/

namespace A091003.P8951658330182200154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A091003.P8951658330182200154

namespace A091003

/-- `Δ[A091005(n+1)]/A000032(floor(1/(n+1)))` -/
def P8951658330182200154.Spec : Prop :=
  ∀ n, P8951658330182200154.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P11440833917774143488

`A091004(n+1)/(4*n+1-A004273(2*n))`
-/

namespace A091003.P11440833917774143488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091004 (n + 1) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A091003.P11440833917774143488

namespace A091003

/-- `A091004(n+1)/(4*n+1-A004273(2*n))` -/
def P11440833917774143488.Spec : Prop :=
  ∀ n, P11440833917774143488.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P4228153472531865215

`A091004(n+1)/A107286(A008458(n))`
-/

namespace A091003.P4228153472531865215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091004 (n + 1) : ℚ) / (A107286 (A008458 n).toNat : ℚ)

end

end A091003.P4228153472531865215

namespace A091003

/-- `A091004(n+1)/A107286(A008458(n))` -/
def P4228153472531865215.Spec : Prop :=
  ∀ n, P4228153472531865215.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P5240970575163254326

`A091004(n+1)/A107286(A008574(n))`
-/

namespace A091003.P5240970575163254326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091004 (n + 1) : ℚ) / (A107286 (A008574 n).toNat : ℚ)

end

end A091003.P5240970575163254326

namespace A091003

/-- `A091004(n+1)/A107286(A008574(n))` -/
def P5240970575163254326.Spec : Prop :=
  ∀ n, P5240970575163254326.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P2934202284527204058

`A091004(n+1)/A107286(A008579(n))`
-/

namespace A091003.P2934202284527204058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091004 (n + 1) : ℚ) / (A107286 (A008579 n).toNat : ℚ)

end

end A091003.P2934202284527204058

namespace A091003

/-- `A091004(n+1)/A107286(A008579(n))` -/
def P2934202284527204058.Spec : Prop :=
  ∀ n, P2934202284527204058.a n = (A091003 n : ℚ)

end A091003

/-! ## A091003.P2677996062212778269

`A133467(n)/A110162(A000217(n))`
-/

namespace A091003.P2677996062212778269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133467 n : ℚ) / (A110162 (A000217 n).toNat : ℚ)

end

end A091003.P2677996062212778269

namespace A091003

/-- `A133467(n)/A110162(A000217(n))` -/
def P2677996062212778269.Spec : Prop :=
  ∀ n, P2677996062212778269.a n = (A091003 n : ℚ)

end A091003

/-!
# A091004: Expansion of x*(1-x)/((1-2*x)*(1+3*x)).

The programs for A091004, the canonical program `A091004.P10801994136498785649` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091004 has offset 0).

The definition of A091004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1+x-6x^2))` (program `A091004.P10801994136498785649`, by `A091004.P10801994136498785649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091004.P10801994136498785649

`ogf((x-x^2)/(1+x-6x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091004

/-- `ogf((x-x^2)/(1+x-6x^2))` -/
def P10801994136498785649.Spec : Prop :=
  ∀ n, P10801994136498785649.a n = A091004 n

theorem P10801994136498785649.correct : P10801994136498785649.Spec := by
  intro n
  simp only [A091004]

end A091004

/-! ## A091004.P2172658361137462388

`Δ[6*a(n-2)-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A091004.P2172658361137462388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  6 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091004.P2172658361137462388

namespace A091004

/-- `Δ[6*a(n-2)-a(n-1)]` -/
def P2172658361137462388.Spec : Prop :=
  ∀ n, P2172658361137462388.a n = A091004 n

end A091004

/-! ## A091004.P12990099308099044625

`2*3*a(n-2)-a(n-1)` with `a(0)=0, a(1)=1, a(2)=-2`
-/

namespace A091004.P12990099308099044625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -2] fun n a =>
  2 * (3 * a (n - 2)) - a (n - 1)

end

end A091004.P12990099308099044625

namespace A091004

/-- `2*3*a(n-2)-a(n-1)` -/
def P12990099308099044625.Spec : Prop :=
  ∀ n, P12990099308099044625.a n = A091004 n

end A091004

/-! ## A091004.P1780582827839224916

`Δ[A091005(n)]`
-/

namespace A091004.P1780582827839224916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091004.P1780582827839224916

namespace A091004

/-- `Δ[A091005(n)]` -/
def P1780582827839224916.Spec : Prop :=
  ∀ n, P1780582827839224916.a n = A091004 n

end A091004

/-! ## A091004.P13634124507834543923

`A166444(n)-3*a(n-1)` with `a(0)=0`
-/

namespace A091004.P13634124507834543923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A166444 n - 3 * a (n - 1)

end

end A091004.P13634124507834543923

namespace A091004

/-- `A166444(n)-3*a(n-1)` -/
def P13634124507834543923.Spec : Prop :=
  ∀ n, P13634124507834543923.a n = A091004 n

end A091004

/-! ## A091004.P18122111611516913967

`A091005(n+1)-A091005(n)`
-/

namespace A091004.P18122111611516913967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091005 (n + 1) - A091005 n

end

end A091004.P18122111611516913967

namespace A091004

/-- `A091005(n+1)-A091005(n)` -/
def P18122111611516913967.Spec : Prop :=
  ∀ n, P18122111611516913967.a n = A091004 n

end A091004

/-! ## A091004.P4506896436676659544

`A057728(A005893(n+1)+1)-3*a(n-1)` with `a(0)=0`
-/

namespace A091004.P4506896436676659544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057728 (A005893 (n + 1) + 1).toNat - 3 * a (n - 1)

end

end A091004.P4506896436676659544

namespace A091004

/-- `A057728(A005893(n+1)+1)-3*a(n-1)` -/
def P4506896436676659544.Spec : Prop :=
  ∀ n, P4506896436676659544.a n = A091004 n

end A091004

/-!
# A091005: Expansion of x^2/((1-2*x)*(1+3*x)).

The programs for A091005, the canonical program `A091005.P7419346381363690214` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091005 has offset 0).

The definition of A091005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1+x-6x^2))` (program `A091005.P7419346381363690214`, by `A091005.P7419346381363690214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091005.P7419346381363690214

`ogf(x^2/(1+x-6x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091005

/-- `ogf(x^2/(1+x-6x^2))` -/
def P7419346381363690214.Spec : Prop :=
  ∀ n, P7419346381363690214.a n = A091005 n

theorem P7419346381363690214.correct : P7419346381363690214.Spec := by
  intro n
  simp only [A091005]

end A091005

/-! ## A091005.P5446299860298480503

`6*a(n-2)-a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A091005.P5446299860298480503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  6 * a (n - 2) - a (n - 1)

end

end A091005.P5446299860298480503

namespace A091005

/-- `6*a(n-2)-a(n-1)` -/
def P5446299860298480503.Spec : Prop :=
  ∀ n, P5446299860298480503.a n = A091005 n

end A091005

/-! ## A091005.P13992203226345515234

`a(n-1)+a(n-1)+(-3)^(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A091005.P13992203226345515234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (a (n - 1) + (-3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A091005.P13992203226345515234

namespace A091005

/-- `a(n-1)+a(n-1)+(-3)^(n-2)` -/
def P13992203226345515234.Spec : Prop :=
  ∀ n, P13992203226345515234.a n = (A091005 n : ℚ)

end A091005

/-! ## A091005.P9310859596805665384

`A091004(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A091005.P9310859596805665384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A091004 (n - 1) + a (n - 1)

end

end A091005.P9310859596805665384

namespace A091005

/-- `A091004(n-1)+a(n-1)` -/
def P9310859596805665384.Spec : Prop :=
  ∀ n, P9310859596805665384.a n = A091005 n

end A091005

/-! ## A091005.P9714283731929162338

`A091003(n)%A133494(n)`
-/

namespace A091005.P9714283731929162338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091003 n) (A133494 n)

end

end A091005.P9714283731929162338

namespace A091005

/-- `A091003(n)%A133494(n)` -/
def P9714283731929162338.Spec : Prop :=
  ∀ n, P9714283731929162338.a n = A091005 n

end A091005

/-! ## A091005.P5745147816715999625

`∑[A091004(n)]-A091004(n)`
-/

namespace A091005.P5745147816715999625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091004 n

end

end A091005.P5745147816715999625

namespace A091005

/-- `∑[A091004(n)]-A091004(n)` -/
def P5745147816715999625.Spec : Prop :=
  ∀ n, P5745147816715999625.a n = A091005 n

end A091005

/-! ## A091005.P1413176947696250869

`Δ[A091004(n)-A014983(n)]`
-/

namespace A091005.P1413176947696250869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 n - A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091005.P1413176947696250869

namespace A091005

/-- `Δ[A091004(n)-A014983(n)]` -/
def P1413176947696250869.Spec : Prop :=
  ∀ n, P1413176947696250869.a n = A091005 n

end A091005

/-! ## A091005.P11410242743308459283

`Δ[A091004(n)]%A000244(n)`
-/

namespace A091005.P11410242743308459283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000244 n)

end

end A091005.P11410242743308459283

namespace A091005

/-- `Δ[A091004(n)]%A000244(n)` -/
def P11410242743308459283.Spec : Prop :=
  ∀ n, P11410242743308459283.a n = A091005 n

end A091005

/-!
# A091006: Triangle T(n,k) read by rows giving number of inequivalent indecomposable binary linear [n,k] codes with all columns distinct (projective codes) (n >= 1, 1 <= k <= n).

The programs for A091006, there is no canonical definition to state claims against.
-/

/-! ## A091006.P16571192049756353326

`A287272(3*A350753(n))`
-/

namespace A091006.P16571192049756353326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (3 * A350753 n).toNat

end

end A091006.P16571192049756353326

/-! ## A091006.P6907350028574771984

`A287272(lcm(3, A350753(n)))`
-/

namespace A091006.P6907350028574771984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (Int.lcm 3 (A350753 n))

end

end A091006.P6907350028574771984

/-! ## A091006.P17800226583548220736

`A178487(7*A350753(n)²)`
-/

namespace A091006.P17800226583548220736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (7 * A350753 n ^ 2).toNat

end

end A091006.P17800226583548220736

/-! ## A091006.P4904800175107275887

`A178487(A151509(n)*A350753(n))`
-/

namespace A091006.P4904800175107275887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A151509 n * A350753 n).toNat

end

end A091006.P4904800175107275887

/-! ## A091006.P14526148945985215887

`A091304(3^A350753(n))`
-/

namespace A091006.P14526148945985215887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A350753 n : ℤ))).toNat

end

end A091006.P14526148945985215887

/-!
# A091008: Triangle T(n,k) read by rows giving number of inequivalent binary linear [n,k] codes with all columns distinct (projective codes) (n >= 1, 1 <= k <= n).

The programs for A091008, there is no canonical definition to state claims against.
-/

/-! ## A091008.P2310319777888130125

`A178487(A355997(n+2))`
-/

namespace A091008.P2310319777888130125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A355997 (n + 2)).toNat

end

end A091008.P2310319777888130125

/-! ## A091008.P3230406470617076263

`A046742(n+1)-A083893(A218663(n+5))`
-/

namespace A091008.P3230406470617076263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046742 (n + 1) - A083893 (A218663 (n + 5)).toNat

end

end A091008.P3230406470617076263

/-! ## A091008.P11171699696766967155

`A123579(A046742(n+1)^A251072(n))`
-/

namespace A091008.P11171699696766967155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (SequenceMachineLib.roundAway ((A046742 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A091008.P11171699696766967155

/-! ## A091008.P3295974803650352892

`A123579(A046742(n+1)^A347811(n))`
-/

namespace A091008.P3295974803650352892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (SequenceMachineLib.roundAway ((A046742 (n + 1) : ℚ) ^ (A347811 n : ℤ))).toNat

end

end A091008.P3295974803650352892

/-! ## A091008.P8830040459171460990

`A123579(A046742(n+1)^A046739(n+3))`
-/

namespace A091008.P8830040459171460990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123579 (SequenceMachineLib.roundAway ((A046742 (n + 1) : ℚ) ^ (A046739 (n + 3) : ℤ))).toNat

end

end A091008.P8830040459171460990

/-!
# A091009: Number of triples (u,v,w) of divisors of n with v-u = w-v, and u < v < w.

The programs for A091009, there is no canonical definition to state claims against.
-/

/-! ## A091009.P13739909397007096682

`A337331(n+1)-Δ[A006218(n)]`
-/

namespace A091009.P13739909397007096682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337331 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091009.P13739909397007096682

/-! ## A091009.P124561119452004560

`A337331(n+1)-Δ[A054519(n)]`
-/

namespace A091009.P124561119452004560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337331 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091009.P124561119452004560

/-! ## A091009.P9064824230765439766

`A337331(n+1)-A000005(n+1)`
-/

namespace A091009.P9064824230765439766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337331 (n + 1) - A000005 (n + 1)

end

end A091009.P9064824230765439766

/-! ## A091009.P5782357271588996277

`A337331(n+1)-∑{d}[n+1, A020639(2*#)]/2`
-/

namespace A091009.P5782357271588996277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337331 (n + 1) : ℚ) - ((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2

end

end A091009.P5782357271588996277

/-! ## A091009.P15979278806178745609

`A337331(n+1)-(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A091009.P15979278806178745609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337331 (n + 1) - (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A091009.P15979278806178745609

/-! ## A091009.P12054514967900872119

`A337331(n+1)-(∑{d}[n+1, 1-#]+A000203(n+1))`
-/

namespace A091009.P12054514967900872119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337331 (n + 1) - (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + A000203 (n + 1))

end

end A091009.P12054514967900872119

/-!
# A091010: Numbers having no divisor d such that also d-x and d+x are divisors for some x.

The programs for A091010, there is no canonical definition to state claims against.
-/

/-! ## A091010.P2348614496974536033

`eq[1, exp(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091010.P2348614496974536033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A091009 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A091010.P2348614496974536033

/-! ## A091010.P18052525320548718009

`eq[0, A091009(n+1)]+1`
-/

namespace A091010.P18052525320548718009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091010.P18052525320548718009

/-! ## A091010.P9465681642922434510

`lt[A067131(n+1), 3]+1`
-/

namespace A091010.P9465681642922434510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091010.P9465681642922434510

/-! ## A091010.P13274607872367175130

`comp[A091011(n+1)-1]+1`
-/

namespace A091010.P13274607872367175130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091011 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A091010.P13274607872367175130

/-! ## A091010.P16842708929497248043

`eq[1, A000079(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091010.P16842708929497248043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000079 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091010.P16842708929497248043

/-! ## A091010.P16711648628031723704

`eq[1, A000123(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091010.P16711648628031723704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000123 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091010.P16711648628031723704

/-! ## A091010.P15393835523471255642

`eq[1, A006939(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091010.P15393835523471255642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A006939 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091010.P15393835523471255642

/-! ## A091010.P2213720115447438482

`eq[2, A000032(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091010.P2213720115447438482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091010.P2213720115447438482

/-! ## A091010.P16808763046626112668

`eq[2, A000040(a(A091009(n)))]` with `a(0)=1`
-/

namespace A091010.P16808763046626112668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091010.P16808763046626112668

/-! ## A091010.P17987314967889806854

`eq[2, A000009(a(A091009(n)))]` with `a(0)=3`
-/

namespace A091010.P17987314967889806854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000009 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091010.P17987314967889806854

/-!
# A091011: Numbers having at least one divisor, d, such that for some x, d-x and d+x are also divisors.

The programs for A091011, there is no canonical definition to state claims against.
-/

/-! ## A091011.P8781344037929226998

`lt[1, exp(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091011.P8781344037929226998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A091009 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A091011.P8781344037929226998

/-! ## A091011.P3254765193043413633

`lt[0, A091009(n+1)]+1`
-/

namespace A091011.P3254765193043413633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091011.P3254765193043413633

/-! ## A091011.P15887081010861669742

`lt[2, A067131(n+1)]+1`
-/

namespace A091011.P15887081010861669742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091011.P15887081010861669742

/-! ## A091011.P10631978123883391225

`lt[2, A067131(A028310(n))]`
-/

namespace A091011.P10631978123883391225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091011.P10631978123883391225

/-! ## A091011.P2334037767351818369

`lt[2, A067131(A233583(n+1))]`
-/

namespace A091011.P2334037767351818369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091011.P2334037767351818369

/-! ## A091011.P6590069498952632037

`lt[1, A000123(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091011.P6590069498952632037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000123 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091011.P6590069498952632037

/-! ## A091011.P6136275147805501611

`lt[1, A006939(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091011.P6136275147805501611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A006939 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091011.P6136275147805501611

/-! ## A091011.P1134871471688173

`lt[2, A000032(a(A091009(n)))]` with `a(0)=0`
-/

namespace A091011.P1134871471688173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091011.P1134871471688173

/-! ## A091011.P3660040493276540621

`eq[1, A000010(a(A091009(n)))]` with `a(0)=3`
-/

namespace A091011.P3660040493276540621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091011.P3660040493276540621

/-! ## A091011.P17373884473026023948

`lt[2, A000040(a(A091009(n)))]` with `a(0)=1`
-/

namespace A091011.P17373884473026023948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091011.P17373884473026023948

/-!
# A091012: Numbers having exactly one divisor d such that for some x also d-x and d+x are divisors.

The programs for A091012, there is no canonical definition to state claims against.
-/

/-! ## A091012.P5871188452988633442

`eq[1, A091009(n+1)]+1`
-/

namespace A091012.P5871188452988633442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091012.P5871188452988633442

/-! ## A091012.P12034364535105641289

`eq[1, A091009(A028310(n))]`
-/

namespace A091012.P12034364535105641289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091012.P12034364535105641289

/-! ## A091012.P3662964262037416680

`eq[2, A000032(a(A091009(n)))]` with `a(0)=1, a(1)=0`
-/

namespace A091012.P3662964262037416680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  A000032 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091012.P3662964262037416680

/-! ## A091012.P4600673739308465217

`eq[2, A000045(a(A091009(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A091012.P4600673739308465217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091012.P4600673739308465217

/-! ## A091012.P9655940203088899596

`eq[2, A000010(a(A091009(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A091012.P9655940203088899596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A000010 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091012.P9655940203088899596

/-!
# A091013: Numbers having more than one divisor d such that for some x also d-x and d+x are divisors.

The programs for A091013, there is no canonical definition to state claims against.
-/

/-! ## A091013.P10177576937568609679

`lt[1, A091009(n+1)]+1`
-/

namespace A091013.P10177576937568609679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091013.P10177576937568609679

/-! ## A091013.P15442195075680936148

`lt[1, exp(a(A091009(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A091013.P15442195075680936148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  Real.exp (f2 (A091009 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A091013.P15442195075680936148

/-! ## A091013.P6102505399679845197

`lt[1, A091009(A028310(n))]`
-/

namespace A091013.P6102505399679845197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091013.P6102505399679845197

/-! ## A091013.P13120632185256280753

`lt[1, A091009(A233583(n+1))]`
-/

namespace A091013.P13120632185256280753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091013.P13120632185256280753

/-! ## A091013.P3808539819811124889

`lt[1, A091009(A000038(n)+n)]`
-/

namespace A091013.P3808539819811124889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091013.P3808539819811124889

/-! ## A091013.P15259522237107214939

`lt[1, A000123(a(A091009(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A091013.P15259522237107214939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A000123 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091013.P15259522237107214939

/-! ## A091013.P9106963381321930118

`lt[1, A006939(a(A091009(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A091013.P9106963381321930118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A006939 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091013.P9106963381321930118

/-! ## A091013.P15879289958341822574

`lt[2, A000032(a(A091009(n)))]` with `a(0)=0, a(1)=0`
-/

namespace A091013.P15879289958341822574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  A000032 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091013.P15879289958341822574

/-! ## A091013.P5170429523375677597

`eq[2, A000038(a(A091009(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A091013.P5170429523375677597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000038 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091013.P5170429523375677597

/-! ## A091013.P8417889183821315667

`eq[1, A000007(a(A091009(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A091013.P8417889183821315667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000007 (f2 (A091009 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091013.P8417889183821315667

/-!
# A091015: Least integer x>0 such that x^2=ceiling(x*r*floor(x/r)) where r=sqrt(n).

The programs for A091015, there is no canonical definition to state claims against.
-/

/-! ## A091015.P15683988866285985877

`A002350(n+1-char[(n+1)*(n+3)])`
-/

namespace A091015.P15683988866285985877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (n + 1 - (if ∃ j, f1 j = n then 1 else 0))

end

end A091015.P15683988866285985877

/-! ## A091015.P17910425904836259783

`ratio[A214080(n)]*A002350(n+1)`
-/

namespace A091015.P17910425904836259783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A002350 (n + 1) : ℚ)

end

end A091015.P17910425904836259783

/-! ## A091015.P5234257674398666867

`A002350(n+1)*A056926(n+1)`
-/

namespace A091015.P5234257674398666867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (n + 1) * A056926 (n + 1)

end

end A091015.P5234257674398666867

/-! ## A091015.P4848430257779866565

`sqrt((n+1)*A069018(n+1)+1)*ratio[A214080(n)]`
-/

namespace A091015.P4848430257779866565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A069018 (n + 1) + 1 : ℝ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A091015.P4848430257779866565

/-! ## A091015.P61230816978016982

`sqrt((n+1)*A069018(n+1)+1)*A056926(n+1)`
-/

namespace A091015.P61230816978016982
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A069018 (n + 1) + 1 : ℝ) * (A056926 (n + 1) : ℝ)

end

end A091015.P61230816978016982

/-! ## A091015.P17492884879446923724

`A142150(A316355(n))+A002350(n+1)`
-/

namespace A091015.P17492884879446923724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A316355 n).toNat + A002350 (n + 1)

end

end A091015.P17492884879446923724

/-! ## A091015.P5639814036998805230

`lcm(A002350(n+1), A056926(A000027(n+1)))`
-/

namespace A091015.P5639814036998805230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002350 (n + 1)) (A056926 (A000027 (n + 1)).toNat)

end

end A091015.P5639814036998805230

/-! ## A091015.P17417473707856449843

`A002350(n+1)+A000196(n)%A000196(n+1)`
-/

namespace A091015.P17417473707856449843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (n + 1) + Int.tmod (A000196 n) (A000196 (n + 1))

end

end A091015.P17417473707856449843

/-!
# A091016: a(n) is the least x such that the n values x+0, x+6, x+12, ..., x+6*(n-1) are all products of exactly two primes (i.e., semiprimes).

The programs for A091016, there is no canonical definition to state claims against.
-/

/-! ## A091016.P1939731029780388950

`A124570(eq[4, A219347(n)])`
-/

namespace A091016.P1939731029780388950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091016.P1939731029780388950

/-! ## A091016.P584065767973265931

`A124570(eq[6, A193592(n)])`
-/

namespace A091016.P584065767973265931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091016.P584065767973265931

/-!
# A091018: Numbers in n-th upward diagonal of triangle T : 0; 1, 2; 3, 4, 5; 6, 7, 8, 9; ...

The programs for A091018, the canonical program `A091018.P2259398009619809425` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091018 has offset 0).

The definition of A091018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056536, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091018.P2259398009619809425

`A056536(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091018

/-- `A056536(n+1)-1` -/
def P2259398009619809425.Spec : Prop :=
  ∀ n, P2259398009619809425.a n = A091018 n

theorem P2259398009619809425.correct : P2259398009619809425.Spec := by
  intro n
  simp only [A091018]

end A091018

/-! ## A091018.P9927628835918235544

`A001478(n+1)+A056536(n+1)+n`
-/

namespace A091018.P9927628835918235544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A056536 (n + 1) + (n : ℤ))

end

end A091018.P9927628835918235544

namespace A091018

/-- `A001478(n+1)+A056536(n+1)+n` -/
def P9927628835918235544.Spec : Prop :=
  ∀ n, P9927628835918235544.a n = A091018 n

theorem P9927628835918235544.correct : P9927628835918235544.Spec := by
  intro n
  simp only [A091018, Nat.add_sub_cancel, A091018.P9927628835918235544.a, A091018.P2259398009619809425.a, A001478, A001478.P11279598861711037921.a, A056536, A056536.P15475188742304027796.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091018

/-! ## A091018.P12924182552773200347

`A057428(2^val(n+1, 2))+A056536(n+1)`
-/

namespace A091018.P12924182552773200347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 ^ SequenceMachineLib.valuation (n + 1) 2) + A056536 (n + 1)

end

end A091018.P12924182552773200347

namespace A091018

/-- `A057428(2^val(n+1, 2))+A056536(n+1)` -/
def P12924182552773200347.Spec : Prop :=
  ∀ n, P12924182552773200347.a n = A091018 n

theorem P12924182552773200347.correct : P12924182552773200347.Spec := by
  intro n
  simp only [A091018, Nat.add_sub_cancel, A091018.P12924182552773200347.a, A091018.P2259398009619809425.a, A056536, A056536.P15475188742304027796.a, A057428, A057428.P2999489532230392221.a, A056537, A056537.P3331014331152516535.a, A057427, A057427.P3058147525557661423.a, A091995, A091995.P16558306300262697301.a, A000007, A000007.P6599383543502402472.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091018

/-! ## A091018.P2284500747127273023

`(A057428(n)+A056536(n+1))%(2*n+1)`
-/

namespace A091018.P2284500747127273023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057428 n + A056536 (n + 1)) (2 * n + 1 : ℤ)

end

end A091018.P2284500747127273023

namespace A091018

/-- `(A057428(n)+A056536(n+1))%(2*n+1)` -/
def P2284500747127273023.Spec : Prop :=
  ∀ n, P2284500747127273023.a n = A091018 n

end A091018

/-! ## A091018.P8018026369057426656

`A057428(A003558(n))+A056536(n+1)`
-/

namespace A091018.P8018026369057426656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A003558 n).toNat + A056536 (n + 1)

end

end A091018.P8018026369057426656

namespace A091018

/-- `A057428(A003558(n))+A056536(n+1)` -/
def P8018026369057426656.Spec : Prop :=
  ∀ n, P8018026369057426656.a n = A091018 n

end A091018

/-! ## A091018.P18052611424424766778

`A316441(A006530(n+2))+A056536(n+1)`
-/

namespace A091018.P18052611424424766778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A006530 (n + 2)).toNat + A056536 (n + 1)

end

end A091018.P18052611424424766778

namespace A091018

/-- `A316441(A006530(n+2))+A056536(n+1)` -/
def P18052611424424766778.Spec : Prop :=
  ∀ n, P18052611424424766778.a n = A091018 n

end A091018

/-! ## A091018.P1520026009825255558

`A057428(n+1)+A056536(n+1)`
-/

namespace A091018.P1520026009825255558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056536 (n + 1)

end

end A091018.P1520026009825255558

namespace A091018

/-- `A057428(n+1)+A056536(n+1)` -/
def P1520026009825255558.Spec : Prop :=
  ∀ n, P1520026009825255558.a n = A091018 n

theorem P1520026009825255558.correct : P1520026009825255558.Spec := by
  intro n
  simp only [A091018, Nat.add_sub_cancel, A091018.P1520026009825255558.a, A091018.P2259398009619809425.a, A056536, A056536.P15475188742304027796.a, A057428, A057428.P2999489532230392221.a, A056537, A056537.P3331014331152516535.a, A057427, A057427.P3058147525557661423.a, A091995, A091995.P16558306300262697301.a, A000007, A000007.P6599383543502402472.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091018

/-! ## A091018.P9425662810178762953

`A153881(n+2)+A056536(n+1)`
-/

namespace A091018.P9425662810178762953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A056536 (n + 1)

end

end A091018.P9425662810178762953

namespace A091018

/-- `A153881(n+2)+A056536(n+1)` -/
def P9425662810178762953.Spec : Prop :=
  ∀ n, P9425662810178762953.a n = A091018 n

end A091018

/-! ## A091018.P4464684186651262758

`A134824(n+2)+A056536(n+1)`
-/

namespace A091018.P4464684186651262758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A056536 (n + 1)

end

end A091018.P4464684186651262758

namespace A091018

/-- `A134824(n+2)+A056536(n+1)` -/
def P4464684186651262758.Spec : Prop :=
  ∀ n, P4464684186651262758.a n = A091018 n

end A091018

/-! ## A091018.P16065450683317728686

`A023443(A056536(n+1))`
-/

namespace A091018.P16065450683317728686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056536 (n + 1)).toNat

end

end A091018.P16065450683317728686

namespace A091018

/-- `A023443(A056536(n+1))` -/
def P16065450683317728686.Spec : Prop :=
  ∀ n, P16065450683317728686.a n = A091018 n

end A091018

/-!
# A091019: Denominators of the coefficients in the expansion of arccosh(x)/sqrt(2*(x-1)) about x=1.

The programs for A091019, there is no canonical definition to state claims against.
-/

/-! ## A091019.P2567531739804119031

`2^n*A002595(n)`
-/

namespace A091019.P2567531739804119031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002595 n

end

end A091019.P2567531739804119031

/-! ## A091019.P6263316661148384824

`A002553(n)/2^n`
-/

namespace A091019.P6263316661148384824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002553 n : ℚ) / (2 ^ n : ℚ)

end

end A091019.P6263316661148384824

/-! ## A091019.P15233340877939482972

`abs(A002553(n)/A122803(n))`
-/

namespace A091019.P15233340877939482972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002553 n : ℚ) / (A122803 n : ℚ)|

end

end A091019.P15233340877939482972

/-! ## A091019.P1573816452090434536

`record[A000079(n)*A002595(n)]`
-/

namespace A091019.P1573816452090434536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A002595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091019.P1573816452090434536

/-! ## A091019.P11199913238402881696

`A002595(n)*A011782(n+1)`
-/

namespace A091019.P11199913238402881696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002595 n * A011782 (n + 1)

end

end A091019.P11199913238402881696

/-!
# A091020: Numbers n such that in binary representation n is a substring of the n-th prime.

The programs for A091020, there is no canonical definition to state claims against.
-/

/-! ## A091020.P3874684456930531325

`A049084(A091021(n+1))`
-/

namespace A091020.P3874684456930531325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A091021 (n + 1)).toNat

end

end A091020.P3874684456930531325

/-! ## A091020.P7176249057543601637

`A061395(2*A091021(n+1))`
-/

namespace A091020.P7176249057543601637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A091021 (n + 1)).toNat

end

end A091020.P7176249057543601637

/-!
# A091021: Primes p=prime(k) such that in binary representation k is a substring of p.

The programs for A091021, there is no canonical definition to state claims against.
-/

/-! ## A091021.P12537242616844622484

`A000040(A091020(n+1))`
-/

namespace A091021.P12537242616844622484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091020 (n + 1)).toNat

end

end A091021.P12537242616844622484

/-! ## A091021.P5643134694279899358

`A008578(A091020(n+1)+1)`
-/

namespace A091021.P5643134694279899358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A091020 (n + 1) + 1).toNat

end

end A091021.P5643134694279899358

/-! ## A091021.P630968534049931409

`A182986(A091020(n+1)+1)`
-/

namespace A091021.P630968534049931409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A091020 (n + 1) + 1).toNat

end

end A091021.P630968534049931409

/-! ## A091021.P2830045748046454377

`A158611(A091020(n+1)+2)`
-/

namespace A091021.P2830045748046454377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A091020 (n + 1) + 2).toNat

end

end A091021.P2830045748046454377

/-! ## A091021.P8691684562048376151

`A073846(2*A091020(n+1))`
-/

namespace A091021.P8691684562048376151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A091020 (n + 1)).toNat

end

end A091021.P8691684562048376151

/-!
# A091022: Semiprimes with semiprime indices.

The programs for A091022, the canonical program `A091022.P5439883607584721882` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091022 has offset 1).

The definition of A091022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091022.P5439883607584721882

`A001358(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A091022

/-- `A001358(A001358(n+1))` -/
def P5439883607584721882.Spec : Prop :=
  ∀ n, P5439883607584721882.a n = A091022 (n + 1)

theorem P5439883607584721882.correct : P5439883607584721882.Spec := by
  intro n
  simp only [A091022, Nat.add_sub_cancel]

end A091022

/-! ## A091022.P9053015511540657838

`A001358(record[n/a(A001222(n))])` with `a(0)=4, a(1)=2`
-/

namespace A091022.P9053015511540657838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A091022.P9053015511540657838

namespace A091022

/-- `A001358(record[n/a(A001222(n))])` -/
def P9053015511540657838.Spec : Prop :=
  ∀ n, P9053015511540657838.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P4270446149378650245

`A001358(eq[n, n-a(A001222(n))])` with `a(0)=-1`
-/

namespace A091022.P4270446149378650245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091022.P4270446149378650245

namespace A091022

/-- `A001358(eq[n, n-a(A001222(n))])` -/
def P4270446149378650245.Spec : Prop :=
  ∀ n, P4270446149378650245.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P13835415525619910342

`A001358(eq[4, a(A001222(n))²])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A091022.P13835415525619910342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091022.P13835415525619910342

namespace A091022

/-- `A001358(eq[4, a(A001222(n))²])` -/
def P13835415525619910342.Spec : Prop :=
  ∀ n, P13835415525619910342.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P12801957013724719095

`A001358(eq[n, n/a(A001222(n))])` with `a(0)=1, a(1)=2`
-/

namespace A091022.P12801957013724719095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℚ) / f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A091022.P12801957013724719095

namespace A091022

/-- `A001358(eq[n, n/a(A001222(n))])` -/
def P12801957013724719095.Spec : Prop :=
  ∀ n, P12801957013724719095.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P7239497775050396339

`A001358(eq[2, ∑{e}[n, #]])`
-/

namespace A091022.P7239497775050396339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091022.P7239497775050396339

namespace A091022

/-- `A001358(eq[2, ∑{e}[n, #]])` -/
def P7239497775050396339.Spec : Prop :=
  ∀ n, P7239497775050396339.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P13190142639705033777

`A088707(eq[2, ∑{e}[n, #]])-1`
-/

namespace A091022.P13190142639705033777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A091022.P13190142639705033777

namespace A091022

/-- `A088707(eq[2, ∑{e}[n, #]])-1` -/
def P13190142639705033777.Spec : Prop :=
  ∀ n, P13190142639705033777.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P11469448493612819520

`A176540(A088707(n+1))`
-/

namespace A091022.P11469448493612819520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A088707 (n + 1)).toNat

end

end A091022.P11469448493612819520

namespace A091022

/-- `A176540(A088707(n+1))` -/
def P11469448493612819520.Spec : Prop :=
  ∀ n, P11469448493612819520.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P14116073706118446786

`A001358(eq[2, A105700(n)])`
-/

namespace A091022.P14116073706118446786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091022.P14116073706118446786

namespace A091022

/-- `A001358(eq[2, A105700(n)])` -/
def P14116073706118446786.Spec : Prop :=
  ∀ n, P14116073706118446786.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P2773656273276509357

`A001358(eq[2, A226378(n)])`
-/

namespace A091022.P2773656273276509357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091022.P2773656273276509357

namespace A091022

/-- `A001358(eq[2, A226378(n)])` -/
def P2773656273276509357.Spec : Prop :=
  ∀ n, P2773656273276509357.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P12036225985833230109

`A001358(eq[2, A284289(n)])`
-/

namespace A091022.P12036225985833230109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091022.P12036225985833230109

namespace A091022

/-- `A001358(eq[2, A284289(n)])` -/
def P12036225985833230109.Spec : Prop :=
  ∀ n, P12036225985833230109.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P12684200632875348094

`A176540(A176540(n+2)+1)`
-/

namespace A091022.P12684200632875348094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A176540 (n + 2) + 1).toNat

end

end A091022.P12684200632875348094

namespace A091022

/-- `A176540(A176540(n+2)+1)` -/
def P12684200632875348094.Spec : Prop :=
  ∀ n, P12684200632875348094.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P11274563209600207017

`sqrt(A074985(sqrt(A074985(n+1))))`
-/

namespace A091022.P11274563209600207017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat : ℝ)

end

end A091022.P11274563209600207017

namespace A091022

/-- `sqrt(A074985(sqrt(A074985(n+1))))` -/
def P11274563209600207017.Spec : Prop :=
  ∀ n, P11274563209600207017.a n = (A091022 (n + 1) : ℝ)

end A091022

/-! ## A091022.P8278188429018199140

`A186621(eq[2, A001222(n+1)]+1)+1`
-/

namespace A091022.P8278188429018199140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A091022.P8278188429018199140

namespace A091022

/-- `A186621(eq[2, A001222(n+1)]+1)+1` -/
def P8278188429018199140.Spec : Prop :=
  ∀ n, P8278188429018199140.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P15673286553082132443

`A088707(eq[2, A001222(n+1)]+1)-1`
-/

namespace A091022.P15673286553082132443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A091022.P15673286553082132443

namespace A091022

/-- `A088707(eq[2, A001222(n+1)]+1)-1` -/
def P15673286553082132443.Spec : Prop :=
  ∀ n, P15673286553082132443.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P2084010245690371098

`A075818(eq[2, A001222(n+1)]+1)/2`
-/

namespace A091022.P2084010245690371098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A091022.P2084010245690371098

namespace A091022

/-- `A075818(eq[2, A001222(n+1)]+1)/2` -/
def P2084010245690371098.Spec : Prop :=
  ∀ n, P2084010245690371098.a n = (A091022 (n + 1) : ℚ)

end A091022

/-! ## A091022.P17095154537407599322

`A002808(A176193(A002808(A176193(n+1))))`
-/

namespace A091022.P17095154537407599322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A176193 (A002808 (A176193 (n + 1)).toNat).toNat).toNat

end

end A091022.P17095154537407599322

namespace A091022

/-- `A002808(A176193(A002808(A176193(n+1))))` -/
def P17095154537407599322.Spec : Prop :=
  ∀ n, P17095154537407599322.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P15968407501803537951

`A129767(A075818(n+1))`
-/

namespace A091022.P15968407501803537951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (A075818 (n + 1)).toNat

end

end A091022.P15968407501803537951

namespace A091022

/-- `A129767(A075818(n+1))` -/
def P15968407501803537951.Spec : Prop :=
  ∀ n, P15968407501803537951.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P8356519297632489459

`A129767(2*A129767(2*(n+1)))`
-/

namespace A091022.P8356519297632489459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * A129767 (2 * (n + 1))).toNat

end

end A091022.P8356519297632489459

namespace A091022

/-- `A129767(2*A129767(2*(n+1)))` -/
def P8356519297632489459.Spec : Prop :=
  ∀ n, P8356519297632489459.a n = A091022 (n + 1)

end A091022

/-! ## A091022.P8801144086837981020

`A166133(A256563(A166133(A256563(n+1))))`
-/

namespace A091022.P8801144086837981020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256563 (A166133 (A256563 (n + 1)).toNat).toNat).toNat

end

end A091022.P8801144086837981020

namespace A091022

/-- `A166133(A256563(A166133(A256563(n+1))))` -/
def P8801144086837981020.Spec : Prop :=
  ∀ n, P8801144086837981020.a n = A091022 (n + 1)

end A091022

/-!
# A091024: Let v(0) be the column vector (1,0,0,0)'; for n>0, let v(n) = [1 1 1 1 / 1 1 1 0 / 1 1 0 0/ 1 0 0 0] v(n-1). Sequence gives third entry of v(n).

The programs for A091024, the canonical program `A091024.P10379744869245939923` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091024 has offset 0).

The definition of A091024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091024.P10379744869245939923

`2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091024

/-- `2*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P10379744869245939923.Spec : Prop :=
  ∀ n, P10379744869245939923.a n = A091024 n

theorem P10379744869245939923.correct : P10379744869245939923.Spec := by
  intro n
  simp only [A091024]

end A091024

/-! ## A091024.P17801807809605292689

`ogf(x/(1-2x-3x^2+x^3+x^4))`
-/

namespace A091024.P17801807809605292689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -3, 1, 1] n

end

end A091024.P17801807809605292689

namespace A091024

/-- `ogf(x/(1-2x-3x^2+x^3+x^4))` -/
def P17801807809605292689.Spec : Prop :=
  ∀ n, P17801807809605292689.a n = A091024 n

end A091024

/-! ## A091024.P10742922612690078917

`A187506(3*n)`
-/

namespace A091024.P10742922612690078917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (3 * n)

end

end A091024.P10742922612690078917

namespace A091024

/-- `A187506(3*n)` -/
def P10742922612690078917.Spec : Prop :=
  ∀ n, P10742922612690078917.a n = A091024 n

end A091024

/-! ## A091024.P9362094192793101421

`A187503(3*(n+1))`
-/

namespace A091024.P9362094192793101421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * (n + 1))

end

end A091024.P9362094192793101421

namespace A091024

/-- `A187503(3*(n+1))` -/
def P9362094192793101421.Spec : Prop :=
  ∀ n, P9362094192793101421.a n = A091024 n

end A091024

/-! ## A091024.P9067913179613630232

`A187504(3*n+2)`
-/

namespace A091024.P9067913179613630232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * n + 2)

end

end A091024.P9067913179613630232

namespace A091024

/-- `A187504(3*n+2)` -/
def P9067913179613630232.Spec : Prop :=
  ∀ n, P9067913179613630232.a n = A091024 n

end A091024

/-! ## A091024.P18430839868980047986

`∑[abs(∑[A122099(n+2)])]`
-/

namespace A091024.P18430839868980047986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122099 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091024.P18430839868980047986

namespace A091024

/-- `∑[abs(∑[A122099(n+2)])]` -/
def P18430839868980047986.Spec : Prop :=
  ∀ n, P18430839868980047986.a n = A091024 n

end A091024

/-! ## A091024.P7762367901684480550

`A123941(n)-a(n-1)` with `a(0)=0`
-/

namespace A091024.P7762367901684480550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A123941 n - a (n - 1)

end

end A091024.P7762367901684480550

namespace A091024

/-- `A123941(n)-a(n-1)` -/
def P7762367901684480550.Spec : Prop :=
  ∀ n, P7762367901684480550.a n = A091024 n

end A091024

/-! ## A091024.P6767074532039878178

`record[Δ[A187504(∑[(n+1)%3])]]`
-/

namespace A091024.P6767074532039878178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091024.P6767074532039878178

namespace A091024

/-- `record[Δ[A187504(∑[(n+1)%3])]]` -/
def P6767074532039878178.Spec : Prop :=
  ∀ n, P6767074532039878178.a n = A091024 n

end A091024

/-! ## A091024.P2696018684363088588

`a(n-2)-A122100(n+2)` with `a(0)=0, a(1)=1`
-/

namespace A091024.P2696018684363088588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) - A122100 (n + 2)

end

end A091024.P2696018684363088588

namespace A091024

/-- `a(n-2)-A122100(n+2)` -/
def P2696018684363088588.Spec : Prop :=
  ∀ n, P2696018684363088588.a n = A091024 n

end A091024

/-! ## A091024.P17947570069236820688

`abs(∑[A062157(n)*A123941(n)])`
-/

namespace A091024.P17947570069236820688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A123941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A091024.P17947570069236820688

namespace A091024

/-- `abs(∑[A062157(n)*A123941(n)])` -/
def P17947570069236820688.Spec : Prop :=
  ∀ n, P17947570069236820688.a n = A091024 n

end A091024

/-! ## A091024.P8981409931656793319

`A091650(n+1)-A052963(n)`
-/

namespace A091024.P8981409931656793319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091650 (n + 1) - A052963 n

end

end A091024.P8981409931656793319

namespace A091024

/-- `A091650(n+1)-A052963(n)` -/
def P8981409931656793319.Spec : Prop :=
  ∀ n, P8981409931656793319.a n = A091024 n

end A091024

/-! ## A091024.P12605407101498532037

`A006357(n)%Δ[A122099(n+2)]`
-/

namespace A091024.P12605407101498532037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122099 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006357 n) (f1 (n + 1) - f1 n)

end

end A091024.P12605407101498532037

namespace A091024

/-- `A006357(n)%Δ[A122099(n+2)]` -/
def P12605407101498532037.Spec : Prop :=
  ∀ n, P12605407101498532037.a n = A091024 n

end A091024

/-! ## A091024.P9099172981594733214

`A052536(n)-A060823(n+2)/2`
-/

namespace A091024.P9099172981594733214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052536 n : ℚ) - (A060823 (n + 2) : ℚ) / 2

end

end A091024.P9099172981594733214

namespace A091024

/-- `A052536(n)-A060823(n+2)/2` -/
def P9099172981594733214.Spec : Prop :=
  ∀ n, P9099172981594733214.a n = (A091024 n : ℚ)

end A091024

/-! ## A091024.P9329328713933735130

`(A052545(n)+A006357(n))%A052536(n)`
-/

namespace A091024.P9329328713933735130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052545 n + A006357 n) (A052536 n)

end

end A091024.P9329328713933735130

namespace A091024

/-- `(A052545(n)+A006357(n))%A052536(n)` -/
def P9329328713933735130.Spec : Prop :=
  ∀ n, P9329328713933735130.a n = A091024 n

end A091024

/-! ## A091024.P3476620377582249222

`A006357(n)+A076264(n)-A052536(n+1)`
-/

namespace A091024.P3476620377582249222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 n + (A076264 n - A052536 (n + 1))

end

end A091024.P3476620377582249222

namespace A091024

/-- `A006357(n)+A076264(n)-A052536(n+1)` -/
def P3476620377582249222.Spec : Prop :=
  ∀ n, P3476620377582249222.a n = A091024 n

end A091024

/-! ## A091024.P271068699037857608

`A122100(n+2)+A006357(n)-A052536(n)`
-/

namespace A091024.P271068699037857608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 2) + (A006357 n - A052536 n)

end

end A091024.P271068699037857608

namespace A091024

/-- `A122100(n+2)+A006357(n)-A052536(n)` -/
def P271068699037857608.Spec : Prop :=
  ∀ n, P271068699037857608.a n = A091024 n

end A091024

/-! ## A091024.P17802493740567622288

`Δ[A052536(n+1)]-A006357(n+1)`
-/

namespace A091024.P17802493740567622288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006357 (n + 1)

end

end A091024.P17802493740567622288

namespace A091024

/-- `Δ[A052536(n+1)]-A006357(n+1)` -/
def P17802493740567622288.Spec : Prop :=
  ∀ n, P17802493740567622288.a n = A091024 n

end A091024

/-!
# A091026: Fifth column (m=6) of array A090452.

The programs for A091026, there is no canonical definition to state claims against.
-/

/-! ## A091026.P15148586349294476238

`A090452((n+2)²+5)`
-/

namespace A091026.P15148586349294476238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 ((n + 2) ^ 2 + 5)

end

end A091026.P15148586349294476238

/-!
# A091027: Sixth column (m=7) of array A090452.

The programs for A091027, there is no canonical definition to state claims against.
-/

/-! ## A091027.P10597033846023671391

`A090452((n+3)²+6)`
-/

namespace A091027.P10597033846023671391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 ((n + 3) ^ 2 + 6)

end

end A091027.P10597033846023671391

/-!
# A091030: Partial sums of powers of 13 (A001022).

The programs for A091030, the canonical program `A091030.P17678457236857780542` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091030 has offset 1).

The definition of A091030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091030.P17678457236857780542

`∑[13^n]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091030

/-- `∑[13^n]` -/
def P17678457236857780542.Spec : Prop :=
  ∀ n, (P17678457236857780542.a n : ℤ) = A091030 (n + 1)

theorem P17678457236857780542.correct : P17678457236857780542.Spec := by
  intro n
  simp only [A091030, Nat.add_sub_cancel]

end A091030

/-! ## A091030.P5621042649199888348

`13*a(n-1)+1` with `a(0)=1`
-/

namespace A091030.P5621042649199888348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  13 * a (n - 1) + 1

end

end A091030.P5621042649199888348

namespace A091030

/-- `13*a(n-1)+1` -/
def P5621042649199888348.Spec : Prop :=
  ∀ n, (P5621042649199888348.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P10715508544333725905

`ogf(1/(1-14x+13x^2))`
-/

namespace A091030.P10715508544333725905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -14, 13] n

end

end A091030.P10715508544333725905

namespace A091030

/-- `ogf(1/(1-14x+13x^2))` -/
def P10715508544333725905.Spec : Prop :=
  ∀ n, P10715508544333725905.a n = A091030 (n + 1)

end A091030

/-! ## A091030.P7834373948053413743

`lcm(13, a(n-1))+1` with `a(0)=1`
-/

namespace A091030.P7834373948053413743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 13 (a (n - 1)) + 1

end

end A091030.P7834373948053413743

namespace A091030

/-- `lcm(13, a(n-1))+1` -/
def P7834373948053413743.Spec : Prop :=
  ∀ n, (P7834373948053413743.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P17692623286795652327

`13^n+a(n-1)` with `a(0)=1`
-/

namespace A091030.P17692623286795652327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  13 ^ n + a (n - 1)

end

end A091030.P17692623286795652327

namespace A091030

/-- `13^n+a(n-1)` -/
def P17692623286795652327.Spec : Prop :=
  ∀ n, (P17692623286795652327.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P15915390832464940859

`abs(∑[13*a(n-1)])` with `a(0)=1`
-/

namespace A091030.P15915390832464940859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091030.P15915390832464940859

namespace A091030

/-- `abs(∑[13*a(n-1)])` -/
def P15915390832464940859.Spec : Prop :=
  ∀ n, (P15915390832464940859.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P9769542632074348673

`floor(∑[13*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A091030.P9769542632074348673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091030.P9769542632074348673

namespace A091030

/-- `floor(∑[13*a(n-1)])` -/
def P9769542632074348673.Spec : Prop :=
  ∀ n, (P9769542632074348673.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P421965644149373747

`ceil(∑[13*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A091030.P421965644149373747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091030.P421965644149373747

namespace A091030

/-- `ceil(∑[13*a(n-1)])` -/
def P421965644149373747.Spec : Prop :=
  ∀ n, (P421965644149373747.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P5759005326838297853

`round(∑[13*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A091030.P5759005326838297853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091030.P5759005326838297853

namespace A091030

/-- `round(∑[13*a(n-1)])` -/
def P5759005326838297853.Spec : Prop :=
  ∀ n, (P5759005326838297853.a n : ℤ) = A091030 (n + 1)

end A091030

/-! ## A091030.P6259542505362025110

`∑[13*a(n-1)]/2` with `a(0)=2`
-/

namespace A091030.P6259542505362025110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  13 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A091030.P6259542505362025110

namespace A091030

/-- `∑[13*a(n-1)]/2` -/
def P6259542505362025110.Spec : Prop :=
  ∀ n, P6259542505362025110.a n = (A091030 (n + 1) : ℚ)

end A091030

/-!
# A091031: Third to last entries in rows of array A090452 (scaled (3,2)-Stirling2).

The programs for A091031, the canonical program `A091031.P1799831255807100485` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091031 has offset 2).

The definition of A091031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091031.P1799831255807100485

`(9*(n+2)²-19*(n+2)+8)*(n+1)*A000108(n+2)/(4*(2*(n+2)-1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091031

/-- `(9*(n+2)²-19*(n+2)+8)*(n+1)*A000108(n+2)/(4*(2*(n+2)-1))` -/
def P1799831255807100485.Spec : Prop :=
  ∀ n, P1799831255807100485.a n = (A091031 (n + 2) : ℚ)

end A091031

/-! ## A091031.P9383158937437342342

`A090452((n+2)²-2)`
-/

namespace A091031.P9383158937437342342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 ((n + 2) ^ 2 - 2)

end

end A091031.P9383158937437342342

namespace A091031

/-- `A090452((n+2)²-2)` -/
def P9383158937437342342.Spec : Prop :=
  ∀ n, P9383158937437342342.a n = A091031 (n + 2)

end A091031

/-! ## A091031.P2412381182688463602

`record[A090452(n+2)/A078740(n+4)]`
-/

namespace A091031.P2412381182688463602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090452 (n + 2) : ℚ) / (A078740 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091031.P2412381182688463602

namespace A091031

/-- `record[A090452(n+2)/A078740(n+4)]` -/
def P2412381182688463602.Spec : Prop :=
  ∀ n, P2412381182688463602.a n = (A091031 (n + 2) : ℚ)

end A091031

/-! ## A091031.P16935034567990897297

`record[floor(A090452(n+2)/A090452(n+5))]`
-/

namespace A091031.P16935034567990897297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090452 (n + 2) : ℚ) / (A090452 (n + 5) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091031.P16935034567990897297

namespace A091031

/-- `record[floor(A090452(n+2)/A090452(n+5))]` -/
def P16935034567990897297.Spec : Prop :=
  ∀ n, P16935034567990897297.a n = A091031 (n + 2)

end A091031

/-! ## A091031.P18328071816726590266

`(A001700(n)+n*A000108(n+2))*(n+1)`
-/

namespace A091031.P18328071816726590266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001700 n + (n : ℤ) * A000108 (n + 2)) * (n + 1 : ℤ)

end

end A091031.P18328071816726590266

namespace A091031

/-- `(A001700(n)+n*A000108(n+2))*(n+1)` -/
def P18328071816726590266.Spec : Prop :=
  ∀ n, P18328071816726590266.a n = A091031 (n + 2)

end A091031

/-!
# A091032: Second column (k=3) of array A090438 ((4,2)-Stirling2) divided by 8.

The programs for A091032, there is no canonical definition to state claims against.
-/

/-! ## A091032.P14737762930151312353

`(n+1)*(2*n+1)!*∑[(n+1)²]`
-/

namespace A091032.P14737762930151312353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Nat.factorial (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A091032.P14737762930151312353

/-! ## A091032.P3358359609886919606

`(n+1)*∑[∑[2*n+1]]*(2*n+1)!`
-/

namespace A091032.P3358359609886919606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial (2 * n + 1)

end

end A091032.P3358359609886919606

/-! ## A091032.P3969961599963131741

`(n+1)*A001720(2*(n+2))`
-/

namespace A091032.P3969961599963131741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001720 (2 * (n + 2))

end

end A091032.P3969961599963131741

/-! ## A091032.P453115746639439390

`A005461(2*n+1)/Δ[n²]`
-/

namespace A091032.P453115746639439390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005461 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A091032.P453115746639439390

/-!
# A091033: Third column (k=4) of array A090438 ((4,2)-Stirling2).

The programs for A091033, there is no canonical definition to state claims against.
-/

/-! ## A091033.P15805238109317688204

`A005461(Δ[n²])`
-/

namespace A091033.P15805238109317688204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005461 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091033.P15805238109317688204

/-! ## A091033.P4045756162541515074

`A090438((n+1)²+3)`
-/

namespace A091033.P4045756162541515074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090438 ((n + 1) ^ 2 + 3)

end

end A091033.P4045756162541515074

/-! ## A091033.P6380107682899495111

`(n+1)*A061206(2*n+1)`
-/

namespace A091033.P6380107682899495111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061206 (2 * n + 1)

end

end A091033.P6380107682899495111

/-! ## A091033.P9591629461384877967

`A062139(A096376(n+1))`
-/

namespace A091033.P9591629461384877967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062139 (A096376 (n + 1)).toNat

end

end A091033.P9591629461384877967

/-!
# A091034: Fourth column (k=5) of array A090438 ((4,2)-Stirling2) divided by 24.

The programs for A091034, there is no canonical definition to state claims against.
-/

/-! ## A091034.P17660350608788783326

`A062194(2*n)/(2*n+1)`
-/

namespace A091034.P17660350608788783326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062194 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A091034.P17660350608788783326

/-! ## A091034.P974527927363339709

`floor(A091035(n+3)/A005408(n))`
-/

namespace A091034.P974527927363339709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091035 (n + 3) : ℚ) / (A005408 n : ℚ)⌋

end

end A091034.P974527927363339709

/-! ## A091034.P14290963179376297767

`floor(A062194(2*n)/A005408(n))`
-/

namespace A091034.P14290963179376297767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062194 (2 * n) : ℚ) / (A005408 n : ℚ)⌋

end

end A091034.P14290963179376297767

/-! ## A091034.P15962935699160193822

`lcm(A091035(n+3)/A005408(n), A000005(n+1))`
-/

namespace A091034.P15962935699160193822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A091035 (n + 3) : ℚ) / (A005408 n : ℚ))) (A000005 (n + 1))

end

end A091034.P15962935699160193822

/-!
# A091035: Fifth column (k=6) of array A090438 ((4,2)-Stirling2).

The programs for A091035, there is no canonical definition to state claims against.
-/

/-! ## A091035.P16461124796559194069

`A062194(2*n)`
-/

namespace A091035.P16461124796559194069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062194 (2 * n)

end

end A091035.P16461124796559194069

/-! ## A091035.P10539584111386600097

`record[A062194(A237420(n))]`
-/

namespace A091035.P10539584111386600097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062194 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091035.P10539584111386600097

/-! ## A091035.P10260809279978051789

`A001720(2*n+4)*A001730(2*n+6)/A000142(2*n)`
-/

namespace A091035.P10260809279978051789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001720 (2 * n + 4) * A001730 (2 * n + 6) : ℚ) / (A000142 (2 * n) : ℚ)

end

end A091035.P10260809279978051789

/-!
# A091036: Sixth column (k=7) of array A090438 ((4,2)-Stirling2) divided by 48 = 4!*2.

The programs for A091036, there is no canonical definition to state claims against.
-/

/-! ## A091036.P10794105072509441477

`record[-(((n+6)²-1)/n*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A091036.P10794105072509441477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -((((n + 6) ^ 2 : ℤ) - 1 : ℚ) / (n : ℚ) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091036.P10794105072509441477

/-!
# A091037: Second column (k=5) of array A090214 ((4,4)-Stirling2) divided by 4*4!=96.

The programs for A091037, there is no canonical definition to state claims against.
-/

/-! ## A091037.P5410597555329906788

`A001021(n)*A003463(n+1)*record[A001316(n)]`
-/

namespace A091037.P5410597555329906788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n * A003463 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091037.P5410597555329906788

/-! ## A091037.P11671307068498016685

`2^n*∑[5^n]*A165833(2^n)`
-/

namespace A091037.P11671307068498016685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A165833 (2 ^ n)

end

end A091037.P11671307068498016685

/-! ## A091037.P10119648250375990164

`record[A165845(n+1)]*A003463(n+1)`
-/

namespace A091037.P10119648250375990164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A003463 (n + 1)

end

end A091037.P10119648250375990164

/-! ## A091037.P6278046860014984630

`A016134(n)*A167304(A000079(n))`
-/

namespace A091037.P6278046860014984630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 n * A167304 (A000079 n).toNat

end

end A091037.P6278046860014984630

/-! ## A091037.P1491336584303837134

`A001021(n)*A003463(n+1)*record[A061142(n+1)]`
-/

namespace A091037.P1491336584303837134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 n * A003463 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091037.P1491336584303837134

/-!
# A091038: Second column (k=6) of array A090216 ((5,5)-Stirling2) divided by 5*5! = 600.

The programs for A091038, there is no canonical definition to state claims against.
-/

/-! ## A091038.P12393100668203648137

`2^n*∑[6^n]*60^n`
-/

namespace A091038.P12393100668203648137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) * 60 ^ n

end

end A091038.P12393100668203648137

/-! ## A091038.P5717351276912074184

`A090217(∑[n+1]+2)`
-/

namespace A091038.P5717351276912074184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091038.P5717351276912074184

/-!
# A091040: Row sums of triangle A091039 (scaled second columns of (k,k)-Stirling2 arrays).

The programs for A091040, there is no canonical definition to state claims against.
-/

/-! ## A091040.P3280757890129555862

`xor(2, A008486(A326901(n)))`
-/

namespace A091040.P3280757890129555862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008486 (A326901 n).toNat)

end

end A091040.P3280757890129555862

/-!
# A091041: Alternating row sums of triangle A091039 (scaled second columns of (k,k)-Stirling2 arrays).

The programs for A091041, there is no canonical definition to state claims against.
-/

/-! ## A091041.P5675027837337001137

`A007843(n)*A300862(A026531(n))`
-/

namespace A091041.P5675027837337001137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n * A300862 (A026531 n).toNat

end

end A091041.P5675027837337001137

/-!
# A091042: Triangle of even numbered entries of odd numbered rows of Pascal's triangle A007318.

The programs for A091042, the canonical program `A091042.P13755947810074570326` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091042 has offset 0).

The definition of A091042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091042.P13755947810074570326

`C(2*row(n)+1, 2*col(n))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091042

/-- `C(2*row(n)+1, 2*col(n))` -/
def P13755947810074570326.Spec : Prop :=
  ∀ n, (P13755947810074570326.a n : ℤ) = A091042 n

theorem P13755947810074570326.correct : P13755947810074570326.Spec := by
  intro n
  simp only [A091042]

end A091042

/-! ## A091042.P5982401741089923913

`2*A232535(n)-A086645(n)`
-/

namespace A091042.P5982401741089923913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232535 n - A086645 n

end

end A091042.P5982401741089923913

namespace A091042

/-- `2*A232535(n)-A086645(n)` -/
def P5982401741089923913.Spec : Prop :=
  ∀ n, P5982401741089923913.a n = A091042 n

end A091042

/-! ## A091042.P2961527910233817860

`A103327(A061579(n))`
-/

namespace A091042.P2961527910233817860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 (A061579 n).toNat

end

end A091042.P2961527910233817860

namespace A091042

/-- `A103327(A061579(n))` -/
def P2961527910233817860.Spec : Prop :=
  ∀ n, P2961527910233817860.a n = A091042 n

end A091042

/-! ## A091042.P13426641425650986763

`C(A005408(A003056(n)), 2*A002262(n))`
-/

namespace A091042.P13426641425650986763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 (A003056 n).toNat).toNat (2 * A002262 n).toNat

end

end A091042.P13426641425650986763

namespace A091042

/-- `C(A005408(A003056(n)), 2*A002262(n))` -/
def P13426641425650986763.Spec : Prop :=
  ∀ n, (P13426641425650986763.a n : ℤ) = A091042 n

end A091042

/-! ## A091042.P15190523035244514845

`C(A099375(A127739(n+1)+1), A099375(n))`
-/

namespace A091042.P15190523035244514845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099375 (A127739 (n + 1) + 1).toNat).toNat (A099375 n).toNat

end

end A091042.P15190523035244514845

namespace A091042

/-- `C(A099375(A127739(n+1)+1), A099375(n))` -/
def P15190523035244514845.Spec : Prop :=
  ∀ n, (P15190523035244514845.a n : ℤ) = A091042 n

end A091042

/-! ## A091042.P7747151994109444921

`C(A005408(A003056(n)), A158405(n+1)-1)`
-/

namespace A091042.P7747151994109444921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005408 (A003056 n).toNat).toNat (A158405 (n + 1) - 1).toNat

end

end A091042.P7747151994109444921

namespace A091042

/-- `C(A005408(A003056(n)), A158405(n+1)-1)` -/
def P7747151994109444921.Spec : Prop :=
  ∀ n, (P7747151994109444921.a n : ℤ) = A091042 n

end A091042

/-! ## A091042.P5507716666047389401

`C(A158405(A127739(n+1)), 2*A002262(n))`
-/

namespace A091042.P5507716666047389401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158405 (A127739 (n + 1)).toNat).toNat (2 * A002262 n).toNat

end

end A091042.P5507716666047389401

namespace A091042

/-- `C(A158405(A127739(n+1)), 2*A002262(n))` -/
def P5507716666047389401.Spec : Prop :=
  ∀ n, (P5507716666047389401.a n : ℤ) = A091042 n

end A091042

/-! ## A091042.P18413301833137468850

`A109447(A004201(n+1))`
-/

namespace A091042.P18413301833137468850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109447 (A004201 (n + 1)).toNat

end

end A091042.P18413301833137468850

namespace A091042

/-- `A109447(A004201(n+1))` -/
def P18413301833137468850.Spec : Prop :=
  ∀ n, P18413301833137468850.a n = A091042 n

end A091042

/-! ## A091042.P9595184628775899785

`A109447(A061885(n)+1)`
-/

namespace A091042.P9595184628775899785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109447 (A061885 n + 1).toNat

end

end A091042.P9595184628775899785

namespace A091042

/-- `A109447(A061885(n)+1)` -/
def P9595184628775899785.Spec : Prop :=
  ∀ n, P9595184628775899785.a n = A091042 n

end A091042

/-! ## A091042.P17216523356579064273

`A034871(2*n)`
-/

namespace A091042.P17216523356579064273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034871 (2 * n)

end

end A091042.P17216523356579064273

namespace A091042

/-- `A034871(2*n)` -/
def P17216523356579064273.Spec : Prop :=
  ∀ n, P17216523356579064273.a n = A091042 n

end A091042

/-! ## A091042.P3685573558110624716

`A034839(A064801(n+1))`
-/

namespace A091042.P3685573558110624716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A064801 (n + 1)).toNat

end

end A091042.P3685573558110624716

namespace A091042

/-- `A034839(A064801(n+1))` -/
def P3685573558110624716.Spec : Prop :=
  ∀ n, P3685573558110624716.a n = A091042 n

end A091042

/-! ## A091042.P15821817337908905979

`A074909(A185868(n+1)-1)`
-/

namespace A091042.P15821817337908905979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A185868 (n + 1) - 1).toNat

end

end A091042.P15821817337908905979

namespace A091042

/-- `A074909(A185868(n+1)-1)` -/
def P15821817337908905979.Spec : Prop :=
  ∀ n, P15821817337908905979.a n = A091042 n

end A091042

/-! ## A091042.P10854893155473796176

`A299927(A185868(n+1))`
-/

namespace A091042.P10854893155473796176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299927 (A185868 (n + 1)).toNat

end

end A091042.P10854893155473796176

namespace A091042

/-- `A299927(A185868(n+1))` -/
def P10854893155473796176.Spec : Prop :=
  ∀ n, P10854893155473796176.a n = A091042 n

end A091042

/-! ## A091042.P10023534572330501604

`A007318(A185869(n+1)-1)`
-/

namespace A091042.P10023534572330501604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A185869 (n + 1) - 1).toNat

end

end A091042.P10023534572330501604

namespace A091042

/-- `A007318(A185869(n+1)-1)` -/
def P10023534572330501604.Spec : Prop :=
  ∀ n, P10023534572330501604.a n = A091042 n

end A091042

/-! ## A091042.P10573829005966265420

`A007318(A185870(n+1)-2)`
-/

namespace A091042.P10573829005966265420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A185870 (n + 1) - 2).toNat

end

end A091042.P10573829005966265420

namespace A091042

/-- `A007318(A185870(n+1)-2)` -/
def P10573829005966265420.Spec : Prop :=
  ∀ n, P10573829005966265420.a n = A091042 n

end A091042

/-! ## A091042.P8376643927313812876

`A007318(eq[2, A297934(n+3)])`
-/

namespace A091042.P8376643927313812876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297934 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091042.P8376643927313812876

namespace A091042

/-- `A007318(eq[2, A297934(n+3)])` -/
def P8376643927313812876.Spec : Prop :=
  ∀ n, P8376643927313812876.a n = A091042 n

end A091042

/-! ## A091042.P7381580051020078957

`A007318(A007607(2*n+1)-1)`
-/

namespace A091042.P7381580051020078957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007607 (2 * n + 1) - 1).toNat

end

end A091042.P7381580051020078957

namespace A091042

/-- `A007318(A007607(2*n+1)-1)` -/
def P7381580051020078957.Spec : Prop :=
  ∀ n, P7381580051020078957.a n = A091042 n

end A091042

/-! ## A091042.P9455916649737721756

`A007318(A093995(n+1)+2*n)`
-/

namespace A091042.P9455916649737721756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A093995 (n + 1) + (2 * n : ℤ)).toNat

end

end A091042.P9455916649737721756

namespace A091042

/-- `A007318(A093995(n+1)+2*n)` -/
def P9455916649737721756.Spec : Prop :=
  ∀ n, P9455916649737721756.a n = A091042 n

end A091042

/-! ## A091042.P10817583636720724571

`A007318(A093995(n+1)+n+n)`
-/

namespace A091042.P10817583636720724571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A093995 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A091042.P10817583636720724571

namespace A091042

/-- `A007318(A093995(n+1)+n+n)` -/
def P10817583636720724571.Spec : Prop :=
  ∀ n, P10817583636720724571.a n = A091042 n

end A091042

/-! ## A091042.P17448812896787528939

`A007318(A002024(n+1)²+n+n)`
-/

namespace A091042.P17448812896787528939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002024 (n + 1) ^ 2 + (n : ℤ) + (n : ℤ)).toNat

end

end A091042.P17448812896787528939

namespace A091042

/-- `A007318(A002024(n+1)²+n+n)` -/
def P17448812896787528939.Spec : Prop :=
  ∀ n, P17448812896787528939.a n = A091042 n

end A091042

/-!
# A091043: Normalized triangle of odd numbered entries of even numbered rows of Pascal's triangle A007318.

The programs for A091043, the canonical program `A091043.P11042620095569130574` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091043 has offset 1).

The definition of A091043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091043.P11042620095569130574

`A091044(n+1)/A006519(∑[char[∑[n]]])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091043

/-- `A091044(n+1)/A006519(∑[char[∑[n]]])` -/
def P11042620095569130574.Spec : Prop :=
  ∀ n, P11042620095569130574.a n = (A091043 (n + 1) : ℚ)

end A091043

/-! ## A091043.P6285769773033612999

`gcd(A091044(n+1), A380281(n))`
-/

namespace A091043.P6285769773033612999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091044 (n + 1)) (A380281 n)

end

end A091043.P6285769773033612999

namespace A091043

/-- `gcd(A091044(n+1), A380281(n))` -/
def P6285769773033612999.Spec : Prop :=
  ∀ n, (P6285769773033612999.a n : ℤ) = A091043 (n + 1)

end A091043

/-!
# A091044: One half of odd-numbered entries of even-numbered rows of Pascal's triangle A007318.

The programs for A091044, the canonical program `A091044.P4253136878488623294` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091044 has offset 1).

The definition of A091044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091044.P4253136878488623294

`C(2*(row(n)+1), 2*col(n)+1)/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091044

/-- `C(2*(row(n)+1), 2*col(n)+1)/2` -/
def P4253136878488623294.Spec : Prop :=
  ∀ n, P4253136878488623294.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P3364998785978644218

`(A103327(n)+A091042(n))/2`
-/

namespace A091044.P3364998785978644218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103327 n + A091042 n : ℚ) / 2

end

end A091044.P3364998785978644218

namespace A091044

/-- `(A103327(n)+A091042(n))/2` -/
def P3364998785978644218.Spec : Prop :=
  ∀ n, P3364998785978644218.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P18258244748431743914

`A232535(n+1)+A232535(n)-A086645(n+1)`
-/

namespace A091044.P18258244748431743914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232535 (n + 1) + (A232535 n - A086645 (n + 1))

end

end A091044.P18258244748431743914

namespace A091044

/-- `A232535(n+1)+A232535(n)-A086645(n+1)` -/
def P18258244748431743914.Spec : Prop :=
  ∀ n, P18258244748431743914.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P5533347498220183158

`A091042(n+1)+A232535(n)-A232535(n+1)`
-/

namespace A091044.P5533347498220183158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (n + 1) + (A232535 n - A232535 (n + 1))

end

end A091044.P5533347498220183158

namespace A091044

/-- `A091042(n+1)+A232535(n)-A232535(n+1)` -/
def P5533347498220183158.Spec : Prop :=
  ∀ n, P5533347498220183158.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P12085571641707083630

`(A091042(A061579(n))+A091042(n))/2`
-/

namespace A091044.P12085571641707083630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091042 (A061579 n).toNat + A091042 n : ℚ) / 2

end

end A091044.P12085571641707083630

namespace A091044

/-- `(A091042(A061579(n))+A091042(n))/2` -/
def P12085571641707083630.Spec : Prop :=
  ∀ n, P12085571641707083630.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P11253992169416984486

`(A103327(A061579(n))+A103327(n))/2`
-/

namespace A091044.P11253992169416984486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103327 (A061579 n).toNat + A103327 n : ℚ) / 2

end

end A091044.P11253992169416984486

namespace A091044

/-- `(A103327(A061579(n))+A103327(n))/2` -/
def P11253992169416984486.Spec : Prop :=
  ∀ n, P11253992169416984486.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P14366045712546424428

`(A034871(2*n+1)+A034871(2*n))/2`
-/

namespace A091044.P14366045712546424428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034871 (2 * n + 1) + A034871 (2 * n) : ℚ) / 2

end

end A091044.P14366045712546424428

namespace A091044

/-- `(A034871(2*n+1)+A034871(2*n))/2` -/
def P14366045712546424428.Spec : Prop :=
  ∀ n, P14366045712546424428.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P14245109202656865845

`A034852(A140978(n+1)+2*n)`
-/

namespace A091044.P14245109202656865845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A140978 (n + 1) + (2 * n : ℤ)).toNat

end

end A091044.P14245109202656865845

namespace A091044

/-- `A034852(A140978(n+1)+2*n)` -/
def P14245109202656865845.Spec : Prop :=
  ∀ n, P14245109202656865845.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P17639755268246149778

`A034852(A140978(n+1)+n+n)`
-/

namespace A091044.P17639755268246149778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 (A140978 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A091044.P17639755268246149778

namespace A091044

/-- `A034852(A140978(n+1)+n+n)` -/
def P17639755268246149778.Spec : Prop :=
  ∀ n, P17639755268246149778.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P2259707427895336854

`A159916(A185869(n+1))`
-/

namespace A091044.P2259707427895336854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159916 (A185869 (n + 1)).toNat

end

end A091044.P2259707427895336854

namespace A091044

/-- `A159916(A185869(n+1))` -/
def P2259707427895336854.Spec : Prop :=
  ∀ n, P2259707427895336854.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P12046973386815550930

`A133084(A185870(n+1)-1)/2`
-/

namespace A091044.P12046973386815550930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133084 (A185870 (n + 1) - 1).toNat : ℚ) / 2

end

end A091044.P12046973386815550930

namespace A091044

/-- `A133084(A185870(n+1)-1)/2` -/
def P12046973386815550930.Spec : Prop :=
  ∀ n, P12046973386815550930.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P3102296995101988871

`A282011(eq[2*A282011(n), A007318(n)])`
-/

namespace A091044.P3102296995101988871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091044.P3102296995101988871

namespace A091044

/-- `A282011(eq[2*A282011(n), A007318(n)])` -/
def P3102296995101988871.Spec : Prop :=
  ∀ n, P3102296995101988871.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P12454477075860386005

`A282011(eq[A007318(n)/2, A282011(n)])`
-/

namespace A091044.P12454477075860386005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A091044.P12454477075860386005

namespace A091044

/-- `A282011(eq[A007318(n)/2, A282011(n)])` -/
def P12454477075860386005.Spec : Prop :=
  ∀ n, P12454477075860386005.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P11618840807899741560

`A034851(eq[A034851(n), A034852(n)])`
-/

namespace A091044.P11618840807899741560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091044.P11618840807899741560

namespace A091044

/-- `A034851(eq[A034851(n), A034852(n)])` -/
def P11618840807899741560.Spec : Prop :=
  ∀ n, P11618840807899741560.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P1847877366852582884

`A034851(eq[2*A034851(n), A007318(n)])`
-/

namespace A091044.P1847877366852582884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091044.P1847877366852582884

namespace A091044

/-- `A034851(eq[2*A034851(n), A007318(n)])` -/
def P1847877366852582884.Spec : Prop :=
  ∀ n, P1847877366852582884.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P6549905824372918796

`A034851(eq[2, A007318(n)/A034851(n)])`
-/

namespace A091044.P6549905824372918796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A034851 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A091044.P6549905824372918796

namespace A091044

/-- `A034851(eq[2, A007318(n)/A034851(n)])` -/
def P6549905824372918796.Spec : Prop :=
  ∀ n, P6549905824372918796.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P5973071943535379316

`A143596(A001614(n+1))`
-/

namespace A091044.P5973071943535379316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143596 (A001614 (n + 1)).toNat

end

end A091044.P5973071943535379316

namespace A091044

/-- `A143596(A001614(n+1))` -/
def P5973071943535379316.Spec : Prop :=
  ∀ n, P5973071943535379316.a n = A091044 (n + 1)

end A091044

/-! ## A091044.P1878185853524306251

`A133084(eq[A133084(n+1), A155997(n)])/2`
-/

namespace A091044.P1878185853524306251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133084 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A091044.P1878185853524306251

namespace A091044

/-- `A133084(eq[A133084(n+1), A155997(n)])/2` -/
def P1878185853524306251.Spec : Prop :=
  ∀ n, P1878185853524306251.a n = (A091044 (n + 1) : ℚ)

end A091044

/-! ## A091044.P16141934478630804721

`A133084(eq[A133084(n+1), A155998(n)])/2`
-/

namespace A091044.P16141934478630804721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133084 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A091044.P16141934478630804721

namespace A091044

/-- `A133084(eq[A133084(n+1), A155998(n)])/2` -/
def P16141934478630804721.Spec : Prop :=
  ∀ n, P16141934478630804721.a n = (A091044 (n + 1) : ℚ)

end A091044

/-!
# A091045: Partial sums of powers of 17 (A001026).

The programs for A091045, the canonical program `A091045.P15395158808128165981` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091045 has offset 1).

The definition of A091045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091045.P15395158808128165981

`17*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091045

/-- `17*a(n-1)+1` -/
def P15395158808128165981.Spec : Prop :=
  ∀ n, (P15395158808128165981.a n : ℤ) = A091045 (n + 1)

theorem P15395158808128165981.correct : P15395158808128165981.Spec := by
  intro n
  simp only [A091045, Nat.add_sub_cancel]

end A091045

/-! ## A091045.P6321227077596232504

`(17^(n+1)-1)/16`
-/

namespace A091045.P6321227077596232504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((17 ^ (n + 1) : ℤ) - 1 : ℚ) / 16

end

end A091045.P6321227077596232504

namespace A091045

/-- `(17^(n+1)-1)/16` -/
def P6321227077596232504.Spec : Prop :=
  ∀ n, P6321227077596232504.a n = (A091045 (n + 1) : ℚ)

theorem P6321227077596232504.correct : P6321227077596232504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A091045, Nat.add_sub_cancel, A091045.P6321227077596232504.a, A091045.P15395158808128165981.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A091045, Nat.add_sub_cancel, A091045.P6321227077596232504.a, A091045.P15395158808128165981.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A091045

/-! ## A091045.P12868014683489028711

`ogf(1/(1-18x+17x^2))`
-/

namespace A091045.P12868014683489028711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -18, 17] n

end

end A091045.P12868014683489028711

namespace A091045

/-- `ogf(1/(1-18x+17x^2))` -/
def P12868014683489028711.Spec : Prop :=
  ∀ n, P12868014683489028711.a n = A091045 (n + 1)

end A091045

/-! ## A091045.P11056137479690844149

`lcm(17, a(n-1))+1` with `a(0)=1`
-/

namespace A091045.P11056137479690844149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 17 (a (n - 1)) + 1

end

end A091045.P11056137479690844149

namespace A091045

/-- `lcm(17, a(n-1))+1` -/
def P11056137479690844149.Spec : Prop :=
  ∀ n, (P11056137479690844149.a n : ℤ) = A091045 (n + 1)

end A091045

/-! ## A091045.P1431564330620600041

`17^n+a(n-1)` with `a(0)=1`
-/

namespace A091045.P1431564330620600041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  17 ^ n + a (n - 1)

end

end A091045.P1431564330620600041

namespace A091045

/-- `17^n+a(n-1)` -/
def P1431564330620600041.Spec : Prop :=
  ∀ n, (P1431564330620600041.a n : ℤ) = A091045 (n + 1)

end A091045

/-! ## A091045.P13858286039266854901

`abs(∑[17*a(n-1)])` with `a(0)=1`
-/

namespace A091045.P13858286039266854901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  17 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091045.P13858286039266854901

namespace A091045

/-- `abs(∑[17*a(n-1)])` -/
def P13858286039266854901.Spec : Prop :=
  ∀ n, (P13858286039266854901.a n : ℤ) = A091045 (n + 1)

end A091045

/-! ## A091045.P1149421588819112533

`floor(∑[17*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A091045.P1149421588819112533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  17 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091045.P1149421588819112533

namespace A091045

/-- `floor(∑[17*a(n-1)])` -/
def P1149421588819112533.Spec : Prop :=
  ∀ n, (P1149421588819112533.a n : ℤ) = A091045 (n + 1)

end A091045

/-! ## A091045.P8194707720238692281

`1-(a(n-1)-18*a(n-1))` with `a(0)=1`
-/

namespace A091045.P8194707720238692281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - 18 * a (n - 1))

end

end A091045.P8194707720238692281

namespace A091045

/-- `1-(a(n-1)-18*a(n-1))` -/
def P8194707720238692281.Spec : Prop :=
  ∀ n, P8194707720238692281.a n = A091045 (n + 1)

end A091045

/-!
# A091046: Stirling transform of first differences of Bell numbers (A005493), if offset zero: a(n) = Sum_{k=1..n} A008277(n,k)*A005493(k).

The programs for A091046, there is no canonical definition to state claims against.
-/

/-! ## A091046.P13439261648071396554

`A228246(A207557(n+1))`
-/

namespace A091046.P13439261648071396554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (A207557 (n + 1)).toNat

end

end A091046.P13439261648071396554

/-!
# A091050: Number of divisors of n that are perfect powers.

The programs for A091050, the canonical program `A091050.P13434770891422209589` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091050 has offset 1).

The definition of A091050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091050.P13434770891422209589

`∑{d}[n+1, A075802(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091050

/-- `∑{d}[n+1, A075802(#)]` -/
def P13434770891422209589.Spec : Prop :=
  ∀ n, P13434770891422209589.a n = A091050 (n + 1)

theorem P13434770891422209589.correct : P13434770891422209589.Spec := by
  intro n
  simp only [A091050, Nat.add_sub_cancel]

end A091050

/-! ## A091050.P8087534318962332410

`A000005(n+1)-A183096(n+1)`
-/

namespace A091050.P8087534318962332410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A183096 (n + 1)

end

end A091050.P8087534318962332410

namespace A091050

/-- `A000005(n+1)-A183096(n+1)` -/
def P8087534318962332410.Spec : Prop :=
  ∀ n, P8087534318962332410.a n = A091050 (n + 1)

theorem P8087534318962332410.correct : P8087534318962332410.Spec := by
  intro n
  simp only [A091050, Nat.add_sub_cancel, A091050.P8087534318962332410.a, A091050.P13434770891422209589.f1, A091050.P13434770891422209589.a, A000005, A000005.P16091521709108585461.a, A075802, A075802.P15418155707765850726.a, A183096, A183096.P3962787682876171308.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091050

/-! ## A091050.P4632488897516556816

`A000005(n+1)+1-A304817(n+1)`
-/

namespace A091050.P4632488897516556816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 1 - A304817 (n + 1)

end

end A091050.P4632488897516556816

namespace A091050

/-- `A000005(n+1)+1-A304817(n+1)` -/
def P4632488897516556816.Spec : Prop :=
  ∀ n, P4632488897516556816.a n = A091050 (n + 1)

theorem P4632488897516556816.correct : P4632488897516556816.Spec := by
  intro n
  simp only [A091050, Nat.add_sub_cancel, A091050.P4632488897516556816.a, A091050.P13434770891422209589.f1, A091050.P13434770891422209589.a, A000005, A000005.P16091521709108585461.a, A075802, A075802.P15418155707765850726.a, A304817, A304817.P8075664180131459050.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A183096, A183096.P3962787682876171308.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091050

/-! ## A091050.P12166965517865001748

`∑{d}[n+1, A010052(#)*A304327((n+1)/#)]`
-/

namespace A091050.P12166965517865001748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A304327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091050.P12166965517865001748

namespace A091050

/-- `∑{d}[n+1, A010052(#)*A304327((n+1)/#)]` -/
def P12166965517865001748.Spec : Prop :=
  ∀ n, P12166965517865001748.a n = A091050 (n + 1)

end A091050

/-! ## A091050.P8912942333122402391

`A001222(A294875(n+1))+1`
-/

namespace A091050.P8912942333122402391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A294875 (n + 1)).toNat + 1

end

end A091050.P8912942333122402391

namespace A091050

/-- `A001222(A294875(n+1))+1` -/
def P8912942333122402391.Spec : Prop :=
  ∀ n, P8912942333122402391.a n = A091050 (n + 1)

end A091050

/-! ## A091050.P13373122540682592116

`A136687(A001222(A294875(n+1)))`
-/

namespace A091050.P13373122540682592116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136687 (A001222 (A294875 (n + 1)).toNat).toNat

end

end A091050.P13373122540682592116

namespace A091050

/-- `A136687(A001222(A294875(n+1)))` -/
def P13373122540682592116.Spec : Prop :=
  ∀ n, P13373122540682592116.a n = A091050 (n + 1)

end A091050

/-! ## A091050.P17229246489589491987

`A073093(A294875(n+1))`
-/

namespace A091050.P17229246489589491987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A294875 (n + 1)).toNat

end

end A091050.P17229246489589491987

namespace A091050

/-- `A073093(A294875(n+1))` -/
def P17229246489589491987.Spec : Prop :=
  ∀ n, P17229246489589491987.a n = A091050 (n + 1)

end A091050

/-! ## A091050.P15163527013275634003

`∏{e}[n+1, #+1]-A007814(A294873(n+1))`
-/

namespace A091050.P15163527013275634003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A007814 (A294873 (n + 1)).toNat

end

end A091050.P15163527013275634003

namespace A091050

/-- `∏{e}[n+1, #+1]-A007814(A294873(n+1))` -/
def P15163527013275634003.Spec : Prop :=
  ∀ n, P15163527013275634003.a n = A091050 (n + 1)

end A091050

/-! ## A091050.P1716505851033466223

`A001222(A330749(A293524(n+1)))+1`
-/

namespace A091050.P1716505851033466223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A330749 (A293524 (n + 1)).toNat).toNat + 1

end

end A091050.P1716505851033466223

namespace A091050

/-- `A001222(A330749(A293524(n+1)))+1` -/
def P1716505851033466223.Spec : Prop :=
  ∀ n, P1716505851033466223.a n = A091050 (n + 1)

end A091050

/-!
# A091051: Sum of divisors of n that are perfect powers.

The programs for A091051, the canonical program `A091051.P295852673504000466` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091051 has offset 1).

The definition of A091051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091051.P295852673504000466

`∑{d}[n+1, #*A075802(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091051

/-- `∑{d}[n+1, #*A075802(#)]` -/
def P295852673504000466.Spec : Prop :=
  ∀ n, P295852673504000466.a n = A091051 (n + 1)

theorem P295852673504000466.correct : P295852673504000466.Spec := by
  intro n
  simp only [A091051, Nat.add_sub_cancel]

end A091051

/-! ## A091051.P1480654875559118230

`∑{d}[n+1, #]-A183101(n+1)`
-/

namespace A091051.P1480654875559118230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A183101 (n + 1)

end

end A091051.P1480654875559118230

namespace A091051

/-- `∑{d}[n+1, #]-A183101(n+1)` -/
def P1480654875559118230.Spec : Prop :=
  ∀ n, P1480654875559118230.a n = A091051 (n + 1)

theorem P1480654875559118230.correct : P1480654875559118230.Spec := by
  intro n
  simp only [A091051, Nat.add_sub_cancel, A091051.P1480654875559118230.f1, A091051.P1480654875559118230.a, A091051.P295852673504000466.f1, A091051.P295852673504000466.a, A075802, A075802.P15418155707765850726.a, A183101, A183101.P16697134400805324664.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091051

/-! ## A091051.P7443622062536787905

`∑{d}[n+1, #%(A303709(#)+#)]`
-/

namespace A091051.P7443622062536787905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A303709 d + (d : ℤ))

end

end A091051.P7443622062536787905

namespace A091051

/-- `∑{d}[n+1, #%(A303709(#)+#)]` -/
def P7443622062536787905.Spec : Prop :=
  ∀ n, P7443622062536787905.a n = A091051 (n + 1)

end A091051

/-! ## A091051.P15905991084796598959

`A000203(n+1)-A183101(n+1)`
-/

namespace A091051.P15905991084796598959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A183101 (n + 1)

end

end A091051.P15905991084796598959

namespace A091051

/-- `A000203(n+1)-A183101(n+1)` -/
def P15905991084796598959.Spec : Prop :=
  ∀ n, P15905991084796598959.a n = A091051 (n + 1)

theorem P15905991084796598959.correct : P15905991084796598959.Spec := by
  intro n
  simp only [A091051, Nat.add_sub_cancel, A091051.P15905991084796598959.a, A091051.P295852673504000466.f1, A091051.P295852673504000466.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075802, A075802.P15418155707765850726.a, A183101, A183101.P16697134400805324664.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091051

/-! ## A091051.P16137812835421649402

`sqrt(A072861(n+1))-A183101(n+1)`
-/

namespace A091051.P16137812835421649402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A183101 (n + 1) : ℝ)

end

end A091051.P16137812835421649402

namespace A091051

/-- `sqrt(A072861(n+1))-A183101(n+1)` -/
def P16137812835421649402.Spec : Prop :=
  ∀ n, P16137812835421649402.a n = (A091051 (n + 1) : ℝ)

end A091051

/-! ## A091051.P14774865672129708804

`∑[A340793(n+1)]-A183101(n+1)`
-/

namespace A091051.P14774865672129708804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A183101 (n + 1)

end

end A091051.P14774865672129708804

namespace A091051

/-- `∑[A340793(n+1)]-A183101(n+1)` -/
def P14774865672129708804.Spec : Prop :=
  ∀ n, P14774865672129708804.a n = A091051 (n + 1)

end A091051

/-! ## A091051.P13462921539698135150

`A274536(n+1)/6-A183101(n+1)`
-/

namespace A091051.P13462921539698135150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 6 - (A183101 (n + 1) : ℚ)

end

end A091051.P13462921539698135150

namespace A091051

/-- `A274536(n+1)/6-A183101(n+1)` -/
def P13462921539698135150.Spec : Prop :=
  ∀ n, P13462921539698135150.a n = (A091051 (n + 1) : ℚ)

theorem P13462921539698135150.correct : P13462921539698135150.Spec := by
  intro n
  simp only [A091051, Nat.add_sub_cancel, A091051.P13462921539698135150.a, A091051.P295852673504000466.f1, A091051.P295852673504000466.a, A075802, A075802.P15418155707765850726.a, A183101, A183101.P16697134400805324664.a, A274536, A274536.P12250643141026633019.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091051

/-! ## A091051.P3133120296506553537

`A183097(n+1)+A183098(n+1)-A183101(n+1)`
-/

namespace A091051.P3133120296506553537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1) + (A183098 (n + 1) - A183101 (n + 1))

end

end A091051.P3133120296506553537

namespace A091051

/-- `A183097(n+1)+A183098(n+1)-A183101(n+1)` -/
def P3133120296506553537.Spec : Prop :=
  ∀ n, P3133120296506553537.a n = A091051 (n + 1)

theorem P3133120296506553537.correct : P3133120296506553537.Spec := by
  intro n
  simp only [A091051, Nat.add_sub_cancel, A091051.P3133120296506553537.a, A091051.P295852673504000466.f1, A091051.P295852673504000466.a, A075802, A075802.P15418155707765850726.a, A183097, A183097.P3908447792888475748.f1, A183097.P3908447792888475748.a, A183098, A183098.P9579120176052522226.a, A183101, A183101.P16697134400805324664.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A112526, A112526.P9678413385243085703.f1, A112526.P9678413385243085703.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091051

/-! ## A091051.P7947184272804358765

`A183099(n+1)+A183100(n+1)-A183101(n+1)`
-/

namespace A091051.P7947184272804358765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183099 (n + 1) + (A183100 (n + 1) - A183101 (n + 1))

end

end A091051.P7947184272804358765

namespace A091051

/-- `A183099(n+1)+A183100(n+1)-A183101(n+1)` -/
def P7947184272804358765.Spec : Prop :=
  ∀ n, P7947184272804358765.a n = A091051 (n + 1)

theorem P7947184272804358765.correct : P7947184272804358765.Spec := by
  intro n
  simp only [A091051, Nat.add_sub_cancel, A091051.P7947184272804358765.a, A091051.P295852673504000466.f1, A091051.P295852673504000466.a, A075802, A075802.P15418155707765850726.a, A183099, A183099.P16071666692602553090.a, A183100, A183100.P18299511243728987249.a, A183101, A183101.P16697134400805324664.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A183097, A183097.P3908447792888475748.f1, A183097.P3908447792888475748.a, A183098, A183098.P9579120176052522226.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A112526, A112526.P9678413385243085703.f1, A112526.P9678413385243085703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091051

/-!
# A091052: Record values in A091023.

The programs for A091052, the canonical program `A091052.P2820592568500487221` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091052 has offset 1).

The definition of A091052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091052.P2820592568500487221

`(3*4^(n+1)-(-4)^(n+1)+2*(-1)^(n+1)+6)/20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091052

/-- `(3*4^(n+1)-(-4)^(n+1)+2*(-1)^(n+1)+6)/20` -/
def P2820592568500487221.Spec : Prop :=
  ∀ n, P2820592568500487221.a n = (A091052 (n + 1) : ℚ)

end A091052

/-! ## A091052.P2635546842245054828

`A007910(or(1, n)+n-1)`
-/

namespace A091052.P2635546842245054828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 ((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1)).toNat

end

end A091052.P2635546842245054828

namespace A091052

/-- `A007910(or(1, n)+n-1)` -/
def P2635546842245054828.Spec : Prop :=
  ∀ n, P2635546842245054828.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P7756850265022840619

`A007910(A042948(n))`
-/

namespace A091052.P7756850265022840619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (A042948 n).toNat

end

end A091052.P7756850265022840619

namespace A091052

/-- `A007910(A042948(n))` -/
def P7756850265022840619.Spec : Prop :=
  ∀ n, P7756850265022840619.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P312574845942781082

`A256494(A014601(n+1))`
-/

namespace A091052.P312574845942781082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (A014601 (n + 1)).toNat

end

end A091052.P312574845942781082

namespace A091052

/-- `A256494(A014601(n+1))` -/
def P312574845942781082.Spec : Prop :=
  ∀ n, P312574845942781082.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P6368704427932302171

`A256494(A154708(n+1))`
-/

namespace A091052.P6368704427932302171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (A154708 (n + 1)).toNat

end

end A091052.P6368704427932302171

namespace A091052

/-- `A256494(A154708(n+1))` -/
def P6368704427932302171.Spec : Prop :=
  ∀ n, P6368704427932302171.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P6025495252934089454

`A256494(A042948(n)+3)`
-/

namespace A091052.P6025495252934089454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (A042948 n + 3).toNat

end

end A091052.P6025495252934089454

namespace A091052

/-- `A256494(A042948(n)+3)` -/
def P6025495252934089454.Spec : Prop :=
  ∀ n, P6025495252934089454.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P11929021340096493495

`A007910(lt[0, A117575(n)])`
-/

namespace A091052.P11929021340096493495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091052.P11929021340096493495

namespace A091052

/-- `A007910(lt[0, A117575(n)])` -/
def P11929021340096493495.Spec : Prop :=
  ∀ n, P11929021340096493495.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P7765132247779426111

`A007910(A052928(n)+n)`
-/

namespace A091052.P7765132247779426111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (A052928 n + (n : ℤ)).toNat

end

end A091052.P7765132247779426111

namespace A091052

/-- `A007910(A052928(n)+n)` -/
def P7765132247779426111.Spec : Prop :=
  ∀ n, P7765132247779426111.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P5974329019003889178

`A256494(∑[gcd(3, A000225(n))])`
-/

namespace A091052.P5974329019003889178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000225 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091052.P5974329019003889178

namespace A091052

/-- `A256494(∑[gcd(3, A000225(n))])` -/
def P5974329019003889178.Spec : Prop :=
  ∀ n, P5974329019003889178.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P3058409487462568801

`A007910(∑[A000225(n)%6])`
-/

namespace A091052.P3058409487462568801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091052.P3058409487462568801

namespace A091052

/-- `A007910(∑[A000225(n)%6])` -/
def P3058409487462568801.Spec : Prop :=
  ∀ n, P3058409487462568801.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P11979459575094009810

`A007910(∑[and(3, A004273(n))])`
-/

namespace A091052.P11979459575094009810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A004273 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091052.P11979459575094009810

namespace A091052

/-- `A007910(∑[and(3, A004273(n))])` -/
def P11979459575094009810.Spec : Prop :=
  ∀ n, P11979459575094009810.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P4698237991538859715

`A256494(∑[and(3, A226097(n))])`
-/

namespace A091052.P4698237991538859715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A226097 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091052.P4698237991538859715

namespace A091052

/-- `A256494(∑[and(3, A226097(n))])` -/
def P4698237991538859715.Spec : Prop :=
  ∀ n, P4698237991538859715.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P2147054300976987903

`A007910(record[n*A057077(n)])`
-/

namespace A091052.P2147054300976987903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091052.P2147054300976987903

namespace A091052

/-- `A007910(record[n*A057077(n)])` -/
def P2147054300976987903.Spec : Prop :=
  ∀ n, P2147054300976987903.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P16253711396808699900

`A007910(record[n*A133872(n)])`
-/

namespace A091052.P16253711396808699900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091052.P16253711396808699900

namespace A091052

/-- `A007910(record[n*A133872(n)])` -/
def P16253711396808699900.Spec : Prop :=
  ∀ n, P16253711396808699900.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P7967463278954870160

`A007910(record[n/A057077(n)])`
-/

namespace A091052.P7967463278954870160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A057077 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A091052.P7967463278954870160

namespace A091052

/-- `A007910(record[n/A057077(n)])` -/
def P7967463278954870160.Spec : Prop :=
  ∀ n, P7967463278954870160.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P7091498265652821796

`A256494(A053438(n+1)+1)`
-/

namespace A091052.P7091498265652821796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (A053438 (n + 1) + 1).toNat

end

end A091052.P7091498265652821796

namespace A091052

/-- `A256494(A053438(n+1)+1)` -/
def P7091498265652821796.Spec : Prop :=
  ∀ n, P7091498265652821796.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P14180737232060062844

`A007910(A004524(2*n)+n)`
-/

namespace A091052.P14180737232060062844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (A004524 (2 * n) + (n : ℤ)).toNat

end

end A091052.P14180737232060062844

namespace A091052

/-- `A007910(A004524(2*n)+n)` -/
def P14180737232060062844.Spec : Prop :=
  ∀ n, P14180737232060062844.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P16131716512865847437

`A007910(2*n-A000035(n))`
-/

namespace A091052.P16131716512865847437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 ((2 * n : ℤ) - A000035 n).toNat

end

end A091052.P16131716512865847437

namespace A091052

/-- `A007910(2*n-A000035(n))` -/
def P16131716512865847437.Spec : Prop :=
  ∀ n, P16131716512865847437.a n = A091052 (n + 1)

end A091052

/-! ## A091052.P16021880004246251772

`A007910(n-A000035(n)+n)`
-/

namespace A091052.P16021880004246251772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 ((n : ℤ) - A000035 n + (n : ℤ)).toNat

end

end A091052.P16021880004246251772

namespace A091052

/-- `A007910(n-A000035(n)+n)` -/
def P16021880004246251772.Spec : Prop :=
  ∀ n, P16021880004246251772.a n = A091052 (n + 1)

end A091052

/-!
# A091053: Where records occur in A091023.

The programs for A091053, there is no canonical definition to state claims against.
-/

/-! ## A091053.P11579492722744762794

`A085613(n+1)-A135304(A085613(n+1))`
-/

namespace A091053.P11579492722744762794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (n + 1) - A135304 (A085613 (n + 1)).toNat

end

end A091053.P11579492722744762794

/-!
# A091054: Expansion of (1 - 5*x - 2*x^2) / ((1 - x)*(1 + 2*x)*(1 - 6*x)).

The programs for A091054, the canonical program `A091054.P13875403736563652014` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091054 has offset 0).

The definition of A091054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x-2x^2)/(1-5x-8x^2+12x^3))` (program `A091054.P13875403736563652014`, by `A091054.P13875403736563652014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091054.P13875403736563652014

`ogf((1-5x-2x^2)/(1-5x-8x^2+12x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091054

/-- `ogf((1-5x-2x^2)/(1-5x-8x^2+12x^3))` -/
def P13875403736563652014.Spec : Prop :=
  ∀ n, P13875403736563652014.a n = A091054 n

theorem P13875403736563652014.correct : P13875403736563652014.Spec := by
  intro n
  simp only [A091054]

end A091054

/-! ## A091054.P6531640253731942892

`5*a(n-1)+8*a(n-2)-12*a(n-3)` with `a(0)=1, a(1)=0, a(2)=6`
-/

namespace A091054.P6531640253731942892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 6] fun n a =>
  5 * a (n - 1) + 8 * a (n - 2) - 12 * a (n - 3)

end

end A091054.P6531640253731942892

namespace A091054

/-- `5*a(n-1)+8*a(n-2)-12*a(n-3)` -/
def P6531640253731942892.Spec : Prop :=
  ∀ n, P6531640253731942892.a n = A091054 n

end A091054

/-! ## A091054.P18119532450246205862

`(6^n+5*(-2)^n+4)/10`
-/

namespace A091054.P18119532450246205862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) + 5 * (-2) ^ n + 4 : ℚ) / 10

end

end A091054.P18119532450246205862

namespace A091054

/-- `(6^n+5*(-2)^n+4)/10` -/
def P18119532450246205862.Spec : Prop :=
  ∀ n, P18119532450246205862.a n = (A091054 n : ℚ)

end A091054

/-! ## A091054.P12996937357586104721

`A091055(n)+∑[(-2)^n]`
-/

namespace A091054.P12996937357586104721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091055 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091054.P12996937357586104721

namespace A091054

/-- `A091055(n)+∑[(-2)^n]` -/
def P12996937357586104721.Spec : Prop :=
  ∀ n, P12996937357586104721.a n = A091054 n

end A091054

/-! ## A091054.P11001513670140301306

`6*(a(n-1)+1-A084247(n))` with `a(0)=1`
-/

namespace A091054.P11001513670140301306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * (a (n - 1) + (1 - A084247 n))

end

end A091054.P11001513670140301306

namespace A091054

/-- `6*(a(n-1)+1-A084247(n))` -/
def P11001513670140301306.Spec : Prop :=
  ∀ n, P11001513670140301306.a n = A091054 n

end A091054

/-! ## A091054.P3102460584035611102

`6*a(n-1)-(Δ[A077925(n)]+2)` with `a(0)=1`
-/

namespace A091054.P3102460584035611102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - (f1 (n + 1) - f1 n + 2)

end

end A091054.P3102460584035611102

namespace A091054

/-- `6*a(n-1)-(Δ[A077925(n)]+2)` -/
def P3102460584035611102.Spec : Prop :=
  ∀ n, P3102460584035611102.a n = A091054 n

end A091054

/-!
# A091055: Expansion of x*(1-2*x)/((1-x)*(1+2*x)*(1-6*x)).

The programs for A091055, the canonical program `A091055.P5565940591556562253` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091055 has offset 0).

The definition of A091055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2)/(1-5x-8x^2+12x^3))` (program `A091055.P5565940591556562253`, by `A091055.P5565940591556562253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091055.P5565940591556562253

`ogf((x-2x^2)/(1-5x-8x^2+12x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091055

/-- `ogf((x-2x^2)/(1-5x-8x^2+12x^3))` -/
def P5565940591556562253.Spec : Prop :=
  ∀ n, P5565940591556562253.a n = A091055 n

theorem P5565940591556562253.correct : P5565940591556562253.Spec := by
  intro n
  simp only [A091055]

end A091055

/-! ## A091055.P13335595200044919388

`(3*6^n-5*(-2)^n+2)/30`
-/

namespace A091055.P13335595200044919388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 6 ^ n : ℤ) - 5 * (-2) ^ n + 2 : ℚ) / 30

end

end A091055.P13335595200044919388

namespace A091055

/-- `(3*6^n-5*(-2)^n+2)/30` -/
def P13335595200044919388.Spec : Prop :=
  ∀ n, P13335595200044919388.a n = (A091055 n : ℚ)

end A091055

/-! ## A091055.P5765917496554205850

`4*(a(n-1)+3*a(n-2))-1` with `a(0)=0, a(1)=1`
-/

namespace A091055.P5765917496554205850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) + 3 * a (n - 2)) - 1

end

end A091055.P5765917496554205850

namespace A091055

/-- `4*(a(n-1)+3*a(n-2))-1` -/
def P5765917496554205850.Spec : Prop :=
  ∀ n, P5765917496554205850.a n = A091055 n

end A091055

/-! ## A091055.P16852963233255314771

`A091054(n)-∑[(-2)^n]`
-/

namespace A091055.P16852963233255314771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091054 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091055.P16852963233255314771

namespace A091055

/-- `A091054(n)-∑[(-2)^n]` -/
def P16852963233255314771.Spec : Prop :=
  ∀ n, P16852963233255314771.a n = A091055 n

end A091055

/-! ## A091055.P3810531665761303018

`A053524(n)-A091056(n)`
-/

namespace A091055.P3810531665761303018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053524 n - A091056 n

end

end A091055.P3810531665761303018

namespace A091055

/-- `A053524(n)-A091056(n)` -/
def P3810531665761303018.Spec : Prop :=
  ∀ n, P3810531665761303018.a n = A091055 n

end A091055

/-! ## A091055.P1881509625290336476

`A091056(n+1)-2*A091056(n)`
-/

namespace A091055.P1881509625290336476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091056 (n + 1) - 2 * A091056 n

end

end A091055.P1881509625290336476

namespace A091055

/-- `A091056(n+1)-2*A091056(n)` -/
def P1881509625290336476.Spec : Prop :=
  ∀ n, P1881509625290336476.a n = A091055 n

end A091055

/-! ## A091055.P8471977405763072438

`A014983(n)*A123344(n)-A091056(n)`
-/

namespace A091055.P8471977405763072438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n * A123344 n - A091056 n

end

end A091055.P8471977405763072438

namespace A091055

/-- `A014983(n)*A123344(n)-A091056(n)` -/
def P8471977405763072438.Spec : Prop :=
  ∀ n, P8471977405763072438.a n = A091055 n

end A091055

/-!
# A091056: Expansion of x^2/((1-x)*(1+2*x)*(1-6*x)).

The programs for A091056, the canonical program `A091056.P12962439212030488967` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091056 has offset 0).

The definition of A091056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-5x-8x^2+12x^3))` (program `A091056.P12962439212030488967`, by `A091056.P12962439212030488967.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091056.P12962439212030488967

`ogf(x^2/(1-5x-8x^2+12x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091056

/-- `ogf(x^2/(1-5x-8x^2+12x^3))` -/
def P12962439212030488967.Spec : Prop :=
  ∀ n, P12962439212030488967.a n = A091056 n

theorem P12962439212030488967.correct : P12962439212030488967.Spec := by
  intro n
  simp only [A091056]

end A091056

/-! ## A091056.P8553035475020826911

`5*a(n-1)+8*a(n-2)-12*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A091056.P8553035475020826911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  5 * a (n - 1) + 8 * a (n - 2) - 12 * a (n - 3)

end

end A091056.P8553035475020826911

namespace A091056

/-- `5*a(n-1)+8*a(n-2)-12*a(n-3)` -/
def P8553035475020826911.Spec : Prop :=
  ∀ n, P8553035475020826911.a n = A091056 n

end A091056

/-! ## A091056.P958079868479246267

`(3*6^n+5*(-2)^n-8)/120`
-/

namespace A091056.P958079868479246267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 6 ^ n : ℤ) + 5 * (-2) ^ n - 8 : ℚ) / 120

end

end A091056.P958079868479246267

namespace A091056

/-- `(3*6^n+5*(-2)^n-8)/120` -/
def P958079868479246267.Spec : Prop :=
  ∀ n, P958079868479246267.a n = (A091056 n : ℚ)

end A091056

/-! ## A091056.P4644107478374555180

`4*(a(n-1)+3*a(n-2))+1` with `a(0)=0, a(1)=0`
-/

namespace A091056.P4644107478374555180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 * (a (n - 1) + 3 * a (n - 2)) + 1

end

end A091056.P4644107478374555180

namespace A091056

/-- `4*(a(n-1)+3*a(n-2))+1` -/
def P4644107478374555180.Spec : Prop :=
  ∀ n, (P4644107478374555180.a n : ℤ) = A091056 n

end A091056

/-! ## A091056.P10663687017668425899

`∑[A053524(log2(ceil(2^(n-1))))]`
-/

namespace A091056.P10663687017668425899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053524 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091056.P10663687017668425899

namespace A091056

/-- `∑[A053524(log2(ceil(2^(n-1))))]` -/
def P10663687017668425899.Spec : Prop :=
  ∀ n, P10663687017668425899.a n = A091056 n

end A091056

/-! ## A091056.P3240827562499782446

`A053524(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A091056.P3240827562499782446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053524 (n - 1) + a (n - 1)

end

end A091056.P3240827562499782446

namespace A091056

/-- `A053524(n-1)+a(n-1)` -/
def P3240827562499782446.Spec : Prop :=
  ∀ n, P3240827562499782446.a n = A091056 n

end A091056

/-! ## A091056.P14368871810149915224

`A053524(n)-A091055(n)`
-/

namespace A091056.P14368871810149915224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053524 n - A091055 n

end

end A091056.P14368871810149915224

namespace A091056

/-- `A053524(n)-A091055(n)` -/
def P14368871810149915224.Spec : Prop :=
  ∀ n, P14368871810149915224.a n = A091056 n

end A091056

/-! ## A091056.P2886892610527615657

`abs(ceil(2^(n-1))*A014983(n))-A091055(n)`
-/

namespace A091056.P2886892610527615657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A014983 n| - A091055 n

end

end A091056.P2886892610527615657

namespace A091056

/-- `abs(ceil(2^(n-1))*A014983(n))-A091055(n)` -/
def P2886892610527615657.Spec : Prop :=
  ∀ n, P2886892610527615657.a n = A091056 n

end A091056

/-! ## A091056.P9252360278736014288

`A014983(n)*A123344(n)-A091055(n)`
-/

namespace A091056.P9252360278736014288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n * A123344 n - A091055 n

end

end A091056.P9252360278736014288

namespace A091056

/-- `A014983(n)*A123344(n)-A091055(n)` -/
def P9252360278736014288.Spec : Prop :=
  ∀ n, P9252360278736014288.a n = A091056 n

end A091056

/-! ## A091056.P14493788338553126543

`abs(A015518(n)*A123344(n))-A091055(n)`
-/

namespace A091056.P14493788338553126543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015518 n * A123344 n| - A091055 n

end

end A091056.P14493788338553126543

namespace A091056

/-- `abs(A015518(n)*A123344(n))-A091055(n)` -/
def P14493788338553126543.Spec : Prop :=
  ∀ n, P14493788338553126543.a n = A091056 n

end A091056

/-!
# A091058: Number of n X n matrices over symbol set {1,...,n} equivalent under any permutation of row, columns or the symbol set.

The programs for A091058, there is no canonical definition to state claims against.
-/

/-! ## A091058.P12820041935362761516

`A242095(∑[4*n])`
-/

namespace A091058.P12820041935362761516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091058.P12820041935362761516

/-! ## A091058.P13895038297435860087

`A281155(n)+A242095(A046092(n))`
-/

namespace A091058.P13895038297435860087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A242095 (A046092 n).toNat

end

end A091058.P13895038297435860087

/-! ## A091058.P4379070430428451039

`A242095(A046092(n))^A119326(n)`
-/

namespace A091058.P4379070430428451039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242095 (A046092 n).toNat : ℚ) ^ (A119326 n : ℤ)

end

end A091058.P4379070430428451039

/-! ## A091058.P8493855115422460438

`A242095(A046092(n))^A178334(n)`
-/

namespace A091058.P8493855115422460438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242095 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A091058.P8493855115422460438

/-! ## A091058.P14019907120760755484

`A242095(A046092(n))^A287656(n)`
-/

namespace A091058.P14019907120760755484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242095 (A046092 n).toNat : ℚ) ^ (A287656 n : ℤ)

end

end A091058.P14019907120760755484

/-!
# A091059: Number of n X n matrices over symbol set {1,2} equivalent under any permutation of row, columns or the symbol set.

The programs for A091059, there is no canonical definition to state claims against.
-/

/-! ## A091059.P6200838869485660349

`A242093(∑[4*n])`
-/

namespace A091059.P6200838869485660349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091059.P6200838869485660349

/-! ## A091059.P13647311345551518525

`A242093(A046092(n))+char[18]`
-/

namespace A091059.P13647311345551518525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242093 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091059.P13647311345551518525

/-! ## A091059.P15362514734774531579

`A242095(∑[n+3])`
-/

namespace A091059.P15362514734774531579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091059.P15362514734774531579

/-! ## A091059.P13676573963631679445

`gcd(A000038(n), A242095(A141214(n)))`
-/

namespace A091059.P13676573963631679445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A242095 (A141214 n).toNat)

end

end A091059.P13676573963631679445

/-! ## A091059.P6126681193351004804

`or(A000007(n), A242095(A141214(n)))`
-/

namespace A091059.P6126681193351004804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242095 (A141214 n).toNat)

end

end A091059.P6126681193351004804

/-!
# A091060: Number of n X n matrices over symbol set {1,2,3} equivalent under any permutation of row, columns or the symbol set.

The programs for A091060, there is no canonical definition to state claims against.
-/

/-! ## A091060.P8087925195832309760

`A242095(∑[n+3]+n+3)`
-/

namespace A091060.P8087925195832309760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A091060.P8087925195832309760

/-!
# A091061: Number of n X n matrices over symbol set {1,2,3,4} equivalent under any permutation of row, columns or the symbol set.

The programs for A091061, there is no canonical definition to state claims against.
-/

/-! ## A091061.P14545759326406363366

`A242095(A056115(n)+10)`
-/

namespace A091061.P14545759326406363366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (A056115 n + 10).toNat

end

end A091061.P14545759326406363366

/-! ## A091061.P4217167606451332579

`A242095(eq[4, A025581(n)])`
-/

namespace A091061.P4217167606451332579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091061.P4217167606451332579

/-! ## A091061.P10564245680577171916

`A242095(eq[9, A099375(n)])`
-/

namespace A091061.P10564245680577171916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091061.P10564245680577171916

/-! ## A091061.P17583934627623775525

`A242095(Δ[A055831(n+4)])`
-/

namespace A091061.P17583934627623775525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (f1 (n + 1) - f1 n).toNat

end

end A091061.P17583934627623775525

/-! ## A091061.P10852398547833215391

`A242095(A246172(n+1)+9)`
-/

namespace A091061.P10852398547833215391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (A246172 (n + 1) + 9).toNat

end

end A091061.P10852398547833215391

/-!
# A091062: Number of n X n matrices over symbol set {1,2,3,4,5} equivalent under any permutation of row, columns or the symbol set.

The programs for A091062, there is no canonical definition to state claims against.
-/

/-! ## A091062.P9456235497599403088

`A242095(eq[5, A025581(n)])`
-/

namespace A091062.P9456235497599403088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091062.P9456235497599403088

/-! ## A091062.P17799810647519269082

`A242095(A000217(n+5)+n)`
-/

namespace A091062.P17799810647519269082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A091062.P17799810647519269082

/-! ## A091062.P7946362968505174626

`A242095(Δ[A055831(n+5)]-1)`
-/

namespace A091062.P7946362968505174626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242095 (f1 (n + 1) - f1 n - 1).toNat

end

end A091062.P7946362968505174626

/-!
# A091064: In binary representation: length of longest proper prefix of n, that is also a suffix.

The programs for A091064, there is no canonical definition to state claims against.
-/

/-! ## A091064.P12334825468943761236

`A029837(A242869(n)+1)`
-/

namespace A091064.P12334825468943761236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A242869 n + 1).toNat

end

end A091064.P12334825468943761236

/-! ## A091064.P6013350907638594632

`A119387(2*A242869(n))`
-/

namespace A091064.P6013350907638594632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (2 * A242869 n).toNat

end

end A091064.P6013350907638594632

/-! ## A091064.P18217879259608013687

`A000523(2*A242869(n)+1)`
-/

namespace A091064.P18217879259608013687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A242869 n + 1).toNat

end

end A091064.P18217879259608013687

/-! ## A091064.P13479340707567361035

`A070939(2*A242869(n))-1`
-/

namespace A091064.P13479340707567361035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A242869 n).toNat - 1

end

end A091064.P13479340707567361035

/-! ## A091064.P17223754179973103016

`A029837(A062383(A242869(n)))`
-/

namespace A091064.P17223754179973103016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A062383 (A242869 n).toNat).toNat

end

end A091064.P17223754179973103016

/-! ## A091064.P577998259321541457

`A000523(A242869(n)+A242869(n)+1)`
-/

namespace A091064.P577998259321541457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A242869 n + (A242869 n + 1)).toNat

end

end A091064.P577998259321541457

/-! ## A091064.P10582840428139696594

`A070939(A242869(n)+A242869(n))-1`
-/

namespace A091064.P10582840428139696594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A242869 n + A242869 n).toNat - 1

end

end A091064.P10582840428139696594

/-! ## A091064.P13719213914653276601

`A346698(A062383(A242869(n))²)`
-/

namespace A091064.P13719213914653276601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A062383 (A242869 n).toNat ^ 2).toNat

end

end A091064.P13719213914653276601

/-! ## A091064.P18315336096108127415

`A209281(A062383(A242869(n)²))`
-/

namespace A091064.P18315336096108127415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A062383 (A242869 n ^ 2).toNat).toNat

end

end A091064.P18315336096108127415

/-! ## A091064.P168373967368033165

`A070939(n)-A361942(n)`
-/

namespace A091064.P168373967368033165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A361942 n

end

end A091064.P168373967368033165

/-!
# A091065: Numbers having in binary representation no proper prefix that is also a suffix.

The programs for A091065, there is no canonical definition to state claims against.
-/

/-! ## A091065.P2519707327952555562

`comp[A091066(n+1)]`
-/

namespace A091065.P2519707327952555562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091065.P2519707327952555562

/-! ## A091065.P15697464230179242556

`eq[0, A091064(n)]`
-/

namespace A091065.P15697464230179242556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091065.P15697464230179242556

/-! ## A091065.P3850717508495139996

`lt[A091064(A028310(n)), 1]`
-/

namespace A091065.P3850717508495139996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091065.P3850717508495139996

/-! ## A091065.P2362608086929079656

`lt[A036290(A091064(n)²), 1]`
-/

namespace A091065.P2362608086929079656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (A091064 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091065.P2362608086929079656

/-! ## A091065.P3392893294473184156

`lt[A028994(A091064(n)), A001222(n+2)]`
-/

namespace A091065.P3392893294473184156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (A091064 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091065.P3392893294473184156

/-! ## A091065.P3106952632997972852

`lt[A091064(n), A330098(A070939(n))]`
-/

namespace A091065.P3106952632997972852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091065.P3106952632997972852

/-! ## A091065.P4876264813404279915

`lt[A028994(A091064(n)), A076844(n+1)]`
-/

namespace A091065.P4876264813404279915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (A091064 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091065.P4876264813404279915

/-! ## A091065.P12879074934744178085

`lt[A091064(n), A001222(A273282(n+2))]`
-/

namespace A091065.P12879074934744178085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A273282 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091065.P12879074934744178085

/-! ## A091065.P15115958128072934921

`record[A342242(n)]`
-/

namespace A091065.P15115958128072934921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091065.P15115958128072934921

/-! ## A091065.P16938127352074430163

`eq[0, A242869(n)]`
-/

namespace A091065.P16938127352074430163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091065.P16938127352074430163

/-! ## A091065.P8660772502859980309

`eq[A065599(n), A342242(n)]`
-/

namespace A091065.P8660772502859980309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P8660772502859980309

/-! ## A091065.P9075994173089207841

`eq[A070939(n), A342241(n)]`
-/

namespace A091065.P9075994173089207841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P9075994173089207841

/-! ## A091065.P9101822504488598077

`eq[A140201(n), A342242(n)]`
-/

namespace A091065.P9101822504488598077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P9101822504488598077

/-! ## A091065.P2893953876644353566

`eq[A222258(n), A342242(n)]`
-/

namespace A091065.P2893953876644353566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P2893953876644353566

/-! ## A091065.P5623774888985141424

`eq[A245092(n), A342242(n)]`
-/

namespace A091065.P5623774888985141424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P5623774888985141424

/-! ## A091065.P6124234830856970685

`eq[A265228(n), A342242(n)]`
-/

namespace A091065.P6124234830856970685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P6124234830856970685

/-! ## A091065.P11755708431542478779

`eq[A274593(n), A342242(n)]`
-/

namespace A091065.P11755708431542478779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P11755708431542478779

/-! ## A091065.P13110245116882999921

`eq[A325402(n), A342242(n)]`
-/

namespace A091065.P13110245116882999921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091065.P13110245116882999921

/-! ## A091065.P11201001391820051303

`record[gcd(A009531(n), A242869(n))]`
-/

namespace A091065.P11201001391820051303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009531 n) (A242869 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091065.P11201001391820051303

/-! ## A091065.P3176491232653297270

`A342242(lt[n, A342242(n)+1])`
-/

namespace A091065.P3176491232653297270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A091065.P3176491232653297270

/-!
# A091066: Numbers having in binary representation at least one proper prefix that is also a suffix.

The programs for A091066, there is no canonical definition to state claims against.
-/

/-! ## A091066.P9251558218207225071

`comp[A091065(n+1)]`
-/

namespace A091066.P9251558218207225071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091066.P9251558218207225071

/-! ## A091066.P1122420060814818578

`lt[0, A091064(n)]`
-/

namespace A091066.P1122420060814818578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091066.P1122420060814818578

/-! ## A091066.P11780401506890184690

`lt[0, A242869(n)]`
-/

namespace A091066.P11780401506890184690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091066.P11780401506890184690

/-! ## A091066.P6475278666389888060

`lt[A342242(n), n]`
-/

namespace A091066.P6475278666389888060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091066.P6475278666389888060

/-! ## A091066.P1315582702773597282

`lt[A147756(n), n²]`
-/

namespace A091066.P1315582702773597282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147756 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091066.P1315582702773597282

/-! ## A091066.P10197251234685316710

`lt[A052927(A342241(n)), n²]`
-/

namespace A091066.P10197251234685316710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052927 (A342241 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091066.P10197251234685316710

/-! ## A091066.P7814237810855912755

`lt[A052927(A342241(n)-1), n]`
-/

namespace A091066.P7814237810855912755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052927 (A342241 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091066.P7814237810855912755

/-! ## A091066.P341591027939964378

`lt[A342241(n)+1, A342241(A062383(n))]`
-/

namespace A091066.P341591027939964378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A062383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091066.P341591027939964378

/-! ## A091066.P16790013795717298488

`comp[A342242(n)]`
-/

namespace A091066.P16790013795717298488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342242 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091066.P16790013795717298488

/-! ## A091066.P9530834294514233072

`∪[A020330(n+1), A342378(n+1)]`
-/

namespace A091066.P9530834294514233072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091066.P9530834294514233072

/-! ## A091066.P2864311211623635953

`∪[A121016(n+1), A342378(n+1)]`
-/

namespace A091066.P2864311211623635953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091066.P2864311211623635953

/-! ## A091066.P6269118451782972504

`∪[A175468(n+1), A342378(n+1)]`
-/

namespace A091066.P6269118451782972504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091066.P6269118451782972504

/-! ## A091066.P16044053064427882650

`∪[A320441(n+1), A342378(n+1)]`
-/

namespace A091066.P16044053064427882650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091066.P16044053064427882650

/-! ## A091066.P1524219707453647762

`lt[1, A030101(A200322(n))]`
-/

namespace A091066.P1524219707453647762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A200322 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091066.P1524219707453647762

/-! ## A091066.P9276443974013673332

`eq[1, A014963(2*A200322(n))]`
-/

namespace A091066.P9276443974013673332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A200322 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091066.P9276443974013673332

/-! ## A091066.P14318602707173662748

`lt[2, A006530(A200322(n)²)]`
-/

namespace A091066.P14318602707173662748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A200322 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091066.P14318602707173662748

/-!
# A091067: Numbers whose odd part is of the form 4*k+3.

The programs for A091067, the canonical program `A091067.P11627584915333469325` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091067 has offset 1).

The definition of A091067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091067.P553136063905942431

`1+A255068(n)`
-/

namespace A091067.P553136063905942431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A255068 n

end

end A091067.P553136063905942431

namespace A091067

/-- `1+A255068(n)` -/
def P553136063905942431.Spec : Prop :=
  ∀ n, P553136063905942431.a n = A091067 (n + 1)

theorem P553136063905942431.correct : P553136063905942431.Spec := by
  intro n
  simp only [A091067, Nat.add_sub_cancel, A091067.P553136063905942431.a, A091067.P11627584915333469325.a, A060833, A060833.P4612277402793640164.f1, A060833.P4612277402793640164.f2, A060833.P4612277402793640164.a, A255068, A255068.P12646045524398561054.a, A073089, A073089.P6746371190418764077.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091067

/-! ## A091067.P13896103433094917182

`A246590(n+1)/2`
-/

namespace A091067.P13896103433094917182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246590 (n + 1) : ℚ) / 2

end

end A091067.P13896103433094917182

namespace A091067

/-- `A246590(n+1)/2` -/
def P13896103433094917182.Spec : Prop :=
  ∀ n, P13896103433094917182.a n = (A091067 (n + 1) : ℚ)

theorem P13896103433094917182.correct : P13896103433094917182.Spec := by
  intro n
  simp only [A091067, Nat.add_sub_cancel, A091067.P13896103433094917182.a, A091067.P11627584915333469325.a, A060833, A060833.P4612277402793640164.f1, A060833.P4612277402793640164.f2, A060833.P4612277402793640164.a, A246590, A246590.P10952296055587311205.a, A073089, A073089.P6746371190418764077.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091067

/-! ## A091067.P11627584915333469325

`A060833(n+2)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091067

/-- `A060833(n+2)-1` -/
def P11627584915333469325.Spec : Prop :=
  ∀ n, P11627584915333469325.a n = A091067 (n + 1)

theorem P11627584915333469325.correct : P11627584915333469325.Spec := by
  intro n
  simp only [A091067, Nat.add_sub_cancel]

end A091067

/-! ## A091067.P105638532877102718

`comp[and(n, n-1)+n]`
-/

namespace A091067.P105638532877102718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091067.P105638532877102718

namespace A091067

/-- `comp[and(n, n-1)+n]` -/
def P105638532877102718.Spec : Prop :=
  ∀ n, (P105638532877102718.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P3363913060180420502

`comp[and(n, n+1)+n]+1`
-/

namespace A091067.P3363913060180420502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A091067.P3363913060180420502

namespace A091067

/-- `comp[and(n, n+1)+n]+1` -/
def P3363913060180420502.Spec : Prop :=
  ∀ n, (P3363913060180420502.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P4993541094157804657

`∑[A106836(n+1)]`
-/

namespace A091067.P4993541094157804657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091067.P4993541094157804657

namespace A091067

/-- `∑[A106836(n+1)]` -/
def P4993541094157804657.Spec : Prop :=
  ∀ n, P4993541094157804657.a n = A091067 (n + 1)

end A091067

/-! ## A091067.P4306275762665507264

`lt[1, A123725(2*n)]`
-/

namespace A091067.P4306275762665507264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091067.P4306275762665507264

namespace A091067

/-- `lt[1, A123725(2*n)]` -/
def P4306275762665507264.Spec : Prop :=
  ∀ n, (P4306275762665507264.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P3918327215841264933

`lt[2, A123725(n)]/2`
-/

namespace A091067.P3918327215841264933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A091067.P3918327215841264933

namespace A091067

/-- `lt[2, A123725(n)]/2` -/
def P3918327215841264933.Spec : Prop :=
  ∀ n, P3918327215841264933.a n = (A091067 (n + 1) : ℚ)

end A091067

/-! ## A091067.P3041652019894842106

`A269363(A269368(n+1))`
-/

namespace A091067.P3041652019894842106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (A269368 (n + 1)).toNat

end

end A091067.P3041652019894842106

namespace A091067

/-- `A269363(A269368(n+1))` -/
def P3041652019894842106.Spec : Prop :=
  ∀ n, P3041652019894842106.a n = A091067 (n + 1)

end A091067

/-! ## A091067.P1222359489870580878

`lt[2, A020639(A103391(n+1))]`
-/

namespace A091067.P1222359489870580878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091067.P1222359489870580878

namespace A091067

/-- `lt[2, A020639(A103391(n+1))]` -/
def P1222359489870580878.Spec : Prop :=
  ∀ n, (P1222359489870580878.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P10918978026737735204

`∪[A246590(n+1), A004767(n)]`
-/

namespace A091067.P10918978026737735204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091067.P10918978026737735204

namespace A091067

/-- `∪[A246590(n+1), A004767(n)]` -/
def P10918978026737735204.Spec : Prop :=
  ∀ n, (P10918978026737735204.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P76796934571058490

`∪[A047556(n+1), A246590(n+1)]`
-/

namespace A091067.P76796934571058490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091067.P76796934571058490

namespace A091067

/-- `∪[A047556(n+1), A246590(n+1)]` -/
def P76796934571058490.Spec : Prop :=
  ∀ n, (P76796934571058490.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P11822544433413238726

`∪[A055050(n+1), A246590(n+1)]`
-/

namespace A091067.P11822544433413238726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091067.P11822544433413238726

namespace A091067

/-- `∪[A055050(n+1), A246590(n+1)]` -/
def P11822544433413238726.Spec : Prop :=
  ∀ n, (P11822544433413238726.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P10870214425993573411

`lt[1, A089309(n)]`
-/

namespace A091067.P10870214425993573411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091067.P10870214425993573411

namespace A091067

/-- `lt[1, A089309(n)]` -/
def P10870214425993573411.Spec : Prop :=
  ∀ n, (P10870214425993573411.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P10991159439678606421

`record[A322015(n+2)]`
-/

namespace A091067.P10991159439678606421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091067.P10991159439678606421

namespace A091067

/-- `record[A322015(n+2)]` -/
def P10991159439678606421.Spec : Prop :=
  ∀ n, P10991159439678606421.a n = A091067 (n + 1)

end A091067

/-! ## A091067.P11250287913252276859

`lt[0, A322015(n)]+1`
-/

namespace A091067.P11250287913252276859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091067.P11250287913252276859

namespace A091067

/-- `lt[0, A322015(n)]+1` -/
def P11250287913252276859.Spec : Prop :=
  ∀ n, (P11250287913252276859.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P14635393947458709837

`lt[A322016(n)+1, n]`
-/

namespace A091067.P14635393947458709837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091067.P14635393947458709837

namespace A091067

/-- `lt[A322016(n)+1, n]` -/
def P14635393947458709837.Spec : Prop :=
  ∀ n, (P14635393947458709837.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P822806467707485263

`comp[n*A073089(2*n+1)]`
-/

namespace A091067.P822806467707485263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A073089 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091067.P822806467707485263

namespace A091067

/-- `comp[n*A073089(2*n+1)]` -/
def P822806467707485263.Spec : Prop :=
  ∀ n, (P822806467707485263.a n : ℤ) = A091067 (n + 1)

end A091067

/-! ## A091067.P13744562922781846529

`A322015(A255068(n))`
-/

namespace A091067.P13744562922781846529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (A255068 n).toNat

end

end A091067.P13744562922781846529

namespace A091067

/-- `A322015(A255068(n))` -/
def P13744562922781846529.Spec : Prop :=
  ∀ n, P13744562922781846529.a n = A091067 (n + 1)

end A091067

/-! ## A091067.P17159994243528863570

`eq[A004530(n), A322016(n)]`
-/

namespace A091067.P17159994243528863570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091067.P17159994243528863570

namespace A091067

/-- `eq[A004530(n), A322016(n)]` -/
def P17159994243528863570.Spec : Prop :=
  ∀ n, (P17159994243528863570.a n : ℤ) = A091067 (n + 1)

end A091067

/-!
# A091068: a(0) = 0; for n>0, a(n) = a(n-1) - n if that is >= 0, else a(n) = a(n-1) + n - 1.

The programs for A091068, the canonical program `A091068.P6283035117468084844` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091068 has offset 0).

The definition of A091068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091068.P6283035117468084844

`(a(n-1)-1+n)%(1-2*n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091068

/-- `(a(n-1)-1+n)%(1-2*n)` -/
def P6283035117468084844.Spec : Prop :=
  ∀ n, P6283035117468084844.a n = A091068 n

theorem P6283035117468084844.correct : P6283035117468084844.Spec := by
  intro n
  simp only [A091068]

end A091068

/-! ## A091068.P13016403001377798648

`(n-(1-a(n-1)))%(1-2*n)` with `a(0)=0`
-/

namespace A091068.P13016403001377798648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((n : ℤ) - (1 - a (n - 1))) (1 - (2 * n : ℤ))

end

end A091068.P13016403001377798648

namespace A091068

/-- `(n-(1-a(n-1)))%(1-2*n)` -/
def P13016403001377798648.Spec : Prop :=
  ∀ n, P13016403001377798648.a n = A091068 n

end A091068

/-! ## A091068.P16141639842014471566

`(a(n-1)-(1-n))%(1-n-n)` with `a(0)=0`
-/

namespace A091068.P16141639842014471566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) - (1 - (n : ℤ))) (1 - (n : ℤ) - (n : ℤ))

end

end A091068.P16141639842014471566

namespace A091068

/-- `(a(n-1)-(1-n))%(1-n-n)` -/
def P16141639842014471566.Spec : Prop :=
  ∀ n, P16141639842014471566.a n = A091068 n

theorem P16141639842014471566.correct : P16141639842014471566.Spec := by
  intro n
  simp only [A091068, Nat.add_sub_cancel, A091068.P16141639842014471566.a, A091068.P6283035117468084844.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091068

/-! ## A091068.P1883705162838964382

`abs(1-(a(n-1)+n))%A004273(n)` with `a(0)=0`
-/

namespace A091068.P1883705162838964382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod |1 - (a (n - 1) + (n : ℤ))| (A004273 n)

end

end A091068.P1883705162838964382

namespace A091068

/-- `abs(1-(a(n-1)+n))%A004273(n)` -/
def P1883705162838964382.Spec : Prop :=
  ∀ n, P1883705162838964382.a n = A091068 n

end A091068

/-! ## A091068.P10629664082151993328

`A002262(A000384(n)+a(n-1)-n)` with `a(0)=0`
-/

namespace A091068.P10629664082151993328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002262 (A000384 n + (a (n - 1) - (n : ℤ))).toNat

end

end A091068.P10629664082151993328

namespace A091068

/-- `A002262(A000384(n)+a(n-1)-n)` -/
def P10629664082151993328.Spec : Prop :=
  ∀ n, P10629664082151993328.a n = A091068 n

end A091068

/-! ## A091068.P17214552517125132086

`A002262(A000384(n)-(n-a(n-1)))` with `a(0)=0`
-/

namespace A091068.P17214552517125132086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002262 (A000384 n - ((n : ℤ) - a (n - 1))).toNat

end

end A091068.P17214552517125132086

namespace A091068

/-- `A002262(A000384(n)-(n-a(n-1)))` -/
def P17214552517125132086.Spec : Prop :=
  ∀ n, P17214552517125132086.a n = A091068 n

end A091068

/-!
# A091069: Moebius mu sequence for real quadratic extension sqrt(2).

The programs for A091069, the canonical program `A091069.P3313354712061999408` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091069 has offset 1).

The definition of A091069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091069.P3313354712061999408

`Δ[xor(n, floor(n/4))]*A318608(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091069

/-- `Δ[xor(n, floor(n/4))]*A318608(n+1)` -/
def P3313354712061999408.Spec : Prop :=
  ∀ n, P3313354712061999408.a n = A091069 (n + 1)

theorem P3313354712061999408.correct : P3313354712061999408.Spec := by
  intro n
  simp only [A091069, Nat.add_sub_cancel]

end A091069

/-! ## A091069.P5868774618139378636

`A091337(A254503(n+1))`
-/

namespace A091069.P5868774618139378636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A254503 (n + 1)).toNat

end

end A091069.P5868774618139378636

namespace A091069

/-- `A091337(A254503(n+1))` -/
def P5868774618139378636.Spec : Prop :=
  ∀ n, P5868774618139378636.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P10354995812928838191

`A091337(A293303(n+1))`
-/

namespace A091069.P10354995812928838191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A293303 (n + 1)).toNat

end

end A091069.P10354995812928838191

namespace A091069

/-- `A091337(A293303(n+1))` -/
def P10354995812928838191.Spec : Prop :=
  ∀ n, P10354995812928838191.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P8784961871099048355

`A143431(n)*A318608(n+1)`
-/

namespace A091069.P8784961871099048355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n * A318608 (n + 1)

end

end A091069.P8784961871099048355

namespace A091069

/-- `A143431(n)*A318608(n+1)` -/
def P8784961871099048355.Spec : Prop :=
  ∀ n, P8784961871099048355.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P7204974742877754865

`A143621(n)*A318608(n+1)`
-/

namespace A091069.P7204974742877754865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143621 n * A318608 (n + 1)

end

end A091069.P7204974742877754865

namespace A091069

/-- `A143621(n)*A318608(n+1)` -/
def P7204974742877754865.Spec : Prop :=
  ∀ n, P7204974742877754865.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P16630150229136822316

`(-A087003(n+1)²)^A198148(n)`
-/

namespace A091069.P16630150229136822316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(A087003 (n + 1) ^ 2) : ℚ) ^ (A198148 n : ℤ)

end

end A091069.P16630150229136822316

namespace A091069

/-- `(-A087003(n+1)²)^A198148(n)` -/
def P16630150229136822316.Spec : Prop :=
  ∀ n, P16630150229136822316.a n = (A091069 (n + 1) : ℚ)

end A091069

/-! ## A091069.P12368425762878503678

`∑{d}[n+1, A008683(#)*A091396((n+1)/#)]`
-/

namespace A091069.P12368425762878503678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A091396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091069.P12368425762878503678

namespace A091069

/-- `∑{d}[n+1, A008683(#)*A091396((n+1)/#)]` -/
def P12368425762878503678.Spec : Prop :=
  ∀ n, P12368425762878503678.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P1294051508229975946

`∑{d}[n+1, A087780(#)*A355689((n+1)/#)]`
-/

namespace A091069.P1294051508229975946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087780 d * A355689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091069.P1294051508229975946

namespace A091069

/-- `∑{d}[n+1, A087780(#)*A355689((n+1)/#)]` -/
def P1294051508229975946.Spec : Prop :=
  ∀ n, P1294051508229975946.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P14460450726275239863

`A091337((n+1)*A188510(A160499(n+1)))`
-/

namespace A091069.P14460450726275239863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 ((n + 1 : ℤ) * A188510 (A160499 (n + 1)).toNat).toNat

end

end A091069.P14460450726275239863

namespace A091069

/-- `A091337((n+1)*A188510(A160499(n+1)))` -/
def P14460450726275239863.Spec : Prop :=
  ∀ n, P14460450726275239863.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P8331836583615795220

`A091337((n+1)*A289741(A160499(n+1)))`
-/

namespace A091069.P8331836583615795220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 ((n + 1 : ℤ) * A289741 (A160499 (n + 1)).toNat).toNat

end

end A091069.P8331836583615795220

namespace A091069

/-- `A091337((n+1)*A289741(A160499(n+1)))` -/
def P8331836583615795220.Spec : Prop :=
  ∀ n, P8331836583615795220.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P8198119997290428885

`A091337((n+1)*A289741(A329272(n+1)))`
-/

namespace A091069.P8198119997290428885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 ((n + 1 : ℤ) * A289741 (A329272 (n + 1)).toNat).toNat

end

end A091069.P8198119997290428885

namespace A091069

/-- `A091337((n+1)*A289741(A329272(n+1)))` -/
def P8198119997290428885.Spec : Prop :=
  ∀ n, P8198119997290428885.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P15701941191440038598

`A008966(n+1)*A091337(n+1)`
-/

namespace A091069.P15701941191440038598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A091337 (n + 1)

end

end A091069.P15701941191440038598

namespace A091069

/-- `A008966(n+1)*A091337(n+1)` -/
def P15701941191440038598.Spec : Prop :=
  ∀ n, P15701941191440038598.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P14035052371820094728

`A078461(n+1)*A091337(n+1)`
-/

namespace A091069.P14035052371820094728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 1) * A091337 (n + 1)

end

end A091069.P14035052371820094728

namespace A091069

/-- `A078461(n+1)*A091337(n+1)` -/
def P14035052371820094728.Spec : Prop :=
  ∀ n, P14035052371820094728.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P7270007417152963769

`A091337(n+1)*A114643(n+1)`
-/

namespace A091069.P7270007417152963769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A114643 (n + 1)

end

end A091069.P7270007417152963769

namespace A091069

/-- `A091337(n+1)*A114643(n+1)` -/
def P7270007417152963769.Spec : Prop :=
  ∀ n, P7270007417152963769.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P13659981929851409577

`A091337(n+1)*A323154(n+1)`
-/

namespace A091069.P13659981929851409577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A323154 (n + 1)

end

end A091069.P13659981929851409577

namespace A091069

/-- `A091337(n+1)*A323154(n+1)` -/
def P13659981929851409577.Spec : Prop :=
  ∀ n, P13659981929851409577.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P1626668939241750879

`A091337(n+1)*A353559(n+1)`
-/

namespace A091069.P1626668939241750879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A353559 (n + 1)

end

end A091069.P1626668939241750879

namespace A091069

/-- `A091337(n+1)*A353559(n+1)` -/
def P1626668939241750879.Spec : Prop :=
  ∀ n, P1626668939241750879.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P4343096601752795989

`A091337(n+1)*A353627(n+1)`
-/

namespace A091069.P4343096601752795989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A353627 (n + 1)

end

end A091069.P4343096601752795989

namespace A091069

/-- `A091337(n+1)*A353627(n+1)` -/
def P4343096601752795989.Spec : Prop :=
  ∀ n, P4343096601752795989.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P16138993998974411642

`A091337(n+1)*A359155(n+1)`
-/

namespace A091069.P16138993998974411642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A359155 (n + 1)

end

end A091069.P16138993998974411642

namespace A091069

/-- `A091337(n+1)*A359155(n+1)` -/
def P16138993998974411642.Spec : Prop :=
  ∀ n, P16138993998974411642.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P18105543728241590070

`A091337(n+1)*A359590(n+1)`
-/

namespace A091069.P18105543728241590070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A359590 (n + 1)

end

end A091069.P18105543728241590070

namespace A091069

/-- `A091337(n+1)*A359590(n+1)` -/
def P18105543728241590070.Spec : Prop :=
  ∀ n, P18105543728241590070.a n = A091069 (n + 1)

end A091069

/-! ## A091069.P12495387579128647928

`A091337(n+1)*A359592(n+1)`
-/

namespace A091069.P12495387579128647928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 1) * A359592 (n + 1)

end

end A091069.P12495387579128647928

namespace A091069

/-- `A091337(n+1)*A359592(n+1)` -/
def P12495387579128647928.Spec : Prop :=
  ∀ n, P12495387579128647928.a n = A091069 (n + 1)

end A091069

/-!
# A091070: Number of automorphism groups of partial orders on n points.

The programs for A091070, there is no canonical definition to state claims against.
-/

/-! ## A091070.P11757495622093879785

`A322911(A129374(n))`
-/

namespace A091070.P11757495622093879785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (A129374 n).toNat

end

end A091070.P11757495622093879785

/-! ## A091070.P8725985120392803368

`A000119(A148558(n)+A148536(n))`
-/

namespace A091070.P8725985120392803368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A148558 n + A148536 n).toNat

end

end A091070.P8725985120392803368

/-! ## A091070.P1098131799912207444

`A000119(A148558(n)+A148537(n))`
-/

namespace A091070.P1098131799912207444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A148558 n + A148537 n).toNat

end

end A091070.P1098131799912207444

/-! ## A091070.P4046660002860036307

`A000196(A016116(n)*A164141(n))`
-/

namespace A091070.P4046660002860036307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A016116 n * A164141 n).toNat

end

end A091070.P4046660002860036307

/-! ## A091070.P17906225206009994296

`A373811(A340399(n))`
-/

namespace A091070.P17906225206009994296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A340399 n).toNat

end

end A091070.P17906225206009994296

/-!
# A091071: Number of normalizers of subgroups of the symmetric group on n points.

The programs for A091071, there is no canonical definition to state claims against.
-/

/-! ## A091071.P1060585939177102188

`A344259(A148280(n))`
-/

namespace A091071.P1060585939177102188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344259 (A148280 n).toNat

end

end A091071.P1060585939177102188

/-! ## A091071.P7464292702015027880

`A092982(A319911(n+2))`
-/

namespace A091071.P7464292702015027880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A319911 (n + 2)).toNat

end

end A091071.P7464292702015027880

/-! ## A091071.P7276964435900888764

`A122921(2*A367317(n))`
-/

namespace A091071.P7276964435900888764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (2 * A367317 n).toNat

end

end A091071.P7276964435900888764

/-! ## A091071.P12768792664732862743

`ceil(A258445(∑[A136289(n)])/3)`
-/

namespace A091071.P12768792664732862743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258445 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌉

end

end A091071.P12768792664732862743

/-! ## A091071.P994507118920218075

`A335464(n)+A329312(A335471(n))`
-/

namespace A091071.P994507118920218075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335464 n + A329312 (A335471 n).toNat

end

end A091071.P994507118920218075

/-!
# A091072: Positive numbers k such that the Kronecker Symbol (-1 / k) > 0.

The programs for A091072, the canonical program `A091072.P3212609419497778136` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091072 has offset 1).

The definition of A091072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091072.P427784052699586329

`comp[and(n, -n)+n+n]`
-/

namespace A091072.P427784052699586329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091072.P427784052699586329

namespace A091072

/-- `comp[and(n, -n)+n+n]` -/
def P427784052699586329.Spec : Prop :=
  ∀ n, (P427784052699586329.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P1920770444457856137

`comp[or(n, n-1)+n+1]`
-/

namespace A091072.P1920770444457856137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091072.P1920770444457856137

namespace A091072

/-- `comp[or(n, n-1)+n+1]` -/
def P1920770444457856137.Spec : Prop :=
  ∀ n, (P1920770444457856137.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P891430301558550570

`comp[or(n, n+1)+1+n]+1`
-/

namespace A091072.P891430301558550570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A091072.P891430301558550570

namespace A091072

/-- `comp[or(n, n+1)+1+n]+1` -/
def P891430301558550570.Spec : Prop :=
  ∀ n, (P891430301558550570.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P17618244672832612724

`∑[A088742(n+1)]`
-/

namespace A091072.P17618244672832612724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091072.P17618244672832612724

namespace A091072

/-- `∑[A088742(n+1)]` -/
def P17618244672832612724.Spec : Prop :=
  ∀ n, P17618244672832612724.a n = A091072 (n + 1)

end A091072

/-! ## A091072.P10397683806093204274

`A106841(n+1)/8`
-/

namespace A091072.P10397683806093204274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106841 (n + 1) : ℚ) / 8

end

end A091072.P10397683806093204274

namespace A091072

/-- `A106841(n+1)/8` -/
def P10397683806093204274.Spec : Prop :=
  ∀ n, P10397683806093204274.a n = (A091072 (n + 1) : ℚ)

theorem P10397683806093204274.correct : P10397683806093204274.Spec := by
  intro n
  simp only [A091072, Nat.add_sub_cancel, A091072.P10397683806093204274.a, A091072.P3212609419497778136.f1, A091072.P3212609419497778136.f2, A091072.P3212609419497778136.a, A073089, A073089.P6746371190418764077.a, A106841, A106841.P8849377993894975428.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091072

/-! ## A091072.P10149380242617688060

`lt[A123725(2*n), 0]`
-/

namespace A091072.P10149380242617688060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123725 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091072.P10149380242617688060

namespace A091072

/-- `lt[A123725(2*n), 0]` -/
def P10149380242617688060.Spec : Prop :=
  ∀ n, (P10149380242617688060.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P2975449482951722138

`comp[A060833(n+1)-1]`
-/

namespace A091072.P2975449482951722138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060833 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A091072.P2975449482951722138

namespace A091072

/-- `comp[A060833(n+1)-1]` -/
def P2975449482951722138.Spec : Prop :=
  ∀ n, (P2975449482951722138.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P6455382418463478745

`record[A317335(n+1)+n]`
-/

namespace A091072.P6455382418463478745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317335 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091072.P6455382418463478745

namespace A091072

/-- `record[A317335(n+1)+n]` -/
def P6455382418463478745.Spec : Prop :=
  ∀ n, P6455382418463478745.a n = A091072 (n + 1)

end A091072

/-! ## A091072.P3212609419497778136

`eq[1, A073089(2*n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091072

/-- `eq[1, A073089(2*n+1)]` -/
def P3212609419497778136.Spec : Prop :=
  ∀ n, (P3212609419497778136.a n : ℤ) = A091072 (n + 1)

theorem P3212609419497778136.correct : P3212609419497778136.Spec := by
  intro n
  simp only [A091072, Nat.add_sub_cancel]

end A091072

/-! ## A091072.P7507470643032873639

`eq[1, A000034(A103391(n+1))]`
-/

namespace A091072.P7507470643032873639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A103391 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091072.P7507470643032873639

namespace A091072

/-- `eq[1, A000034(A103391(n+1))]` -/
def P7507470643032873639.Spec : Prop :=
  ∀ n, (P7507470643032873639.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P6698504241675634122

`∪[A000079(n), A225836(n+1)]`
-/

namespace A091072.P6698504241675634122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091072.P6698504241675634122

namespace A091072

/-- `∪[A000079(n), A225836(n+1)]` -/
def P6698504241675634122.Spec : Prop :=
  ∀ n, (P6698504241675634122.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P17459664276384242911

`∪[A220051(n), A225836(n+1)]`
-/

namespace A091072.P17459664276384242911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091072.P17459664276384242911

namespace A091072

/-- `∪[A220051(n), A225836(n+1)]` -/
def P17459664276384242911.Spec : Prop :=
  ∀ n, (P17459664276384242911.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P10516216617066523598

`∪[A003592(n+1), A225836(n+1)]`
-/

namespace A091072.P10516216617066523598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091072.P10516216617066523598

namespace A091072

/-- `∪[A003592(n+1), A225836(n+1)]` -/
def P10516216617066523598.Spec : Prop :=
  ∀ n, (P10516216617066523598.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P4627182734315665857

`∪[A107326(n+1), A225836(n+1)]`
-/

namespace A091072.P4627182734315665857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091072.P4627182734315665857

namespace A091072

/-- `∪[A107326(n+1), A225836(n+1)]` -/
def P4627182734315665857.Spec : Prop :=
  ∀ n, (P4627182734315665857.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P15670462074029226498

`eq[0, A103391(n+1)%A118821(n+1)]`
-/

namespace A091072.P15670462074029226498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103391 (n + 1)) (A118821 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091072.P15670462074029226498

namespace A091072

/-- `eq[0, A103391(n+1)%A118821(n+1)]` -/
def P15670462074029226498.Spec : Prop :=
  ∀ n, (P15670462074029226498.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P8705159592777574536

`eq[1, A089309(n)]`
-/

namespace A091072.P8705159592777574536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091072.P8705159592777574536

namespace A091072

/-- `eq[1, A089309(n)]` -/
def P8705159592777574536.Spec : Prop :=
  ∀ n, (P8705159592777574536.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P15219309985346042787

`record[1-A322015(n)+n]`
-/

namespace A091072.P15219309985346042787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A322015 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091072.P15219309985346042787

namespace A091072

/-- `record[1-A322015(n)+n]` -/
def P15219309985346042787.Spec : Prop :=
  ∀ n, P15219309985346042787.a n = A091072 (n + 1)

end A091072

/-! ## A091072.P6250862621828472297

`lt[A089309(n+1), 2]+1`
-/

namespace A091072.P6250862621828472297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091072.P6250862621828472297

namespace A091072

/-- `lt[A089309(n+1), 2]+1` -/
def P6250862621828472297.Spec : Prop :=
  ∀ n, (P6250862621828472297.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P2257054931027464738

`lt[A014681(A089309(n)+1), 2]`
-/

namespace A091072.P2257054931027464738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A089309 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091072.P2257054931027464738

namespace A091072

/-- `lt[A014681(A089309(n)+1), 2]` -/
def P2257054931027464738.Spec : Prop :=
  ∀ n, (P2257054931027464738.a n : ℤ) = A091072 (n + 1)

end A091072

/-! ## A091072.P10097470567962922073

`record[A322016(n)+1]`
-/

namespace A091072.P10097470567962922073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091072.P10097470567962922073

namespace A091072

/-- `record[A322016(n)+1]` -/
def P10097470567962922073.Spec : Prop :=
  ∀ n, P10097470567962922073.a n = A091072 (n + 1)

end A091072

/-!
# A091073: Number of transitive relations on n unlabeled points.

The programs for A091073, there is no canonical definition to state claims against.
-/

/-! ## A091073.P731182019318731458

`A052413(A319559(2*n+1))+1`
-/

namespace A091073.P731182019318731458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A319559 (2 * n + 1)).toNat + 1

end

end A091073.P731182019318731458

/-! ## A091073.P15293014798067326981

`A000949(n)+A000720(A305868(n+1))`
-/

namespace A091073.P15293014798067326981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000949 n + A000720 (A305868 (n + 1)).toNat

end

end A091073.P15293014798067326981

/-!
# A091074: Fibonacci sequence beginning 12, 67.

The programs for A091074, the canonical program `A091074.P7445868260934044872` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091074 has offset 1).

The definition of A091074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091074.P7445868260934044872

`a(n-1)+a(n-2)` with `a(0)=12, a(1)=67`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091074

/-- `a(n-1)+a(n-2)` -/
def P7445868260934044872.Spec : Prop :=
  ∀ n, (P7445868260934044872.a n : ℤ) = A091074 (n + 1)

theorem P7445868260934044872.correct : P7445868260934044872.Spec := by
  intro n
  simp only [A091074, Nat.add_sub_cancel]

end A091074

/-! ## A091074.P4139001836050873537

`A000045(n)+3*A022385(n)`
-/

namespace A091074.P4139001836050873537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 3 * A022385 n

end

end A091074.P4139001836050873537

namespace A091074

/-- `A000045(n)+3*A022385(n)` -/
def P4139001836050873537.Spec : Prop :=
  ∀ n, P4139001836050873537.a n = A091074 (n + 1)

end A091074

/-! ## A091074.P1454933186462643216

`4*A022127(n)-A000045(n)`
-/

namespace A091074.P1454933186462643216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022127 n - A000045 n

end

end A091074.P1454933186462643216

namespace A091074

/-- `4*A022127(n)-A000045(n)` -/
def P1454933186462643216.Spec : Prop :=
  ∀ n, P1454933186462643216.a n = A091074 (n + 1)

end A091074

/-! ## A091074.P8460621565806673708

`A000045(n)+6*A022115(n)`
-/

namespace A091074.P8460621565806673708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 6 * A022115 n

end

end A091074.P8460621565806673708

namespace A091074

/-- `A000045(n)+6*A022115(n)` -/
def P8460621565806673708.Spec : Prop :=
  ∀ n, P8460621565806673708.a n = A091074 (n + 1)

end A091074

/-! ## A091074.P4618597049241833586

`A022353(n)+12*A000285(n)`
-/

namespace A091074.P4618597049241833586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + 12 * A000285 n

end

end A091074.P4618597049241833586

namespace A091074

/-- `A022353(n)+12*A000285(n)` -/
def P4618597049241833586.Spec : Prop :=
  ∀ n, P4618597049241833586.a n = A091074 (n + 1)

end A091074

/-! ## A091074.P8572992237000949782

`Δ[A000071(n+1)]+6*A022115(n)`
-/

namespace A091074.P8572992237000949782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 6 * A022115 n

end

end A091074.P8572992237000949782

namespace A091074

/-- `Δ[A000071(n+1)]+6*A022115(n)` -/
def P8572992237000949782.Spec : Prop :=
  ∀ n, P8572992237000949782.a n = A091074 (n + 1)

end A091074

/-!
# A091075: Primes occurring in A091074.

The programs for A091075, there is no canonical definition to state claims against.
-/

/-! ## A091075.P7009353621518728579

`A091074(A091076(n+1))`
-/

namespace A091075.P7009353621518728579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091074 (A091076 (n + 1)).toNat

end

end A091075.P7009353621518728579

/-!
# A091077: Numbers k which when converted to base 3, reversed and converted back to base 10 yield a number m such that k mod m = 0. Cases which are trivial or result in digit loss are excluded.

The programs for A091077, there is no canonical definition to state claims against.
-/

/-! ## A091077.P12116084309838586606

`2*A173951(n+1)`
-/

namespace A091077.P12116084309838586606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173951 (n + 1)

end

end A091077.P12116084309838586606

/-! ## A091077.P5352834066247137943

`4*A354886(n+1)`
-/

namespace A091077.P5352834066247137943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A354886 (n + 1)

end

end A091077.P5352834066247137943

/-! ## A091077.P10368108565948021727

`ceil(4/2*A173951(ϕ²-(ϕ-n)))`
-/

namespace A091077.P10368108565948021727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 2 * (A173951 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ)⌉

end

end A091077.P10368108565948021727

/-! ## A091077.P186896480970120319

`record[2*A173951(A195663(n))]`
-/

namespace A091077.P186896480970120319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173951 (A195663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091077.P186896480970120319

/-! ## A091077.P11109756464372856395

`A173951(n+1)²/A354886(n+1)`
-/

namespace A091077.P11109756464372856395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173951 (n + 1) ^ 2 : ℚ) / (A354886 (n + 1) : ℚ)

end

end A091077.P11109756464372856395

/-!
# A091078: Numbers k which when converted to base 4, reversed and converted back to base 10 yield a number m such that k mod m = 0. Cases which are trivial or result in digit loss are excluded.

The programs for A091078, there is no canonical definition to state claims against.
-/

/-! ## A091078.P1936150858123920043

`3*A223078(n+1)`
-/

namespace A091078.P1936150858123920043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A223078 (n + 1)

end

end A091078.P1936150858123920043

/-!
# A091084: a(n) = A001045(n) mod 10.

The programs for A091084, the canonical program `A091084.P61175056823892316` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091084 has offset 0).

The definition of A091084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001045(n)%10` (program `A091084.P61175056823892316`, by `A091084.P61175056823892316.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091084.P14355284971989601322

`a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A091084.P14355284971989601322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 3, 5] fun n a =>
  a (n - 4)

end

end A091084.P14355284971989601322

namespace A091084

/-- `a(n-4)` -/
def P14355284971989601322.Spec : Prop :=
  ∀ n, (P14355284971989601322.a n : ℤ) = A091084 n

end A091084

/-! ## A091084.P61175056823892316

`A001045(n)%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091084

/-- `A001045(n)%10` -/
def P61175056823892316.Spec : Prop :=
  ∀ n, P61175056823892316.a n = A091084 n

theorem P61175056823892316.correct : P61175056823892316.Spec := by
  intro n
  simp only [A091084]

end A091084

/-!
# A091085: a(n) = mod(A078008(n),10).

The programs for A091085, the canonical program `A091085.P2851260985975410493` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091085 has offset 0).

The definition of A091085 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A078008(n)%10` (program `A091085.P2851260985975410493`, by `A091085.P2851260985975410493.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091085.P2851260985975410493

`A078008(n)%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091085

/-- `A078008(n)%10` -/
def P2851260985975410493.Spec : Prop :=
  ∀ n, P2851260985975410493.a n = A091085 n

theorem P2851260985975410493.correct : P2851260985975410493.Spec := by
  intro n
  simp only [A091085]

end A091085

/-!
# A091086: a(n) = A000975(n) mod 10.

The programs for A091086, the canonical program `A091086.P11305774635944394107` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091086 has offset 0).

The definition of A091086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091086.P11305774635944394107

`A000975(n)%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091086

/-- `A000975(n)%10` -/
def P11305774635944394107.Spec : Prop :=
  ∀ n, P11305774635944394107.a n = A091086 n

theorem P11305774635944394107.correct : P11305774635944394107.Spec := by
  intro n
  simp only [A091086]

end A091086

/-!
# A091087: a(n) = floor(r*n) + floor(n/r), where r=sqrt(2).

The programs for A091087, the canonical program `A091087.P12753973102375981913` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091087 has offset 0).

The definition of A091087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091087.P12753973102375981913

`floor(n*sqrt(2))+floor(n/sqrt(2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091087

/-- `floor(n*sqrt(2))+floor(n/sqrt(2))` -/
def P12753973102375981913.Spec : Prop :=
  ∀ n, P12753973102375981913.a n = A091087 n

theorem P12753973102375981913.correct : P12753973102375981913.Spec := by
  intro n
  simp only [A091087]

end A091087

/-! ## A091087.P13615267071987417850

`A032766(floor(n*sqrt(2)))`
-/

namespace A091087.P13615267071987417850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A091087.P13615267071987417850

namespace A091087

/-- `A032766(floor(n*sqrt(2)))` -/
def P13615267071987417850.Spec : Prop :=
  ∀ n, P13615267071987417850.a n = A091087 n

end A091087

/-! ## A091087.P8124628229981133116

`A001511(2*n+5)*A032766(A001951(n))`
-/

namespace A091087.P8124628229981133116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 5) * A032766 (A001951 n).toNat

end

end A091087.P8124628229981133116

namespace A091087

/-- `A001511(2*n+5)*A032766(A001951(n))` -/
def P8124628229981133116.Spec : Prop :=
  ∀ n, P8124628229981133116.a n = A091087 n

end A091087

/-! ## A091087.P4043113601708751712

`A032766(A001951(n))*A342241(2*n+1)`
-/

namespace A091087.P4043113601708751712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A001951 n).toNat * A342241 (2 * n + 1)

end

end A091087.P4043113601708751712

namespace A091087

/-- `A032766(A001951(n))*A342241(2*n+1)` -/
def P4043113601708751712.Spec : Prop :=
  ∀ n, P4043113601708751712.a n = A091087 n

end A091087

/-! ## A091087.P1765191594935200274

`record[A187968(n+1)-(A026251(n+1)-A080764(n))]`
-/

namespace A091087.P1765191594935200274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) - (A026251 (n + 1) - A080764 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091087.P1765191594935200274

namespace A091087

/-- `record[A187968(n+1)-(A026251(n+1)-A080764(n))]` -/
def P1765191594935200274.Spec : Prop :=
  ∀ n, P1765191594935200274.a n = A091087 n

end A091087

/-! ## A091087.P6907446119212281024

`record[A187968(n+1)-(A026251(n+1)-A188295(n+2))]`
-/

namespace A091087.P6907446119212281024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) - (A026251 (n + 1) - A188295 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091087.P6907446119212281024

namespace A091087

/-- `record[A187968(n+1)-(A026251(n+1)-A188295(n+2))]` -/
def P6907446119212281024.Spec : Prop :=
  ∀ n, P6907446119212281024.a n = A091087 n

end A091087

/-! ## A091087.P167370615495466823

`A004526(3*A001951(n))`
-/

namespace A091087.P167370615495466823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A001951 n).toNat

end

end A091087.P167370615495466823

namespace A091087

/-- `A004526(3*A001951(n))` -/
def P167370615495466823.Spec : Prop :=
  ∀ n, P167370615495466823.a n = A091087 n

end A091087

/-!
# A091088: a(n) is the minimum odd number that must be appended to n to form a prime.

The programs for A091088, there is no canonical definition to state claims against.
-/

/-! ## A091088.P15800797855096296057

`A068695(abs(1-n)+1)`
-/

namespace A091088.P15800797855096296057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (|1 - (n : ℤ)| + 1).toNat

end

end A091088.P15800797855096296057

/-! ## A091088.P8331302887792626588

`A068695(A000038(n)+n)%(n+4)`
-/

namespace A091088.P8331302887792626588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068695 (A000038 n + (n : ℤ)).toNat) (n + 4 : ℤ)

end

end A091088.P8331302887792626588

/-! ## A091088.P8335176784355529735

`A068695(A028310(n))+A000038(n)`
-/

namespace A091088.P8335176784355529735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A028310 n).toNat + A000038 n

end

end A091088.P8335176784355529735

/-! ## A091088.P2193607486895956906

`A068695(A000007(n)+n)+A000038(n)`
-/

namespace A091088.P2193607486895956906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A000007 n + (n : ℤ)).toNat + A000038 n

end

end A091088.P2193607486895956906

/-! ## A091088.P6425827417399513783

`A079169(A008578(n+1))+A068695(A000038(n)+n)`
-/

namespace A091088.P6425827417399513783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079169 (A008578 (n + 1)).toNat + A068695 (A000038 n + (n : ℤ)).toNat

end

end A091088.P6425827417399513783

/-! ## A091088.P2634039785348324794

`A068695(A000038(n)+n)+A002448(A000040(n+2))`
-/

namespace A091088.P2634039785348324794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A000038 n + (n : ℤ)).toNat + A002448 (A000040 (n + 2)).toNat

end

end A091088.P2634039785348324794

/-! ## A091088.P17638402710026463093

`A068695(A000038(n)+n)/A014963(A004011(n))`
-/

namespace A091088.P17638402710026463093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068695 (A000038 n + (n : ℤ)).toNat : ℚ) / (A014963 (A004011 n).toNat : ℚ)

end

end A091088.P17638402710026463093

/-!
# A091090: In binary representation: number of editing steps (delete, insert, or substitute) to transform n into n + 1.

The programs for A091090, the canonical program `A091090.P18330635638829780680` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091090 has offset 0).

The definition of A091090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091090.P18330635638829780680

`A000120(n)+A070939(n)-A000120(n+1)-A070939(n+1)+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091090

/-- `A000120(n)+A070939(n)-A000120(n+1)-A070939(n+1)+2` -/
def P18330635638829780680.Spec : Prop :=
  ∀ n, P18330635638829780680.a n = A091090 n

theorem P18330635638829780680.correct : P18330635638829780680.Spec := by
  intro n
  simp only [A091090]

end A091090

/-! ## A091090.P5884148979636984955

`n%2*a(floor(n/2))+1` with `a(0)=1, a(1)=1`
-/

namespace A091090.P5884148979636984955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A091090.P5884148979636984955

namespace A091090

/-- `n%2*a(floor(n/2))+1` -/
def P5884148979636984955.Spec : Prop :=
  ∀ n, (P5884148979636984955.a n : ℤ) = A091090 n

end A091090

/-! ## A091090.P8412447953905021832

`val(n+1, 2)+1-char[∑[2^n]]`
-/

namespace A091090.P8412447953905021832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091090.P8412447953905021832

namespace A091090

/-- `val(n+1, 2)+1-char[∑[2^n]]` -/
def P8412447953905021832.Spec : Prop :=
  ∀ n, P8412447953905021832.a n = A091090 n

end A091090

/-! ## A091090.P5008649093938219976

`a(floor((n-1)/2))+2-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A091090.P5008649093938219976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + (2 - a (n - 1))

end

end A091090.P5008649093938219976

namespace A091090

/-- `a(floor((n-1)/2))+2-a(n-1)` -/
def P5008649093938219976.Spec : Prop :=
  ∀ n, P5008649093938219976.a n = A091090 n

end A091090

/-! ## A091090.P14590545177091834009

`2-(a(n-1)-a(floor((n-1)/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A091090.P14590545177091834009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 - (a (n - 1) - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat)

end

end A091090.P14590545177091834009

namespace A091090

/-- `2-(a(n-1)-a(floor((n-1)/2)))` -/
def P14590545177091834009.Spec : Prop :=
  ∀ n, P14590545177091834009.a n = A091090 n

end A091090

/-! ## A091090.P14795195300597929141

`log2(A135517(n))+1`
-/

namespace A091090.P14795195300597929141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A135517 n : ℝ) + 1

end

end A091090.P14795195300597929141

namespace A091090

/-- `log2(A135517(n))+1` -/
def P14795195300597929141.Spec : Prop :=
  ∀ n, P14795195300597929141.a n = (A091090 n : ℝ)

end A091090

/-! ## A091090.P9741629226802806803

`2-Δ[A056791(n)]`
-/

namespace A091090.P9741629226802806803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A091090.P9741629226802806803

namespace A091090

/-- `2-Δ[A056791(n)]` -/
def P9741629226802806803.Spec : Prop :=
  ∀ n, P9741629226802806803.a n = A091090 n

theorem P9741629226802806803.correct : P9741629226802806803.Spec := by
  intro n
  simp only [A091090, Nat.add_sub_cancel, A091090.P9741629226802806803.f1, A091090.P9741629226802806803.a, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A056791, A056791.P10588008937732959129.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091090

/-! ## A091090.P5297217985550342613

`2-Δ[A056792(n)]`
-/

namespace A091090.P5297217985550342613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A091090.P5297217985550342613

namespace A091090

/-- `2-Δ[A056792(n)]` -/
def P5297217985550342613.Spec : Prop :=
  ∀ n, P5297217985550342613.a n = A091090 n

theorem P5297217985550342613.correct : P5297217985550342613.Spec := by
  intro n
  simp only [A091090, Nat.add_sub_cancel, A091090.P5297217985550342613.f1, A091090.P5297217985550342613.a, A091090.P18330635638829780680.a, A000120, A000120.P2816527436160941581.a, A056792, A056792.P13266386025487519892.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091090

/-! ## A091090.P1982304587012863177

`val(A052126(n+1), 2)+1`
-/

namespace A091090.P1982304587012863177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052126 (n + 1)).toNat 2 + 1

end

end A091090.P1982304587012863177

namespace A091090

/-- `val(A052126(n+1), 2)+1` -/
def P1982304587012863177.Spec : Prop :=
  ∀ n, (P1982304587012863177.a n : ℤ) = A091090 n

end A091090

/-! ## A091090.P17445945002608633661

`val(A325567(n+1), 2)+1`
-/

namespace A091090.P17445945002608633661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325567 (n + 1)).toNat 2 + 1

end

end A091090.P17445945002608633661

namespace A091090

/-- `val(A325567(n+1), 2)+1` -/
def P17445945002608633661.Spec : Prop :=
  ∀ n, (P17445945002608633661.a n : ℤ) = A091090 n

end A091090

/-! ## A091090.P8897800809259191541

`val((n+1)/A006530(n+1), 2)+1`
-/

namespace A091090.P8897800809259191541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat 2 + 1

end

end A091090.P8897800809259191541

namespace A091090

/-- `val((n+1)/A006530(n+1), 2)+1` -/
def P8897800809259191541.Spec : Prop :=
  ∀ n, (P8897800809259191541.a n : ℤ) = A091090 n

end A091090

/-! ## A091090.P10938692608756979680

`val((n+1)/A014963(n+1), 2)+1`
-/

namespace A091090.P10938692608756979680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat 2 + 1

end

end A091090.P10938692608756979680

namespace A091090

/-- `val((n+1)/A014963(n+1), 2)+1` -/
def P10938692608756979680.Spec : Prop :=
  ∀ n, (P10938692608756979680.a n : ℤ) = A091090 n

end A091090

/-! ## A091090.P2703506457135626416

`A050603(A006257(n))`
-/

namespace A091090.P2703506457135626416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A006257 n).toNat

end

end A091090.P2703506457135626416

namespace A091090

/-- `A050603(A006257(n))` -/
def P2703506457135626416.Spec : Prop :=
  ∀ n, P2703506457135626416.a n = A091090 n

end A091090

/-! ## A091090.P3124565742465642062

`A000005(A135517(n))`
-/

namespace A091090.P3124565742465642062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A135517 n).toNat

end

end A091090.P3124565742465642062

namespace A091090

/-- `A000005(A135517(n))` -/
def P3124565742465642062.Spec : Prop :=
  ∀ n, P3124565742465642062.a n = A091090 n

end A091090

/-! ## A091090.P18188285337813466290

`A001511(A009195(n+1))`
-/

namespace A091090.P18188285337813466290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A009195 (n + 1)).toNat

end

end A091090.P18188285337813466290

namespace A091090

/-- `A001511(A009195(n+1))` -/
def P18188285337813466290.Spec : Prop :=
  ∀ n, P18188285337813466290.a n = A091090 n

end A091090

/-! ## A091090.P1835476753636435091

`A001511(A048671(n+1))`
-/

namespace A091090.P1835476753636435091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A048671 (n + 1)).toNat

end

end A091090.P1835476753636435091

namespace A091090

/-- `A001511(A048671(n+1))` -/
def P1835476753636435091.Spec : Prop :=
  ∀ n, P1835476753636435091.a n = A091090 n

end A091090

/-! ## A091090.P2257549936451239702

`A001511(A052126(n+1))`
-/

namespace A091090.P2257549936451239702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A052126 (n + 1)).toNat

end

end A091090.P2257549936451239702

namespace A091090

/-- `A001511(A052126(n+1))` -/
def P2257549936451239702.Spec : Prop :=
  ∀ n, P2257549936451239702.a n = A091090 n

end A091090

/-! ## A091090.P11224195788636172058

`A008687(A135517(n)+1)`
-/

namespace A091090.P11224195788636172058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A135517 n + 1).toNat

end

end A091090.P11224195788636172058

namespace A091090

/-- `A008687(A135517(n)+1)` -/
def P11224195788636172058.Spec : Prop :=
  ∀ n, P11224195788636172058.a n = A091090 n

end A091090

/-! ## A091090.P12492531310627150034

`A001511(A325567(n+1))`
-/

namespace A091090.P12492531310627150034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A325567 (n + 1)).toNat

end

end A091090.P12492531310627150034

namespace A091090

/-- `A001511(A325567(n+1))` -/
def P12492531310627150034.Spec : Prop :=
  ∀ n, P12492531310627150034.a n = A091090 n

end A091090

/-! ## A091090.P16426219242526798861

`A001511(A364254(n+1))`
-/

namespace A091090.P16426219242526798861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A364254 (n + 1)).toNat

end

end A091090.P16426219242526798861

namespace A091090

/-- `A001511(A364254(n+1))` -/
def P16426219242526798861.Spec : Prop :=
  ∀ n, P16426219242526798861.a n = A091090 n

end A091090

/-!
# A091091: Numbers needing in binary and ternary representation an equal minimal number of editing steps (delete, insert or substitute) to transform them into their square.

The programs for A091091, there is no canonical definition to state claims against.
-/

/-! ## A091091.P5031229528717906930

`eq[A091092(n), A091093(n)]`
-/

namespace A091091.P5031229528717906930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091091.P5031229528717906930

/-!
# A091093: In ternary representation: minimal number of editing steps (delete, insert or substitute) to transform n into n^2.

The programs for A091093, there is no canonical definition to state claims against.
-/

/-! ## A091093.P4260261704750077690

`A275849(xor(A001255(n), A001316(n)))`
-/

namespace A091093.P4260261704750077690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (Int.xor (A001255 n) (A001316 n)).toNat

end

end A091093.P4260261704750077690

/-! ## A091093.P11095441991248596736

`A010054(n+4)+A001221(A145546(n+1))`
-/

namespace A091093.P11095441991248596736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) + A001221 (A145546 (n + 1)).toNat

end

end A091093.P11095441991248596736

/-! ## A091093.P12075527687511470981

`A001221(A240743(xor(3, 2*n)-(and(4, (n+2)²)-(1-n))))`
-/

namespace A091093.P12075527687511470981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240743 (((Nat.xor 3 (2 * n) : ℤ) - ((Nat.land 4 ((n + 2) ^ 2) : ℤ) - (1 - (n : ℤ)))).toNat + 36)).toNat

end

end A091093.P12075527687511470981

/-! ## A091093.P3082901528027211801

`A001222(A077211(n+1)%A143609(n+1))`
-/

namespace A091093.P3082901528027211801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A077211 (n + 1)) (A143609 (n + 1))).toNat

end

end A091093.P3082901528027211801

/-! ## A091093.P5667788863512478062

`A001221(A000631(n+2)*A001222(2*n+5))`
-/

namespace A091093.P5667788863512478062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000631 (n + 2) * A001222 (2 * n + 5)).toNat

end

end A091093.P5667788863512478062

/-!
# A091094: Number of partitions of n-th composite number not containing the smallest prime factor.

The programs for A091094, there is no canonical definition to state claims against.
-/

/-! ## A091094.P8398253209865864660

`A000041(A002808(n+1))-A000041(A085271(n+1))`
-/

namespace A091094.P8398253209865864660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002808 (n + 1)).toNat - A000041 (A085271 (n + 1)).toNat

end

end A091094.P8398253209865864660

/-! ## A091094.P9645348208745236068

`A000041(A018252(n+2))-A000041(A085271(n+1))`
-/

namespace A091094.P9645348208745236068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A018252 (n + 2)).toNat - A000041 (A085271 (n + 1)).toNat

end

end A091094.P9645348208745236068

/-! ## A091094.P7465710456164445342

`A000041(A065090(n+3))-A000041(A085271(n+1))`
-/

namespace A091094.P7465710456164445342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A065090 (n + 3)).toNat - A000041 (A085271 (n + 1)).toNat

end

end A091094.P7465710456164445342

/-! ## A091094.P8805300722470603574

`A000041(A002808(n+1))-A091114(n+1)`
-/

namespace A091094.P8805300722470603574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002808 (n + 1)).toNat - A091114 (n + 1)

end

end A091094.P8805300722470603574

/-! ## A091094.P2000343181049746143

`A000041(A018252(n+2))-A091114(n+1)`
-/

namespace A091094.P2000343181049746143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A018252 (n + 2)).toNat - A091114 (n + 1)

end

end A091094.P2000343181049746143

/-!
# A091095: Expansion of (1+4*x-24*x^2)/((1-4*x)(1+4*x)).

The programs for A091095, the canonical program `A091095.P12719373493651600970` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091095 has offset 0).

The definition of A091095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-24x^2)/(1-16x^2))` (program `A091095.P12719373493651600970`, by `A091095.P12719373493651600970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091095.P12719373493651600970

`ogf((1+4x-24x^2)/(1-16x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091095

/-- `ogf((1+4x-24x^2)/(1-16x^2))` -/
def P12719373493651600970.Spec : Prop :=
  ∀ n, P12719373493651600970.a n = A091095 n

theorem P12719373493651600970.correct : P12719373493651600970.Spec := by
  intro n
  simp only [A091095]

end A091095

/-! ## A091095.P4248606382438227143

`16*a(n-2)` with `a(0)=1, a(1)=4, a(2)=-8`
-/

namespace A091095.P4248606382438227143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, -8] fun n a =>
  16 * a (n - 2)

end

end A091095.P4248606382438227143

namespace A091095

/-- `16*a(n-2)` -/
def P4248606382438227143.Spec : Prop :=
  ∀ n, P4248606382438227143.a n = A091095 n

end A091095

/-! ## A091095.P8039221931938592185

`(-2)^record[n/(and(2, n)-1)]`
-/

namespace A091095.P8039221931938592185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.land 2 n : ℤ) - 1 : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-2 : ℝ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A091095.P8039221931938592185

namespace A091095

/-- `(-2)^record[n/(and(2, n)-1)]` -/
def P8039221931938592185.Spec : Prop :=
  ∀ n, P8039221931938592185.a n = (A091095 n : ℝ)

end A091095

/-! ## A091095.P12986790845488786381

`(-2)^eq[n, n*(and(2, n)-1)]`
-/

namespace A091095.P12986790845488786381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.land 2 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091095.P12986790845488786381

namespace A091095

/-- `(-2)^eq[n, n*(and(2, n)-1)]` -/
def P12986790845488786381.Spec : Prop :=
  ∀ n, P12986790845488786381.a n = A091095 n

end A091095

/-! ## A091095.P9184283421480140542

`(-2)^∑[4-a(n-1)]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A091095.P9184283421480140542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A091095.P9184283421480140542

namespace A091095

/-- `(-2)^∑[4-a(n-1)]` -/
def P9184283421480140542.Spec : Prop :=
  ∀ n, P9184283421480140542.a n = (A091095 n : ℚ)

end A091095

/-! ## A091095.P2562489182501724796

`4^n/(2-a(n-1))%3` with `a(0)=1`
-/

namespace A091095.P2562489182501724796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℚ) / (Int.tmod (SequenceMachineLib.roundAway (2 - a (n - 1))) 3 : ℚ)

end

end A091095.P2562489182501724796

namespace A091095

/-- `4^n/(2-a(n-1))%3` -/
def P2562489182501724796.Spec : Prop :=
  ∀ n, P2562489182501724796.a n = (A091095 n : ℚ)

end A091095

/-! ## A091095.P13723706579127074167

`(-2)^lt[A020639(∑[n+1]), 3]`
-/

namespace A091095.P13723706579127074167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A091095.P13723706579127074167

namespace A091095

/-- `(-2)^lt[A020639(∑[n+1]), 3]` -/
def P13723706579127074167.Spec : Prop :=
  ∀ n, P13723706579127074167.a n = A091095 n

end A091095

/-! ## A091095.P13930945150038877644

`A123344(A014601(n))`
-/

namespace A091095.P13930945150038877644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A014601 n).toNat

end

end A091095.P13930945150038877644

namespace A091095

/-- `A123344(A014601(n))` -/
def P13930945150038877644.Spec : Prop :=
  ∀ n, P13930945150038877644.a n = A091095 n

end A091095

/-! ## A091095.P17037010925949705691

`A056450(n)*A123344(n)`
-/

namespace A091095.P17037010925949705691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A123344 n

end

end A091095.P17037010925949705691

namespace A091095

/-- `A056450(n)*A123344(n)` -/
def P17037010925949705691.Spec : Prop :=
  ∀ n, P17037010925949705691.a n = A091095 n

end A091095

/-! ## A091095.P15178181001635302410

`A123344(A000035(n)+2*n)`
-/

namespace A091095.P15178181001635302410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A000035 n + (2 * n : ℤ)).toNat

end

end A091095.P15178181001635302410

namespace A091095

/-- `A123344(A000035(n)+2*n)` -/
def P15178181001635302410.Spec : Prop :=
  ∀ n, P15178181001635302410.a n = A091095 n

end A091095

/-! ## A091095.P3266835744186647873

`A123344(A000035(n)+n+n)`
-/

namespace A091095.P3266835744186647873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A091095.P3266835744186647873

namespace A091095

/-- `A123344(A000035(n)+n+n)` -/
def P3266835744186647873.Spec : Prop :=
  ∀ n, P3266835744186647873.a n = A091095 n

end A091095

/-! ## A091095.P1624383757621135536

`A122803(2*n+1-A040001(n))`
-/

namespace A091095.P1624383757621135536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 ((2 * n + 1 : ℤ) - A040001 n).toNat

end

end A091095.P1624383757621135536

namespace A091095

/-- `A122803(2*n+1-A040001(n))` -/
def P1624383757621135536.Spec : Prop :=
  ∀ n, P1624383757621135536.a n = A091095 n

end A091095

/-! ## A091095.P4413925310073838978

`A011782(A000034(n)+n)*A123344(n)`
-/

namespace A091095.P4413925310073838978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000034 n + (n : ℤ)).toNat * A123344 n

end

end A091095.P4413925310073838978

namespace A091095

/-- `A011782(A000034(n)+n)*A123344(n)` -/
def P4413925310073838978.Spec : Prop :=
  ∀ n, P4413925310073838978.a n = A091095 n

end A091095

/-! ## A091095.P12583298831149091842

`A123344(A000034(n)+n)*A123344(n)`
-/

namespace A091095.P12583298831149091842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (A000034 n + (n : ℤ)).toNat * A123344 n

end

end A091095.P12583298831149091842

namespace A091095

/-- `A123344(A000034(n)+n)*A123344(n)` -/
def P12583298831149091842.Spec : Prop :=
  ∀ n, P12583298831149091842.a n = A091095 n

end A091095

/-! ## A091095.P4177121764353501465

`A011782(n+1)*A134451(n+1)*A123344(n)`
-/

namespace A091095.P4177121764353501465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A134451 (n + 1) * A123344 n

end

end A091095.P4177121764353501465

namespace A091095

/-- `A011782(n+1)*A134451(n+1)*A123344(n)` -/
def P4177121764353501465.Spec : Prop :=
  ∀ n, P4177121764353501465.a n = A091095 n

end A091095

/-! ## A091095.P10753328250910359007

`A011782(n+1)*A134451(n+1)*A141531(n+1)`
-/

namespace A091095.P10753328250910359007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A134451 (n + 1) * A141531 (n + 1)

end

end A091095.P10753328250910359007

namespace A091095

/-- `A011782(n+1)*A134451(n+1)*A141531(n+1)` -/
def P10753328250910359007.Spec : Prop :=
  ∀ n, P10753328250910359007.a n = A091095 n

end A091095

/-! ## A091095.P93285037095679414

`A141531(A042948(n+1))`
-/

namespace A091095.P93285037095679414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (A042948 (n + 1)).toNat

end

end A091095.P93285037095679414

namespace A091095

/-- `A141531(A042948(n+1))` -/
def P93285037095679414.Spec : Prop :=
  ∀ n, P93285037095679414.a n = A091095 n

end A091095

/-! ## A091095.P6149051161451889686

`A141531(A338062(n+1))`
-/

namespace A091095.P6149051161451889686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (A338062 (n + 1)).toNat

end

end A091095.P6149051161451889686

namespace A091095

/-- `A141531(A338062(n+1))` -/
def P6149051161451889686.Spec : Prop :=
  ∀ n, P6149051161451889686.a n = A091095 n

end A091095

/-! ## A091095.P4243510826054102734

`A141531(A000034(n)+2*n)`
-/

namespace A091095.P4243510826054102734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (A000034 n + (2 * n : ℤ)).toNat

end

end A091095.P4243510826054102734

namespace A091095

/-- `A141531(A000034(n)+2*n)` -/
def P4243510826054102734.Spec : Prop :=
  ∀ n, P4243510826054102734.a n = A091095 n

end A091095

/-! ## A091095.P1082199146331512769

`A141531(A000034(n)+n+n)`
-/

namespace A091095.P1082199146331512769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (A000034 n + (n : ℤ) + (n : ℤ)).toNat

end

end A091095.P1082199146331512769

namespace A091095

/-- `A141531(A000034(n)+n+n)` -/
def P1082199146331512769.Spec : Prop :=
  ∀ n, P1082199146331512769.a n = A091095 n

end A091095

/-!
# A091096: Expansion of (1+5x-40x^2)/((1-5x)(1+5x)).

The programs for A091096, the canonical program `A091096.P17117347733645969568` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091096 has offset 0).

The definition of A091096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x-40x^2)/(1-25x^2))` (program `A091096.P17117347733645969568`, by `A091096.P17117347733645969568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091096.P17117347733645969568

`ogf((1+5x-40x^2)/(1-25x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091096

/-- `ogf((1+5x-40x^2)/(1-25x^2))` -/
def P17117347733645969568.Spec : Prop :=
  ∀ n, P17117347733645969568.a n = A091096 n

theorem P17117347733645969568.correct : P17117347733645969568.Spec := by
  intro n
  simp only [A091096]

end A091096

/-! ## A091096.P10142921407249014524

`25*a(n-2)` with `a(0)=1, a(1)=5, a(2)=-15`
-/

namespace A091096.P10142921407249014524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, -15] fun n a =>
  25 * a (n - 2)

end

end A091096.P10142921407249014524

namespace A091096

/-- `25*a(n-2)` -/
def P10142921407249014524.Spec : Prop :=
  ∀ n, P10142921407249014524.a n = A091096 n

end A091096

/-! ## A091096.P16391017142587853466

`A101553(n)/A084244(n)*A101553(n)`
-/

namespace A091096.P16391017142587853466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101553 n : ℚ) / (A084244 n : ℚ) * (A101553 n : ℚ)

end

end A091096.P16391017142587853466

namespace A091096

/-- `A101553(n)/A084244(n)*A101553(n)` -/
def P16391017142587853466.Spec : Prop :=
  ∀ n, P16391017142587853466.a n = (A091096 n : ℚ)

end A091096

/-! ## A091096.P12621926431066481440

`A101553(n)²/A084244(n)`
-/

namespace A091096.P12621926431066481440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101553 n ^ 2 : ℚ) / (A084244 n : ℚ)

end

end A091096.P12621926431066481440

namespace A091096

/-- `A101553(n)²/A084244(n)` -/
def P12621926431066481440.Spec : Prop :=
  ∀ n, P12621926431066481440.a n = (A091096 n : ℚ)

end A091096

/-!
# A091097: Expansion of (1+6x-60x^2)/((1-6x)(1+6x)).

The programs for A091097, the canonical program `A091097.P18307799064133552216` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091097 has offset 0).

The definition of A091097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x-60x^2)/(1-36x^2))` (program `A091097.P18307799064133552216`, by `A091097.P18307799064133552216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091097.P18307799064133552216

`ogf((1+6x-60x^2)/(1-36x^2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091097

/-- `ogf((1+6x-60x^2)/(1-36x^2))` -/
def P18307799064133552216.Spec : Prop :=
  ∀ n, P18307799064133552216.a n = A091097 n

theorem P18307799064133552216.correct : P18307799064133552216.Spec := by
  intro n
  simp only [A091097]

end A091097

/-! ## A091097.P1125305022739076017

`36*a(n-2)` with `a(0)=1, a(1)=6, a(2)=-24`
-/

namespace A091097.P1125305022739076017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, -24] fun n a =>
  36 * a (n - 2)

end

end A091097.P1125305022739076017

namespace A091097

/-- `36*a(n-2)` -/
def P1125305022739076017.Spec : Prop :=
  ∀ n, P1125305022739076017.a n = A091097 n

end A091097

/-! ## A091097.P3428374877691191187

`a(n-2)/(1/6)²` with `a(0)=1, a(1)=6, a(2)=-24`
-/

namespace A091097.P3428374877691191187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6, -24] fun n a =>
  a (n - 2) / ((1 : ℚ) / 6) ^ 2

end

end A091097.P3428374877691191187

namespace A091097

/-- `a(n-2)/(1/6)²` -/
def P3428374877691191187.Spec : Prop :=
  ∀ n, P3428374877691191187.a n = (A091097 n : ℚ)

end A091097

/-! ## A091097.P16362216741907367415

`A068911(A014601(n))*A123344(n)`
-/

namespace A091097.P16362216741907367415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A014601 n).toNat * A123344 n

end

end A091097.P16362216741907367415

namespace A091097

/-- `A068911(A014601(n))*A123344(n)` -/
def P16362216741907367415.Spec : Prop :=
  ∀ n, P16362216741907367415.a n = A091097 n

end A091097

/-! ## A091097.P1179562069252283017

`2*A000400(n)/A132677(A011782(n))`
-/

namespace A091097.P1179562069252283017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A000400 n : ℚ) / (A132677 (A011782 n).toNat : ℚ))

end

end A091097.P1179562069252283017

namespace A091097

/-- `2*A000400(n)/A132677(A011782(n))` -/
def P1179562069252283017.Spec : Prop :=
  ∀ n, P1179562069252283017.a n = (A091097 n : ℚ)

end A091097

/-!
# A091098: Number of primes of the form 4k+1 less than 10^n.

The programs for A091098, there is no canonical definition to state claims against.
-/

/-! ## A091098.P878249072611998589

`A091099(n+1)-A091295(n+1)`
-/

namespace A091098.P878249072611998589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - A091295 (n + 1)

end

end A091098.P878249072611998589

/-! ## A091098.P12271667688221694260

`A091099(n+1)-(A093153(n+1)+1)`
-/

namespace A091098.P12271667688221694260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091099 (n + 1) - (A093153 (n + 1) + 1)

end

end A091098.P12271667688221694260

/-! ## A091098.P1348091623100737440

`(A093153(n+1)+A006880(n+1))/2-A091295(n+1)`
-/

namespace A091098.P1348091623100737440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093153 (n + 1) + A006880 (n + 1) : ℚ) / 2 - (A091295 (n + 1) : ℚ)

end

end A091098.P1348091623100737440

/-! ## A091098.P3659278515832632740

`A122121(2*(n+1))-((A093153(n+1)+A006880(n+1))/2+1)`
-/

namespace A091098.P3659278515832632740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122121 (2 * (n + 1)) : ℚ) - ((A093153 (n + 1) + A006880 (n + 1) : ℚ) / 2 + 1)

end

end A091098.P3659278515832632740

/-! ## A091098.P4913053022409492779

`A091115(n+1)-A091099(n+1)+A091119(n+1)+1`
-/

namespace A091098.P4913053022409492779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091115 (n + 1) - A091099 (n + 1) + (A091119 (n + 1) + 1)

end

end A091098.P4913053022409492779

/-!
# A091099: Number of primes of the form 4k+3 less than 10^n.

The programs for A091099, there is no canonical definition to state claims against.
-/

/-! ## A091099.P4859943069241630863

`A091295(n+1)+A091098(n+1)`
-/

namespace A091099.P4859943069241630863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091295 (n + 1) + A091098 (n + 1)

end

end A091099.P4859943069241630863

/-! ## A091099.P8029015910506760692

`A091098(n+1)+A093153(n+1)+1`
-/

namespace A091099.P8029015910506760692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091098 (n + 1) + (A093153 (n + 1) + 1)

end

end A091099.P8029015910506760692

/-! ## A091099.P436885436030243427

`(A093153(n+1)+A006880(n+1))/2`
-/

namespace A091099.P436885436030243427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093153 (n + 1) + A006880 (n + 1) : ℚ) / 2

end

end A091099.P436885436030243427

/-! ## A091099.P8969909074410554904

`A091129(n+1)+A091127(n+1)`
-/

namespace A091099.P8969909074410554904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091129 (n + 1) + A091127 (n + 1)

end

end A091099.P8969909074410554904

/-! ## A091099.P7110281470227656247

`A091126(n+1)+A091295(n+1)+A091128(n+1)`
-/

namespace A091099.P7110281470227656247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091126 (n + 1) + (A091295 (n + 1) + A091128 (n + 1))

end

end A091099.P7110281470227656247

