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
import Seq.B000.C037
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A213500: Rectangular array T(n,k): (row n) = b**c, where b(h) = h, c(h) = h + n - 1, n >= 1, h >= 1, and ** = convolution.

The programs for A213500, the canonical program `A213500.P10415559373979276509` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213500 has offset 1).

The definition of A213500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213500.P15118579673542686664

`A213819(n+1)-A213750(n+1)`
-/

namespace A213500.P15118579673542686664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213819 (n + 1) - A213750 (n + 1)

end

end A213500.P15118579673542686664

namespace A213500

/-- `A213819(n+1)-A213750(n+1)` -/
def P15118579673542686664.Spec : Prop :=
  ∀ n, P15118579673542686664.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P13993171131119910346

`A213821(n+1)-A213751(n+1)`
-/

namespace A213500.P13993171131119910346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213821 (n + 1) - A213751 (n + 1)

end

end A213500.P13993171131119910346

namespace A213500

/-- `A213821(n+1)-A213751(n+1)` -/
def P13993171131119910346.Spec : Prop :=
  ∀ n, P13993171131119910346.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P6116542422789388380

`(A213750(n+1)+abs(A122432(n)))/2`
-/

namespace A213500.P6116542422789388380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213750 (n + 1) + |A122432 n| : ℚ) / 2

end

end A213500.P6116542422789388380

namespace A213500

/-- `(A213750(n+1)+abs(A122432(n)))/2` -/
def P6116542422789388380.Spec : Prop :=
  ∀ n, P6116542422789388380.a n = (A213500 (n + 1) : ℚ)

end A213500

/-! ## A213500.P9121069255674266010

`(A104634(n+1)+A104633(n+1))/2`
-/

namespace A213500.P9121069255674266010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104634 (n + 1) + A104633 (n + 1) : ℚ) / 2

end

end A213500.P9121069255674266010

namespace A213500

/-- `(A104634(n+1)+A104633(n+1))/2` -/
def P9121069255674266010.Spec : Prop :=
  ∀ n, P9121069255674266010.a n = (A213500 (n + 1) : ℚ)

end A213500

/-! ## A213500.P15901821072627845072

`(A213751(n+1)+A049777(n+1))/2`
-/

namespace A213500.P15901821072627845072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213751 (n + 1) + A049777 (n + 1) : ℚ) / 2

end

end A213500.P15901821072627845072

namespace A213500

/-- `(A213751(n+1)+A049777(n+1))/2` -/
def P15901821072627845072.Spec : Prop :=
  ∀ n, P15901821072627845072.a n = (A213500 (n + 1) : ℚ)

end A213500

/-! ## A213500.P3994765569523817726

`2*A213548(n+1)-A212891(n+1)`
-/

namespace A213500.P3994765569523817726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213548 (n + 1) - A212891 (n + 1)

end

end A213500.P3994765569523817726

namespace A213500

/-- `2*A213548(n+1)-A212891(n+1)` -/
def P3994765569523817726.Spec : Prop :=
  ∀ n, P3994765569523817726.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P12314553571244870972

`2*A213750(n+1)-A213761(n+1)`
-/

namespace A213500.P12314553571244870972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213750 (n + 1) - A213761 (n + 1)

end

end A213500.P12314553571244870972

namespace A213500

/-- `2*A213750(n+1)-A213761(n+1)` -/
def P12314553571244870972.Spec : Prop :=
  ∀ n, P12314553571244870972.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P11420404207652870528

`2*A213751(n+1)-A213771(n+1)`
-/

namespace A213500.P11420404207652870528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213751 (n + 1) - A213771 (n + 1)

end

end A213500.P11420404207652870528

namespace A213500

/-- `2*A213751(n+1)-A213771(n+1)` -/
def P11420404207652870528.Spec : Prop :=
  ∀ n, P11420404207652870528.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P10415559373979276509

`A104633(n+1)+A000292(A025581(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213500

/-- `A104633(n+1)+A000292(A025581(n))` -/
def P10415559373979276509.Spec : Prop :=
  ∀ n, P10415559373979276509.a n = A213500 (n + 1)

theorem P10415559373979276509.correct : P10415559373979276509.Spec := by
  intro n
  simp only [A213500, Nat.add_sub_cancel]

end A213500

/-! ## A213500.P4064744806953767426

`A104634(n+1)-A000292(A025581(n))`
-/

namespace A213500.P4064744806953767426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) - A000292 (A025581 n).toNat

end

end A213500.P4064744806953767426

namespace A213500

/-- `A104634(n+1)-A000292(A025581(n))` -/
def P4064744806953767426.Spec : Prop :=
  ∀ n, P4064744806953767426.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P15820034941673334968

`(A213750(n+1)+A000217(A004736(n+1)))/2`
-/

namespace A213500.P15820034941673334968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213750 (n + 1) + A000217 (A004736 (n + 1)).toNat : ℚ) / 2

end

end A213500.P15820034941673334968

namespace A213500

/-- `(A213750(n+1)+A000217(A004736(n+1)))/2` -/
def P15820034941673334968.Spec : Prop :=
  ∀ n, P15820034941673334968.a n = (A213500 (n + 1) : ℚ)

end A213500

/-! ## A213500.P13356414566439400244

`A049777(n+1)+A213836(n+1)-A213771(n+1)`
-/

namespace A213500.P13356414566439400244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A213836 (n + 1) - A213771 (n + 1))

end

end A213500.P13356414566439400244

namespace A213500

/-- `A049777(n+1)+A213836(n+1)-A213771(n+1)` -/
def P13356414566439400244.Spec : Prop :=
  ∀ n, P13356414566439400244.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P15314617663985773149

`A177877(A061579(n))`
-/

namespace A213500.P15314617663985773149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 (A061579 n).toNat

end

end A213500.P15314617663985773149

namespace A213500

/-- `A177877(A061579(n))` -/
def P15314617663985773149.Spec : Prop :=
  ∀ n, P15314617663985773149.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P8348270186882481153

`A177877(A114327(n)+n)`
-/

namespace A213500.P8348270186882481153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 (A114327 n + (n : ℤ)).toNat

end

end A213500.P8348270186882481153

namespace A213500

/-- `A177877(A114327(n)+n)` -/
def P8348270186882481153.Spec : Prop :=
  ∀ n, P8348270186882481153.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P5388943237261400933

`A104633(n+1)+A014682(A104634(n+1)-A104633(n+1))`
-/

namespace A213500.P5388943237261400933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A014682 (A104634 (n + 1) - A104633 (n + 1)).toNat

end

end A213500.P5388943237261400933

namespace A213500

/-- `A104633(n+1)+A014682(A104634(n+1)-A104633(n+1))` -/
def P5388943237261400933.Spec : Prop :=
  ∀ n, P5388943237261400933.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P1913360201746675018

`A014682(A104634(n+1)+A104633(n+1))`
-/

namespace A213500.P1913360201746675018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A104634 (n + 1) + A104633 (n + 1)).toNat

end

end A213500.P1913360201746675018

namespace A213500

/-- `A014682(A104634(n+1)+A104633(n+1))` -/
def P1913360201746675018.Spec : Prop :=
  ∀ n, P1913360201746675018.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P15886208425445022611

`A213761(n+1)-A005843(A213835(n+1)-A213761(n+1))`
-/

namespace A213500.P15886208425445022611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213761 (n + 1) - A005843 (A213835 (n + 1) - A213761 (n + 1)).toNat

end

end A213500.P15886208425445022611

namespace A213500

/-- `A213761(n+1)-A005843(A213835(n+1)-A213761(n+1))` -/
def P15886208425445022611.Spec : Prop :=
  ∀ n, P15886208425445022611.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P3218945859755037964

`A104633(n+1)+A004525(A104634(n+1)-A104633(n+1))`
-/

namespace A213500.P3218945859755037964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A004525 (A104634 (n + 1) - A104633 (n + 1)).toNat

end

end A213500.P3218945859755037964

namespace A213500

/-- `A104633(n+1)+A004525(A104634(n+1)-A104633(n+1))` -/
def P3218945859755037964.Spec : Prop :=
  ∀ n, P3218945859755037964.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P14657352158285899524

`A104633(n+1)+A026741(A104634(n+1)-A104633(n+1))`
-/

namespace A213500.P14657352158285899524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A026741 (A104634 (n + 1) - A104633 (n + 1)).toNat

end

end A213500.P14657352158285899524

namespace A213500

/-- `A104633(n+1)+A026741(A104634(n+1)-A104633(n+1))` -/
def P14657352158285899524.Spec : Prop :=
  ∀ n, P14657352158285899524.a n = A213500 (n + 1)

end A213500

/-! ## A213500.P2522206652222715468

`A049777(n+1)+A029578(A213751(n+1)-A049777(n+1))`
-/

namespace A213500.P2522206652222715468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A029578 (A213751 (n + 1) - A049777 (n + 1)).toNat

end

end A213500.P2522206652222715468

namespace A213500

/-- `A049777(n+1)+A029578(A213751(n+1)-A049777(n+1))` -/
def P2522206652222715468.Spec : Prop :=
  ∀ n, P2522206652222715468.a n = A213500 (n + 1)

end A213500

/-!
# A213501: Number of (w,x,y) with all terms in {0,...,n} and w != max(|w-x|, |x-y|).

The programs for A213501, the canonical program `A213501.P17593753589577986138` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213501 has offset 0).

The definition of A213501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213501.P17593753589577986138

`(n+1)^3-A213395(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213501

/-- `(n+1)^3-A213395(n)` -/
def P17593753589577986138.Spec : Prop :=
  ∀ n, P17593753589577986138.a n = A213501 n

theorem P17593753589577986138.correct : P17593753589577986138.Spec := by
  intro n
  simp only [A213501]

end A213501

/-! ## A213501.P15524631932046417675

`A212965(n)+A213498(n)-A213395(n)`
-/

namespace A213501.P15524631932046417675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n + (A213498 n - A213395 n)

end

end A213501.P15524631932046417675

namespace A213501

/-- `A212965(n)+A213498(n)-A213395(n)` -/
def P15524631932046417675.Spec : Prop :=
  ∀ n, P15524631932046417675.a n = A213501 n

end A213501

/-! ## A213501.P13988599332632943368

`A213389(n)+A213390(n)-A213395(n)`
-/

namespace A213501.P13988599332632943368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 n + (A213390 n - A213395 n)

end

end A213501.P13988599332632943368

namespace A213501

/-- `A213389(n)+A213390(n)-A213395(n)` -/
def P13988599332632943368.Spec : Prop :=
  ∀ n, P13988599332632943368.a n = A213501 n

end A213501

/-! ## A213501.P11095614882464363041

`A213391(n)+A213392(n)-A213395(n)`
-/

namespace A213501.P11095614882464363041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 n + (A213392 n - A213395 n)

end

end A213501.P11095614882464363041

namespace A213501

/-- `A213391(n)+A213392(n)-A213395(n)` -/
def P11095614882464363041.Spec : Prop :=
  ∀ n, P11095614882464363041.a n = A213501 n

end A213501

/-! ## A213501.P5014576753632957260

`A213396(n)+A213397(n)-A213395(n)`
-/

namespace A213501.P5014576753632957260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213396 n + (A213397 n - A213395 n)

end

end A213501.P5014576753632957260

namespace A213501

/-- `A213396(n)+A213397(n)-A213395(n)` -/
def P5014576753632957260.Spec : Prop :=
  ∀ n, P5014576753632957260.a n = A213501 n

end A213501

/-! ## A213501.P8031091997294238234

`A213398(n)+A213502(n)-A213395(n)`
-/

namespace A213501.P8031091997294238234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213398 n + (A213502 n - A213395 n)

end

end A213501.P8031091997294238234

namespace A213501

/-- `A213398(n)+A213502(n)-A213395(n)` -/
def P8031091997294238234.Spec : Prop :=
  ∀ n, P8031091997294238234.a n = A213501 n

end A213501

/-! ## A213501.P16642183940077559586

`A213399(n)+A213496(n)-A213395(n)`
-/

namespace A213501.P16642183940077559586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n + (A213496 n - A213395 n)

end

end A213501.P16642183940077559586

namespace A213501

/-- `A213399(n)+A213496(n)-A213395(n)` -/
def P16642183940077559586.Spec : Prop :=
  ∀ n, P16642183940077559586.a n = A213501 n

end A213501

/-! ## A213501.P7951316494152771963

`A213479(n)+A213480(n)-A213395(n)`
-/

namespace A213501.P7951316494152771963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213479 n + (A213480 n - A213395 n)

end

end A213501.P7951316494152771963

namespace A213501

/-- `A213479(n)+A213480(n)-A213395(n)` -/
def P7951316494152771963.Spec : Prop :=
  ∀ n, P7951316494152771963.a n = A213501 n

end A213501

/-! ## A213501.P4593017671038234206

`A213482(n)+A213483(n)-A213395(n)`
-/

namespace A213501.P4593017671038234206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213482 n + (A213483 n - A213395 n)

end

end A213501.P4593017671038234206

namespace A213501

/-- `A213482(n)+A213483(n)-A213395(n)` -/
def P4593017671038234206.Spec : Prop :=
  ∀ n, P4593017671038234206.a n = A213501 n

end A213501

/-! ## A213501.P12612384085579253024

`A213484(n)+A213485(n)-A213395(n)`
-/

namespace A213501.P12612384085579253024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213484 n + (A213485 n - A213395 n)

end

end A213501.P12612384085579253024

namespace A213501

/-- `A213484(n)+A213485(n)-A213395(n)` -/
def P12612384085579253024.Spec : Prop :=
  ∀ n, P12612384085579253024.a n = A213501 n

end A213501

/-! ## A213501.P13399211565682180191

`A213488(n)+A213489(n)-A213395(n)`
-/

namespace A213501.P13399211565682180191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213488 n + (A213489 n - A213395 n)

end

end A213501.P13399211565682180191

namespace A213501

/-- `A213488(n)+A213489(n)-A213395(n)` -/
def P13399211565682180191.Spec : Prop :=
  ∀ n, P13399211565682180191.a n = A213501 n

end A213501

/-! ## A213501.P12083494538572078431

`A213391(n+1)+A213393(n)-A213395(n)`
-/

namespace A213501.P12083494538572078431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213391 (n + 1) + (A213393 n - A213395 n)

end

end A213501.P12083494538572078431

namespace A213501

/-- `A213391(n+1)+A213393(n)-A213395(n)` -/
def P12083494538572078431.Spec : Prop :=
  ∀ n, P12083494538572078431.a n = A213501 n

end A213501

/-!
# A213502: Number of (w,x,y) with all terms in {0,...,n} and x != min(|w-x|, |x-y|).

The programs for A213502, the canonical program `A213502.P3084684928232827676` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213502 has offset 0).

The definition of A213502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213502.P1618269162024901315

`(2*n*(2*n²+4*n+1)-(-1)^n+1)/4`
-/

namespace A213502.P1618269162024901315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n * (2 * n ^ 2 + 4 * n + 1)) : ℤ) - (-1) ^ n + 1 : ℚ) / 4

end

end A213502.P1618269162024901315

namespace A213502

/-- `(2*n*(2*n²+4*n+1)-(-1)^n+1)/4` -/
def P1618269162024901315.Spec : Prop :=
  ∀ n, P1618269162024901315.a n = (A213502 n : ℚ)

theorem P1618269162024901315.correct : P1618269162024901315.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213502, Nat.add_sub_cancel, A213502.P1618269162024901315.a, A213502.P3084684928232827676.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213502, Nat.add_sub_cancel, A213502.P1618269162024901315.a, A213502.P3084684928232827676.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213502

/-! ## A213502.P3084684928232827676

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=17, a(3)=47, a(4)=98`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213502

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3084684928232827676.Spec : Prop :=
  ∀ n, P3084684928232827676.a n = A213502 n

theorem P3084684928232827676.correct : P3084684928232827676.Spec := by
  intro n
  simp only [A213502]

end A213502

/-! ## A213502.P17108971136253233163

`(n+1)^3-A213398(n)`
-/

namespace A213502.P17108971136253233163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213398 n

end

end A213502.P17108971136253233163

namespace A213502

/-- `(n+1)^3-A213398(n)` -/
def P17108971136253233163.Spec : Prop :=
  ∀ n, P17108971136253233163.a n = A213502 n

end A213502

/-! ## A213502.P9035491390438580574

`floor((n+2)*n/cos(atan(n)))`
-/

namespace A213502.P9035491390438580574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * ((n : ℝ) / Real.cos (Real.arctan (n : ℝ)))⌋

end

end A213502.P9035491390438580574

namespace A213502

/-- `floor((n+2)*n/cos(atan(n)))` -/
def P9035491390438580574.Spec : Prop :=
  ∀ n, P9035491390438580574.a n = A213502 n

end A213502

/-! ## A213502.P11160084187292774297

`round(Δ[n^4/4]+C(n, 2))`
-/

namespace A213502.P11160084187292774297
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n + (Nat.choose n 2 : ℚ))

end

end A213502.P11160084187292774297

namespace A213502

/-- `round(Δ[n^4/4]+C(n, 2))` -/
def P11160084187292774297.Spec : Prop :=
  ∀ n, P11160084187292774297.a n = A213502 n

end A213502

/-! ## A213502.P4788879842485366642

`lcm(n, (n+1)²)-floor(n/2)`
-/

namespace A213502.P4788879842485366642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A213502.P4788879842485366642

namespace A213502

/-- `lcm(n, (n+1)²)-floor(n/2)` -/
def P4788879842485366642.Spec : Prop :=
  ∀ n, P4788879842485366642.a n = A213502 n

end A213502

/-! ## A213502.P12789542188607629206

`∑[and(1, n)]+(n+2)*n²`
-/

namespace A213502.P12789542188607629206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2) * n ^ 2

end

end A213502.P12789542188607629206

namespace A213502

/-- `∑[and(1, n)]+(n+2)*n²` -/
def P12789542188607629206.Spec : Prop :=
  ∀ n, (P12789542188607629206.a n : ℤ) = A213502 n

end A213502

/-! ## A213502.P5351376164815432508

`(2*n+1)*n²+1-a(n-1)` with `a(0)=0`
-/

namespace A213502.P5351376164815432508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n + 1) * n ^ 2 : ℤ) + (1 - a (n - 1))

end

end A213502.P5351376164815432508

namespace A213502

/-- `(2*n+1)*n²+1-a(n-1)` -/
def P5351376164815432508.Spec : Prop :=
  ∀ n, P5351376164815432508.a n = A213502 n

end A213502

/-! ## A213502.P6270201819823940695

`A397977(n)+n^3`
-/

namespace A213502.P6270201819823940695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397977 n + (n ^ 3 : ℤ)

end

end A213502.P6270201819823940695

namespace A213502

/-- `A397977(n)+n^3` -/
def P6270201819823940695.Spec : Prop :=
  ∀ n, P6270201819823940695.a n = A213502 n

end A213502

/-! ## A213502.P16241629836034708690

`∑[n]+A212960(n)-n`
-/

namespace A213502.P16241629836034708690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A212960 n - (n : ℤ))

end

end A213502.P16241629836034708690

namespace A213502

/-- `∑[n]+A212960(n)-n` -/
def P16241629836034708690.Spec : Prop :=
  ∀ n, P16241629836034708690.a n = A213502 n

end A213502

/-! ## A213502.P578223796390008922

`round((2*A005563(n)+1)*n/2)`
-/

namespace A213502.P578223796390008922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * A005563 n + 1 : ℚ) * ((n : ℚ) / 2))

end

end A213502.P578223796390008922

namespace A213502

/-- `round((2*A005563(n)+1)*n/2)` -/
def P578223796390008922.Spec : Prop :=
  ∀ n, P578223796390008922.a n = A213502 n

end A213502

/-! ## A213502.P218998277144230950

`round((A000217(2*(n+1))-n-2)*n/2)`
-/

namespace A213502.P218998277144230950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000217 (2 * (n + 1)) - (n : ℤ) - 2 : ℚ) * ((n : ℚ) / 2))

end

end A213502.P218998277144230950

namespace A213502

/-- `round((A000217(2*(n+1))-n-2)*n/2)` -/
def P218998277144230950.Spec : Prop :=
  ∀ n, P218998277144230950.a n = A213502 n

end A213502

/-! ## A213502.P7450944003312504397

`A027444(n)+A014848(n)`
-/

namespace A213502.P7450944003312504397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + A014848 n

end

end A213502.P7450944003312504397

namespace A213502

/-- `A027444(n)+A014848(n)` -/
def P7450944003312504397.Spec : Prop :=
  ∀ n, P7450944003312504397.a n = A213502 n

end A213502

/-! ## A213502.P17786388550765503440

`A059270(n)+A000982(n)`
-/

namespace A213502.P17786388550765503440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A000982 n

end

end A213502.P17786388550765503440

namespace A213502

/-- `A059270(n)+A000982(n)` -/
def P17786388550765503440.Spec : Prop :=
  ∀ n, P17786388550765503440.a n = A213502 n

end A213502

/-! ## A213502.P10975356299780643899

`A087035(n)+A016061(n)`
-/

namespace A213502.P10975356299780643899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087035 n + A016061 n

end

end A213502.P10975356299780643899

namespace A213502

/-- `A087035(n)+A016061(n)` -/
def P10975356299780643899.Spec : Prop :=
  ∀ n, P10975356299780643899.a n = A213502 n

end A213502

/-! ## A213502.P5140418148296136995

`A156859(n)+A085490(n)`
-/

namespace A213502.P5140418148296136995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156859 n + A085490 n

end

end A213502.P5140418148296136995

namespace A213502

/-- `A156859(n)+A085490(n)` -/
def P5140418148296136995.Spec : Prop :=
  ∀ n, P5140418148296136995.a n = A213502 n

end A213502

/-! ## A213502.P5312442835907324801

`A213045(n)+A051925(n)`
-/

namespace A213502.P5312442835907324801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213045 n + A051925 n

end

end A213502.P5312442835907324801

namespace A213502

/-- `A213045(n)+A051925(n)` -/
def P5312442835907324801.Spec : Prop :=
  ∀ n, P5312442835907324801.a n = A213502 n

end A213502

/-! ## A213502.P17850311985561414645

`A212960(n)+A161680(n)`
-/

namespace A213502.P17850311985561414645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n + A161680 n

end

end A213502.P17850311985561414645

namespace A213502

/-- `A212960(n)+A161680(n)` -/
def P17850311985561414645.Spec : Prop :=
  ∀ n, P17850311985561414645.a n = A213502 n

end A213502

/-! ## A213502.P7982329341488009866

`A242135(n)+A139595(n)`
-/

namespace A213502.P7982329341488009866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 n + A139595 n

end

end A213502.P7982329341488009866

namespace A213502

/-- `A242135(n)+A139595(n)` -/
def P7982329341488009866.Spec : Prop :=
  ∀ n, P7982329341488009866.a n = A213502 n

end A213502

/-! ## A213502.P10321727653226100701

`A392105(n)+A006002(n)`
-/

namespace A213502.P10321727653226100701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392105 n + A006002 n

end

end A213502.P10321727653226100701

namespace A213502

/-- `A392105(n)+A006002(n)` -/
def P10321727653226100701.Spec : Prop :=
  ∀ n, P10321727653226100701.a n = A213502 n

end A213502

/-!
# A213503: Rectangular array: (row n) = b**c, where b(h) = h^2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213503, there is no canonical definition to state claims against.
-/

/-! ## A213503.P333784765515515260

`2*A213550(n+1)-A213500(n+1)`
-/

namespace A213503.P333784765515515260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213550 (n + 1) - A213500 (n + 1)

end

end A213503.P333784765515515260

/-! ## A213503.P16898543367687679984

`2*A213561(n+1)-A213505(n+1)`
-/

namespace A213503.P16898543367687679984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213561 (n + 1) - A213505 (n + 1)

end

end A213503.P16898543367687679984

/-! ## A213503.P15250485904347584829

`2*(2*A213551(n+1)-A213564(n+1))-(A213751(n+1)+A049777(n+1))/2`
-/

namespace A213503.P15250485904347584829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (2 * A213551 (n + 1) - A213564 (n + 1)) : ℚ) - (A213751 (n + 1) + A049777 (n + 1) : ℚ) / 2

end

end A213503.P15250485904347584829

/-! ## A213503.P1073446127297766805

`A004277(A213550(n+1))-A213500(n+1)`
-/

namespace A213503.P1073446127297766805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213550 (n + 1)).toNat - A213500 (n + 1)

end

end A213503.P1073446127297766805

/-! ## A213503.P3389934899945835818

`A004277(A213550(n+1))+A213750(n+1)-A213819(n+1)`
-/

namespace A213503.P3389934899945835818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213550 (n + 1)).toNat + (A213750 (n + 1) - A213819 (n + 1))

end

end A213503.P3389934899945835818

/-! ## A213503.P3458677645496748339

`A004277(A213550(n+1))-(A213751(n+1)+A049777(n+1))/2`
-/

namespace A213503.P3458677645496748339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A213550 (n + 1)).toNat : ℚ) - (A213751 (n + 1) + A049777 (n + 1) : ℚ) / 2

end

end A213503.P3458677645496748339

/-! ## A213503.P17838819502902618653

`A004277(A213561(n+1))-A213505(n+1)`
-/

namespace A213503.P17838819502902618653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213561 (n + 1)).toNat - A213505 (n + 1)

end

end A213503.P17838819502902618653

/-!
# A213504: Principal diagonal of the convolution array A213590.

The programs for A213504, there is no canonical definition to state claims against.
-/

/-! ## A213504.P12046018567900405937

`A213590((n+1)²+n²)`
-/

namespace A213504.P12046018567900405937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213590 ((n + 1) ^ 2 + n ^ 2)

end

end A213504.P12046018567900405937

/-! ## A213504.P3698752840800290689

`lcm((-1)^n, A213590(A001844(n)))`
-/

namespace A213504.P3698752840800290689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A213590 (A001844 n).toNat)

end

end A213504.P3698752840800290689

/-! ## A213504.P3700105094950149159

`A165326(n)²*A213590(A001844(n))`
-/

namespace A213504.P3700105094950149159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A213590 (A001844 n).toNat

end

end A213504.P3700105094950149159

/-! ## A213504.P15172025929168341763

`A178334(n+1)*A213590(A001844(n))`
-/

namespace A213504.P15172025929168341763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A213590 (A001844 n).toNat

end

end A213504.P15172025929168341763

/-! ## A213504.P16551711145916484912

`A213590(A001844(n))%A000032(4*n)`
-/

namespace A213504.P16551711145916484912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213590 (A001844 n).toNat) (A000032 (4 * n))

end

end A213504.P16551711145916484912

/-! ## A213504.P17912007752557688507

`and(-A108775(n+1), A213590(A001844(n)))`
-/

namespace A213504.P17912007752557688507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A108775 (n + 1)) (A213590 (A001844 n).toNat)

end

end A213504.P17912007752557688507

/-! ## A213504.P6247431597543280158

`A007318(C(2, n))*A213590(A046092(n)+1)`
-/

namespace A213504.P6247431597543280158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A213590 (A046092 n + 1).toNat

end

end A213504.P6247431597543280158

/-! ## A213504.P16621874346577819459

`A213590(A001844(n))+A000007(A016813(n))`
-/

namespace A213504.P16621874346577819459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213590 (A001844 n).toNat + A000007 (A016813 n).toNat

end

end A213504.P16621874346577819459

/-! ## A213504.P16157185138842170456

`A213590(A001844(n))+A014473(A025442(n))`
-/

namespace A213504.P16157185138842170456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213590 (A001844 n).toNat + A014473 (A025442 n).toNat

end

end A213504.P16157185138842170456

/-! ## A213504.P15219335138717706266

`A008833(A000040(n+1))*A213590(A001844(n))`
-/

namespace A213504.P15219335138717706266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000040 (n + 1)).toNat * A213590 (A001844 n).toNat

end

end A213504.P15219335138717706266

/-!
# A213505: Rectangular array: (row n) = b**c, where b(h) = h^2, c(h) = (n-1+h)^2, n>=1, h>=1, and ** = convolution.

The programs for A213505, there is no canonical definition to state claims against.
-/

/-! ## A213505.P11544453390362462637

`2*A213564(n+1)-A212891(n+1)`
-/

namespace A213505.P11544453390362462637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213564 (n + 1) - A212891 (n + 1)

end

end A213505.P11544453390362462637

/-! ## A213505.P11795064127856493704

`2*A213561(n+1)-A213503(n+1)`
-/

namespace A213505.P11795064127856493704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213561 (n + 1) - A213503 (n + 1)

end

end A213505.P11795064127856493704

/-! ## A213505.P43657452125980630

`A004277(A213564(n+1))-A212891(n+1)`
-/

namespace A213505.P43657452125980630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213564 (n + 1)).toNat - A212891 (n + 1)

end

end A213505.P43657452125980630

/-! ## A213505.P11122856835573510188

`A004277(A213561(n+1))-A213503(n+1)`
-/

namespace A213505.P11122856835573510188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213561 (n + 1)).toNat - A213503 (n + 1)

end

end A213505.P11122856835573510188

/-! ## A213505.P3169018704015084694

`A004277(2*A213551(n+1)-A213550(n+1))-A212891(n+1)`
-/

namespace A213505.P3169018704015084694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A213551 (n + 1) - A213550 (n + 1)).toNat - A212891 (n + 1)

end

end A213505.P3169018704015084694

/-! ## A213505.P13193237048495533527

`A004277(2*A213551(n+1)-A213548(n+1))-A213503(n+1)`
-/

namespace A213505.P13193237048495533527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A213551 (n + 1) - A213548 (n + 1)).toNat - A213503 (n + 1)

end

end A213505.P13193237048495533527

/-! ## A213505.P10248578717830899411

`A004277(A213564(n+1))-(2*A213548(n+1)-A213500(n+1))`
-/

namespace A213505.P10248578717830899411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213564 (n + 1)).toNat - (2 * A213548 (n + 1) - A213500 (n + 1))

end

end A213505.P10248578717830899411

/-!
# A213506: Number of nonisomorphic 2-generator p-groups of class at most 2 and order p^n.

The programs for A213506, the canonical program `A213506.P17613136528562443467` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213506 has offset 0).

The definition of A213506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213506.P9972329386852260257

`∑[A393554(n)]`
-/

namespace A213506.P9972329386852260257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213506.P9972329386852260257

namespace A213506

/-- `∑[A393554(n)]` -/
def P9972329386852260257.Spec : Prop :=
  ∀ n, P9972329386852260257.a n = A213506 n

end A213506

/-! ## A213506.P17613136528562443467

`A001400(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213506

/-- `A001400(n)+a(n-3)` -/
def P17613136528562443467.Spec : Prop :=
  ∀ n, P17613136528562443467.a n = A213506 n

theorem P17613136528562443467.correct : P17613136528562443467.Spec := by
  intro n
  simp only [A213506]

end A213506

/-! ## A213506.P2512138361200841485

`A002621(n)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A213506.P2512138361200841485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002621 n - (a (n - 2) + a (n - 1))

end

end A213506.P2512138361200841485

namespace A213506

/-- `A002621(n)-(a(n-2)+a(n-1))` -/
def P2512138361200841485.Spec : Prop :=
  ∀ n, P2512138361200841485.a n = A213506 n

end A213506

/-! ## A213506.P8516146175422217226

`∑[A029252(2*n)]`
-/

namespace A213506.P8516146175422217226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213506.P8516146175422217226

namespace A213506

/-- `∑[A029252(2*n)]` -/
def P8516146175422217226.Spec : Prop :=
  ∀ n, P8516146175422217226.a n = A213506 n

end A213506

/-! ## A213506.P7465541934215368967

`A029252(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A213506.P7465541934215368967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029252 (n + n) + a (n - 1)

end

end A213506.P7465541934215368967

namespace A213506

/-- `A029252(n+n)+a(n-1)` -/
def P7465541934215368967.Spec : Prop :=
  ∀ n, P7465541934215368967.a n = A213506 n

end A213506

/-! ## A213506.P5310022569503283336

`A037145(2*n)-A026811(n)`
-/

namespace A213506.P5310022569503283336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (2 * n) - A026811 n

end

end A213506.P5310022569503283336

namespace A213506

/-- `A037145(2*n)-A026811(n)` -/
def P5310022569503283336.Spec : Prop :=
  ∀ n, P5310022569503283336.a n = A213506 n

end A213506

/-! ## A213506.P13770853885709441853

`A025853(2*n)+∑[∑[A025853(2*n+1)]]`
-/

namespace A213506.P13770853885709441853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213506.P13770853885709441853

namespace A213506

/-- `A025853(2*n)+∑[∑[A025853(2*n+1)]]` -/
def P13770853885709441853.Spec : Prop :=
  ∀ n, P13770853885709441853.a n = A213506 n

end A213506

/-!
# A213507: E.g.f.: exp( Sum_{n>=1} A000108(n)*x^n/n ), where A000108(n) = binomial(2*n,n)/(n+1) forms the Catalan numbers.

The programs for A213507, there is no canonical definition to state claims against.
-/

/-! ## A213507.P18267083915973471702

`A006902(n)-A006902(n+1)%A006902(n)`
-/

namespace A213507.P18267083915973471702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006902 n - Int.tmod (A006902 (n + 1)) (A006902 n)

end

end A213507.P18267083915973471702

/-! ## A213507.P80673456810307182

`A339607(A303063(n))`
-/

namespace A213507.P80673456810307182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339607 (A303063 n).toNat

end

end A213507.P80673456810307182

/-!
# A213508: The sequence Z(n) arising in the enumeration of balanced binary trees.

The programs for A213508, there is no canonical definition to state claims against.
-/

/-! ## A213508.P13011838730290254402

`∑[char[2^n-1]+a(ceil(n/2)-1)]` with `a(0)=1`
-/

namespace A213508.P13011838730290254402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P13011838730290254402

/-! ## A213508.P14291675934029729396

`∑[A065120(n+1)]`
-/

namespace A213508.P14291675934029729396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P14291675934029729396

/-! ## A213508.P4430858790730656187

`∑[A290255(n+1)+1]`
-/

namespace A213508.P4430858790730656187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P4430858790730656187

/-! ## A213508.P15813994065196145217

`∑[val(A057335(n+1), 2)]`
-/

namespace A213508.P15813994065196145217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057335 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P15813994065196145217

/-! ## A213508.P10188106557253810916

`∑[A241596(n+1)%10]`
-/

namespace A213508.P10188106557253810916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241596 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P10188106557253810916

/-! ## A213508.P15224182329556881979

`∑[A275536(n+1)%10]`
-/

namespace A213508.P15224182329556881979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275536 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P15224182329556881979

/-! ## A213508.P2874223444078190192

`A213509(n+1)+1+n`
-/

namespace A213508.P2874223444078190192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213509 (n + 1) + 1 + (n : ℤ)

end

end A213508.P2874223444078190192

/-! ## A213508.P9632459269760473732

`∑[log2(A187816(n+1))+1]`
-/

namespace A213508.P9632459269760473732
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A187816 (n + 1) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P9632459269760473732

/-! ## A213508.P1733500151374361896

`∑[A000005(A187816(n+1))]`
-/

namespace A213508.P1733500151374361896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A187816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P1733500151374361896

/-! ## A213508.P17673273599101713910

`∑[A001222(A209636(n+1))]`
-/

namespace A213508.P17673273599101713910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A209636 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213508.P17673273599101713910

/-!
# A213509: The sequence Z'(n) arising in the enumeration of balanced binary trees.

The programs for A213509, there is no canonical definition to state claims against.
-/

/-! ## A213509.P13953795000775567463

`∑[char[2^n-1]+a(ceil(n/2)-1)]` with `a(0)=0`
-/

namespace A213509.P13953795000775567463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P13953795000775567463

/-! ## A213509.P8673183827883592741

`∑[A290255(n+1)]`
-/

namespace A213509.P8673183827883592741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P8673183827883592741

/-! ## A213509.P13180573752017592486

`∑[log2(A187816(n+1))]`
-/

namespace A213509.P13180573752017592486
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A187816 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P13180573752017592486

/-! ## A213509.P1781683565922625978

`∑[A065120(n+1)-1]`
-/

namespace A213509.P1781683565922625978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P1781683565922625978

/-! ## A213509.P16020134343800349492

`∑[val(A059893(n+1), 2)]`
-/

namespace A213509.P16020134343800349492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059893 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P16020134343800349492

/-! ## A213509.P18148908577535570246

`∑[val(A139708(n+1), 2)]`
-/

namespace A213509.P18148908577535570246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139708 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P18148908577535570246

/-! ## A213509.P11841247135903201895

`∑[val(A139709(n+1), 2)]`
-/

namespace A213509.P11841247135903201895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139709 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P11841247135903201895

/-! ## A213509.P10257794212089879157

`A213508(n+1)-(n+1)`
-/

namespace A213509.P10257794212089879157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213508 (n + 1) - (n + 1 : ℤ)

end

end A213509.P10257794212089879157

/-! ## A213509.P14971491036493474953

`∑[A001222(A209636(n+1))-1]`
-/

namespace A213509.P14971491036493474953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A209636 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P14971491036493474953

/-! ## A213509.P12481463735917245652

`∑[A001222(A000010(A278541(n+1)))]`
-/

namespace A213509.P12481463735917245652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (A278541 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213509.P12481463735917245652

/-!
# A213510: The sequence N(n) arising in the enumeration of balanced ternary trees.

The programs for A213510, the canonical program `A213510.P10486030267296121756` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213510 has offset 1).

The definition of A213510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213510.P4378718544669459147

`∑[∑[char[floor(3^n/2)]]]`
-/

namespace A213510.P4378718544669459147
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℚ) / 2⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213510.P4378718544669459147

namespace A213510

/-- `∑[∑[char[floor(3^n/2)]]]` -/
def P4378718544669459147.Spec : Prop :=
  ∀ n, (P4378718544669459147.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P14360154544602256346

`∑[a(∑[∑[n]%3]-1)+3]/3` with `a(0)=3`
-/

namespace A213510.P14360154544602256346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A213510.P14360154544602256346

namespace A213510

/-- `∑[a(∑[∑[n]%3]-1)+3]/3` -/
def P14360154544602256346.Spec : Prop :=
  ∀ n, P14360154544602256346.a n = (A213510 (n + 1) : ℚ)

end A213510

/-! ## A213510.P10486030267296121756

`A064099(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213510

/-- `A064099(n)+a(n-1)` -/
def P10486030267296121756.Spec : Prop :=
  ∀ n, P10486030267296121756.a n = A213510 (n + 1)

theorem P10486030267296121756.correct : P10486030267296121756.Spec := by
  intro n
  simp only [A213510, Nat.add_sub_cancel]

end A213510

/-! ## A213510.P10413284796605454724

`A134021(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A213510.P10413284796605454724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134021 (n + 1) + a (n - 1)

end

end A213510.P10413284796605454724

namespace A213510

/-- `A134021(n+1)+a(n-1)` -/
def P10413284796605454724.Spec : Prop :=
  ∀ n, P10413284796605454724.a n = A213510 (n + 1)

end A213510

/-! ## A213510.P5208863756109917871

`∑[∑[char[A000203(3^n)]]]+1+n`
-/

namespace A213510.P5208863756109917871
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A213510.P5208863756109917871

namespace A213510

/-- `∑[∑[char[A000203(3^n)]]]+1+n` -/
def P5208863756109917871.Spec : Prop :=
  ∀ n, (P5208863756109917871.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P9657388511181063225

`A000027(∑[∑[A113047(n)]])`
-/

namespace A213510.P9657388511181063225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213510.P9657388511181063225

namespace A213510

/-- `A000027(∑[∑[A113047(n)]])` -/
def P9657388511181063225.Spec : Prop :=
  ∀ n, P9657388511181063225.a n = A213510 (n + 1)

end A213510

/-! ## A213510.P501030199311880485

`∑{d}[∑[A064099(n)], A000010(#)]`
-/

namespace A213510.P501030199311880485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A213510.P501030199311880485

namespace A213510

/-- `∑{d}[∑[A064099(n)], A000010(#)]` -/
def P501030199311880485.Spec : Prop :=
  ∀ n, P501030199311880485.a n = A213510 (n + 1)

end A213510

/-! ## A213510.P14470160558782439757

`∑[∑[val(A014963(2*n+1), 3)]]+n+1`
-/

namespace A213510.P14470160558782439757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014963 (2 * n + 1)).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A213510.P14470160558782439757

namespace A213510

/-- `∑[∑[val(A014963(2*n+1), 3)]]+n+1` -/
def P14470160558782439757.Spec : Prop :=
  ∀ n, (P14470160558782439757.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P7037099309810903147

`eq[1, A255810(n+2)]+1`
-/

namespace A213510.P7037099309810903147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255810 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213510.P7037099309810903147

namespace A213510

/-- `eq[1, A255810(n+2)]+1` -/
def P7037099309810903147.Spec : Prop :=
  ∀ n, (P7037099309810903147.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P40885388683637938

`eq[A054977(n), A255810(n+1)]`
-/

namespace A213510.P40885388683637938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213510.P40885388683637938

namespace A213510

/-- `eq[A054977(n), A255810(n+1)]` -/
def P40885388683637938.Spec : Prop :=
  ∀ n, (P40885388683637938.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P18029145460875022463

`eq[A057427(n), A255810(n+1)]`
-/

namespace A213510.P18029145460875022463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213510.P18029145460875022463

namespace A213510

/-- `eq[A057427(n), A255810(n+1)]` -/
def P18029145460875022463.Spec : Prop :=
  ∀ n, (P18029145460875022463.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P2236510204337367542

`eq[A158388(n), A255810(n+1)]`
-/

namespace A213510.P2236510204337367542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213510.P2236510204337367542

namespace A213510

/-- `eq[A158388(n), A255810(n+1)]` -/
def P2236510204337367542.Spec : Prop :=
  ∀ n, (P2236510204337367542.a n : ℤ) = A213510 (n + 1)

end A213510

/-! ## A213510.P14533359630832744787

`A007318(∑[n])*∑[A064099(n)]`
-/

namespace A213510.P14533359630832744787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213510.P14533359630832744787

namespace A213510

/-- `A007318(∑[n])*∑[A064099(n)]` -/
def P14533359630832744787.Spec : Prop :=
  ∀ n, P14533359630832744787.a n = A213510 (n + 1)

end A213510

/-!
# A213511: The sequence N'(n) arising in the enumeration of balanced ternary trees.

The programs for A213511, there is no canonical definition to state claims against.
-/

/-! ## A213511.P10291297495033154899

`∑[∑[char[∑[3^n]]]]`
-/

namespace A213511.P10291297495033154899
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213511.P10291297495033154899

/-! ## A213511.P12813479534056132544

`floor(∑[a(floor((n-1)/3))+1])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A213511.P12813479534056132544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 3⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213511.P12813479534056132544

/-! ## A213511.P5820137330300653672

`abs(∑[1-A064099(n)])`
-/

namespace A213511.P5820137330300653672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A213511.P5820137330300653672

/-! ## A213511.P14092270260980818610

`A213510(n+1)-(n+1)`
-/

namespace A213511.P14092270260980818610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213510 (n + 1) - (n + 1 : ℤ)

end

end A213511.P14092270260980818610

/-! ## A213511.P320257588359338422

`A134421(n+1)-(n+2)`
-/

namespace A213511.P320257588359338422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134421 (n + 1) - (n + 2 : ℤ)

end

end A213511.P320257588359338422

/-! ## A213511.P338119726969970803

`eq[1, A255810(n+2)]-n`
-/

namespace A213511.P338119726969970803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255810 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A213511.P338119726969970803

/-! ## A213511.P7240448048516993084

`∑[∑[A113047(n)]]-(n+1)`
-/

namespace A213511.P7240448048516993084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A213511.P7240448048516993084

/-! ## A213511.P6860957399152642368

`∑[∑[char[A003462(n)]]]-(n+1)`
-/

namespace A213511.P6860957399152642368
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A213511.P6860957399152642368

/-!
# A213512: Minimal of max(m,k) (m>=1,k>=0) such that (2*n-1)!!/m+2^k is prime.

The programs for A213512, there is no canonical definition to state claims against.
-/

/-! ## A213512.P13622413536861101124

`A136480(A013631(n)*A153234(n))`
-/

namespace A213512.P13622413536861101124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A013631 n * A153234 n).toNat

end

end A213512.P13622413536861101124

/-! ## A213512.P12790031343746527842

`A290104(A236523(n+1)-A008615(n))`
-/

namespace A213512.P12790031343746527842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A236523 (n + 1) - A008615 n).toNat

end

end A213512.P12790031343746527842

/-!
# A213513: The sequence Z(n) arising in the enumeration of balanced ternary trees.

The programs for A213513, there is no canonical definition to state claims against.
-/

/-! ## A213513.P7524076027135750679

`A220854(n+1)+1+n`
-/

namespace A213513.P7524076027135750679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (n + 1) + 1 + (n : ℤ)

end

end A213513.P7524076027135750679

/-! ## A213513.P4210523943893982207

`∑[A065120(A081608(n)+1)]`
-/

namespace A213513.P4210523943893982207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A081608 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213513.P4210523943893982207

/-! ## A213513.P4453578510184339450

`A199343(A220854(n+1))+n`
-/

namespace A213513.P4453578510184339450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A220854 (n + 1)).toNat + (n : ℤ)

end

end A213513.P4453578510184339450

/-! ## A213513.P330754029808417382

`record[A220854(A008619(n))+A028242(n)]`
-/

namespace A213513.P330754029808417382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (A008619 n).toNat + A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213513.P330754029808417382

/-! ## A213513.P10512508364073431739

`record[A220854(A008619(n))+A110514(n)]`
-/

namespace A213513.P10512508364073431739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (A008619 n).toNat + A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213513.P10512508364073431739

/-! ## A213513.P13379059873350446012

`record[A220854(A008619(n))+A131732(n)]`
-/

namespace A213513.P13379059873350446012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (A008619 n).toNat + A131732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213513.P13379059873350446012

/-! ## A213513.P12270935809871993625

`record[A220854(A133310(n))+A133310(n)]`
-/

namespace A213513.P12270935809871993625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (A133310 n).toNat + A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213513.P12270935809871993625

/-! ## A213513.P5631903655262827605

`record[A220854(A141256(n))+A141256(n)]`
-/

namespace A213513.P5631903655262827605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220854 (A141256 n).toNat + A141256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213513.P5631903655262827605

/-!
# A213514: For composite n, remainder of n - 1 when divided by phi(n), where phi(n) is the totient function (A000010).

The programs for A213514, the canonical program `A213514.P4233426757645372914` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213514 has offset 1).

The definition of A213514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213514.P4233426757645372914

`A233583(A002808(n+1))%A073256(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A213514

/-- `A233583(A002808(n+1))%A073256(n+1)` -/
def P4233426757645372914.Spec : Prop :=
  ∀ n, P4233426757645372914.a n = A213514 (n + 1)

theorem P4233426757645372914.correct : P4233426757645372914.Spec := by
  intro n
  simp only [A213514, Nat.add_sub_cancel]

end A213514

/-! ## A213514.P1095554100587749918

`A215486(lt[1, 2^A215486(n+1)]+1)`
-/

namespace A213514.P1095554100587749918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A215486 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215486 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1)

end

end A213514.P1095554100587749918

namespace A213514

/-- `A215486(lt[1, 2^A215486(n+1)]+1)` -/
def P1095554100587749918.Spec : Prop :=
  ∀ n, P1095554100587749918.a n = A213514 (n + 1)

end A213514

/-! ## A213514.P7989533631594119596

`(A051953(A002808(n+1))+A008683(A075580(n)))%A166362(n+2)`
-/

namespace A213514.P7989533631594119596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051953 (A002808 (n + 1)).toNat + A008683 (A075580 n).toNat) (A166362 (n + 2))

end

end A213514.P7989533631594119596

namespace A213514

/-- `(A051953(A002808(n+1))+A008683(A075580(n)))%A166362(n+2)` -/
def P7989533631594119596.Spec : Prop :=
  ∀ n, P7989533631594119596.a n = A213514 (n + 1)

end A213514

/-!
# A213515: L.g.f.: log( Sum_{n>=0} A000108(n)^2*x^n ) = Sum_{n>=1} a(n)*x^n/n, where A000108(n) = binomial(2*n,n)/(n+1) forms the Catalan numbers.

The programs for A213515, there is no canonical definition to state claims against.
-/

/-! ## A213515.P17689003260224688211

`A233827(n)-A007095(A002275(n))`
-/

namespace A213515.P17689003260224688211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233827 n - A007095 (A002275 n).toNat

end

end A213515.P17689003260224688211

/-!
# A213516: Triangular numbers having only 1 or 2 different digits in base 10.

The programs for A213516, there is no canonical definition to state claims against.
-/

/-! ## A213516.P8038274163187685553

`C(A213517(n+1)+1, 2)`
-/

namespace A213516.P8038274163187685553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213517 (n + 1) + 1).toNat 2

end

end A213516.P8038274163187685553

/-! ## A213516.P13909416887728828658

`∪[A000217(A213517(n+1)), A062691(n+5)]`
-/

namespace A213516.P13909416887728828658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A213517 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062691 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213516.P13909416887728828658

/-! ## A213516.P7280947271289151753

`∪[A062691(n+1), A161680(A213517(n+1)+1)]`
-/

namespace A213516.P7280947271289151753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A213517 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213516.P7280947271289151753

/-! ## A213516.P638718993646299368

`A000217(A213517(n+1))`
-/

namespace A213516.P638718993646299368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A213517 (n + 1)).toNat

end

end A213516.P638718993646299368

/-! ## A213516.P8795481929149461947

`A161680(A213517(n+1)+1)`
-/

namespace A213516.P8795481929149461947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A213517 (n + 1) + 1).toNat

end

end A213516.P8795481929149461947

/-!
# A213517: Numbers n such that the triangular number n*(n+1)/2 has only 1 or 2 different digits in base 10.

The programs for A213517, there is no canonical definition to state claims against.
-/

/-! ## A213517.P1211081694903709133

`lt[A118668(n), 3]`
-/

namespace A213517.P1211081694903709133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A213517.P1211081694903709133

/-! ## A213517.P5721370409851846414

`A080098(A213516(n+1))`
-/

namespace A213517.P5721370409851846414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A213516 (n + 1)).toNat

end

end A213517.P5721370409851846414

/-! ## A213517.P5571297656343181193

`A332351(A213516(n+1)+1)`
-/

namespace A213517.P5571297656343181193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332351 (A213516 (n + 1) + 1).toNat

end

end A213517.P5571297656343181193

/-! ## A213517.P4440009244488559782

`A268715(A213516(n+1)^A289203(2*n+1))`
-/

namespace A213517.P4440009244488559782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268715 (SequenceMachineLib.roundAway ((A213516 (n + 1) : ℚ) ^ (A289203 (2 * n + 1) : ℤ))).toNat

end

end A213517.P4440009244488559782

/-! ## A213517.P13966416607298384687

`A003056(A213516(n+1)+n)`
-/

namespace A213517.P13966416607298384687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A213516 (n + 1) + (n : ℤ)).toNat

end

end A213517.P13966416607298384687

/-!
# A213518: Numbers k such that the triangular number k*(k+1)/2 has 2 different digits in base 10.

The programs for A213518, there is no canonical definition to state claims against.
-/

/-! ## A213518.P15222487333178268206

`floor(sqrt(2*A062691(n+1)))`
-/

namespace A213518.P15222487333178268206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A062691 (n + 1))

end

end A213518.P15222487333178268206

/-! ## A213518.P10463112726988016994

`round(sqrt(2*A062691(n+1)-A057427(n)))`
-/

namespace A213518.P10463112726988016994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A062691 (n + 1) - A057427 n : ℝ))

end

end A213518.P10463112726988016994

/-! ## A213518.P2017047812823659819

`ceil(sqrt(2*A062691(n+1))-A020985(n)²)`
-/

namespace A213518.P2017047812823659819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A062691 (n + 1) : ℝ) - (A020985 n ^ 2 : ℝ)⌉

end

end A213518.P2017047812823659819

/-! ## A213518.P3223330370656396713

`round(sqrt(2*A062691(n+1)-A175851(n+1)))`
-/

namespace A213518.P3223330370656396713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A062691 (n + 1) - A175851 (n + 1) : ℝ))

end

end A213518.P3223330370656396713

/-! ## A213518.P1076876317946662478

`round(sqrt(2*A062691(n+1)-A292777(n+1)))`
-/

namespace A213518.P1076876317946662478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A062691 (n + 1) - A292777 (n + 1) : ℝ))

end

end A213518.P1076876317946662478

/-! ## A213518.P4012199329475438475

`round(sqrt(2*A062691(n+1)))%A309315(n+3)`
-/

namespace A213518.P4012199329475438475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A062691 (n + 1) : ℝ))) (A309315 (n + 3))

end

end A213518.P4012199329475438475

/-!
# A213519: Numbers that are the sum of cubes of distinct primes.

The programs for A213519, there is no canonical definition to state claims against.
-/

/-! ## A213519.P1605939083885567076

`A005064(A019565(n))`
-/

namespace A213519.P1605939083885567076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A019565 n).toNat

end

end A213519.P1605939083885567076

/-! ## A213519.P17284000031707887567

`record[A005064(A275732(n))]`
-/

namespace A213519.P17284000031707887567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A275732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213519.P17284000031707887567

/-! ## A213519.P4278819138931681503

`record[A005064(A275733(n))]`
-/

namespace A213519.P4278819138931681503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A275733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213519.P4278819138931681503

/-! ## A213519.P4827667283302369466

`record[A005064(A275734(n))]`
-/

namespace A213519.P4827667283302369466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A275734 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213519.P4827667283302369466

/-! ## A213519.P1834795521732824907

`record[A005064(A289816(n))]`
-/

namespace A213519.P1834795521732824907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A289816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213519.P1834795521732824907

/-! ## A213519.P11071023331005997781

`record[A005064(A328571(n))]`
-/

namespace A213519.P11071023331005997781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A328571 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213519.P11071023331005997781

/-! ## A213519.P168744102188958178

`A005064(A339809(n)+1)`
-/

namespace A213519.P168744102188958178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A339809 n + 1).toNat

end

end A213519.P168744102188958178

/-! ## A213519.P11234137942630725052

`A224787(A339809(n)+1)`
-/

namespace A213519.P11234137942630725052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (A339809 n + 1).toNat

end

end A213519.P11234137942630725052

/-! ## A213519.P2104805118446087974

`A224787(∏{p}[A019565(n), #])`
-/

namespace A213519.P2104805118446087974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A213519.P2104805118446087974

/-! ## A213519.P10961546977777960146

`A224787(A019565(n)%A000040(n+2)²)`
-/

namespace A213519.P10961546977777960146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (Int.tmod (A019565 n) (A000040 (n + 2) ^ 2)).toNat

end

end A213519.P10961546977777960146

/-!
# A213520: Least number k0 such that (prime(k+1) / prime(k))^n < 2 for all k >= k0.

The programs for A213520, there is no canonical definition to state claims against.
-/

/-! ## A213520.P11422050740878922179

`A000720(A213521(n+1))`
-/

namespace A213520.P11422050740878922179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A213521 (n + 1)).toNat

end

end A213520.P11422050740878922179

/-! ## A213520.P8436410114394304932

`∑{d}[A213521(n+1), A061395(#)]`
-/

namespace A213520.P8436410114394304932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A213520.P8436410114394304932

/-! ## A213520.P13294677047671809683

`A061395(A213521(n+1)%A025397(n+1))`
-/

namespace A213520.P13294677047671809683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A213521 (n + 1)) (A025397 (n + 1))).toNat

end

end A213520.P13294677047671809683

/-! ## A213520.P7102368651069529981

`A061395(A213521(n+1))%A138027(n+1)`
-/

namespace A213520.P7102368651069529981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A213521 (n + 1)).toNat) (A138027 (n + 1))

end

end A213520.P7102368651069529981

/-! ## A213520.P7854559219723565780

`A061395(2*A213521(n+1))`
-/

namespace A213520.P7854559219723565780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A213521 (n + 1)).toNat

end

end A213520.P7854559219723565780

/-! ## A213520.P12088775553829507749

`A061395(lcm(2, A213521(n+1)))`
-/

namespace A213520.P12088775553829507749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A213521 (n + 1)))

end

end A213520.P12088775553829507749

/-! ## A213520.P1275509894756776893

`A061395(A213521(n+1)+A213521(n+1))`
-/

namespace A213520.P1275509894756776893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A213521 (n + 1) + A213521 (n + 1)).toNat

end

end A213520.P1275509894756776893

/-! ## A213520.P3297219825017616004

`A036234(A213521(n+1)-A321126(n))`
-/

namespace A213520.P3297219825017616004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A213521 (n + 1) - A321126 n).toNat

end

end A213520.P3297219825017616004

/-! ## A213520.P1618478647562854649

`A036234(A213521(n+1)-A254574(n))`
-/

namespace A213520.P1618478647562854649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A213521 (n + 1) - A254574 n).toNat

end

end A213520.P1618478647562854649

/-! ## A213520.P11395795658995723881

`A036234(A213521(n+1)-A004736(n+1))`
-/

namespace A213520.P11395795658995723881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A213521 (n + 1) - A004736 (n + 1)).toNat

end

end A213520.P11395795658995723881

/-! ## A213520.P8957220119502951398

`A036234(A213521(n+1)-1)`
-/

namespace A213520.P8957220119502951398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A213521 (n + 1) - 1).toNat

end

end A213520.P8957220119502951398

/-! ## A213520.P15594325305395319608

`A252464(A213521(n+1))*A349124(A045416(n+1))`
-/

namespace A213520.P15594325305395319608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A213521 (n + 1)).toNat * A349124 (A045416 (n + 1)).toNat

end

end A213520.P15594325305395319608

/-!
# A213521: a(n) = prime(A213520(n)).

The programs for A213521, there is no canonical definition to state claims against.
-/

/-! ## A213521.P6641126394358488334

`A000040(A213520(n+1))`
-/

namespace A213521.P6641126394358488334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A213520 (n + 1)).toNat

end

end A213521.P6641126394358488334

/-! ## A213521.P5422009714426070685

`A008578(A213520(n+1)+1)`
-/

namespace A213521.P5422009714426070685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A213520 (n + 1) + 1).toNat

end

end A213521.P5422009714426070685

/-! ## A213521.P18291431391686062910

`A006093(A213520(n+1))+char[A061579(n)]`
-/

namespace A213521.P18291431391686062910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A213520 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A213521.P18291431391686062910

/-! ## A213521.P8530736117788413368

`A006093(A213520(n+1))+A001221(A058341(n+1))`
-/

namespace A213521.P8530736117788413368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A213520 (n + 1)).toNat + A001221 (A058341 (n + 1)).toNat

end

end A213521.P8530736117788413368

/-! ## A213521.P8312588980211147644

`A006093(A213520(n+1))+A001222(A065091(n+1))`
-/

namespace A213521.P8312588980211147644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A213520 (n + 1)).toNat + A001222 (A065091 (n + 1)).toNat

end

end A213521.P8312588980211147644

/-! ## A213521.P13490480737207264898

`A006093(A213520(n+1))+A001221(A290394(n+1))`
-/

namespace A213521.P13490480737207264898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A213520 (n + 1)).toNat + A001221 (A290394 (n + 1)).toNat

end

end A213521.P13490480737207264898

/-!
# A213522: Primes occurring in A213521.

The programs for A213522, there is no canonical definition to state claims against.
-/

/-! ## A213522.P15619130860248657958

`record[A213521(A053261(n))]`
-/

namespace A213522.P15619130860248657958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213521 (A053261 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213522.P15619130860248657958

/-! ## A213522.P5195548815236111587

`record[A213521(A133310(n))]`
-/

namespace A213522.P5195548815236111587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213521 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213522.P5195548815236111587

/-! ## A213522.P13106319247417481611

`record[A213521(A152271(n))]`
-/

namespace A213522.P13106319247417481611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213521 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213522.P13106319247417481611

/-! ## A213522.P8809183655112253970

`record[A213521(A286544(n))]`
-/

namespace A213522.P8809183655112253970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213521 (A286544 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213522.P8809183655112253970

/-! ## A213522.P8749770516919969029

`record[A213521(A291769(n))]`
-/

namespace A213522.P8749770516919969029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213521 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213522.P8749770516919969029

/-!
# A213523: Numbers not representable as the sum of three heptagonal numbers.

The programs for A213523, there is no canonical definition to state claims against.
-/

/-! ## A213523.P9633476323952016536

`lt[3, A338480(n+1)]+1`
-/

namespace A213523.P9633476323952016536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213523.P9633476323952016536

/-! ## A213523.P17585632407053108398

`lt[3, A338480(A028310(n))]`
-/

namespace A213523.P17585632407053108398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213523.P17585632407053108398

/-! ## A213523.P84174790149663312

`A020725(lt[3, A338480(n+1)])`
-/

namespace A213523.P84174790149663312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213523.P84174790149663312

/-! ## A213523.P3995773522049985911

`A114637(lt[3, A338480(n+1)])`
-/

namespace A213523.P3995773522049985911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213523.P3995773522049985911

/-! ## A213523.P6099151357105157663

`lt[3, A338480(A233583(n+1))]`
-/

namespace A213523.P6099151357105157663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213523.P6099151357105157663

/-! ## A213523.P11435682232588791703

`A326178(lt[3, A338480(n+1)])`
-/

namespace A213523.P11435682232588791703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213523.P11435682232588791703

/-!
# A213524: Numbers not representable as the sum of three octagonal numbers.

The programs for A213524, there is no canonical definition to state claims against.
-/

/-! ## A213524.P16786778673550957272

`lt[3, A338481(n+1)]+1`
-/

namespace A213524.P16786778673550957272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213524.P16786778673550957272

/-! ## A213524.P16229426100699530017

`lt[3, A338481(A028310(n))]`
-/

namespace A213524.P16229426100699530017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213524.P16229426100699530017

/-! ## A213524.P9498884982384539428

`A020725(lt[3, A338481(n+1)])`
-/

namespace A213524.P9498884982384539428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213524.P9498884982384539428

/-! ## A213524.P9611897163755428303

`A114637(lt[3, A338481(n+1)])`
-/

namespace A213524.P9611897163755428303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213524.P9611897163755428303

/-! ## A213524.P17754077090457733943

`lt[3, A338481(A233583(n+1))]`
-/

namespace A213524.P17754077090457733943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213524.P17754077090457733943

/-! ## A213524.P5456942982153332758

`A326178(lt[3, A338481(n+1)])`
-/

namespace A213524.P5456942982153332758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A213524.P5456942982153332758

/-!
# A213525: Numbers not representable as the sum of three 9-gonal numbers.

The programs for A213525, there is no canonical definition to state claims against.
-/

/-! ## A213525.P12539959919507240890

`lt[n/9, A155043(comp[5*n]%(n+1))]`
-/

namespace A213525.P12539959919507240890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A213525.P12539959919507240890

/-! ## A213525.P7063412505839447857

`lt[n/9, A155043(A002265(n))]`
-/

namespace A213525.P7063412505839447857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155043 (A002265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A213525.P7063412505839447857

/-! ## A213525.P13936468546187420343

`lt[A136258(n), A136240(A136248(n+1))]`
-/

namespace A213525.P13936468546187420343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (A136248 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213525.P13936468546187420343

/-! ## A213525.P13871146274760804058

`lt[A242175(n+1), A349143(A008805(n))]`
-/

namespace A213525.P13871146274760804058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349143 (A008805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213525.P13871146274760804058

/-!
# A213526: a(n) = 3*n AND n, where AND is the bitwise AND operator.

The programs for A213526, the canonical program `A213526.P11065947320393533941` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213526 has offset 0).

The definition of A213526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213526.P11065947320393533941

`and(n, 3*n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213526

/-- `and(n, 3*n)` -/
def P11065947320393533941.Spec : Prop :=
  ∀ n, (P11065947320393533941.a n : ℤ) = A213526 n

theorem P11065947320393533941.correct : P11065947320393533941.Spec := by
  intro n
  simp only [A213526]

end A213526

/-! ## A213526.P16351308037987598584

`4*n-or(n, 3*n)`
-/

namespace A213526.P16351308037987598584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.lor n (3 * n) : ℤ)

end

end A213526.P16351308037987598584

namespace A213526

/-- `4*n-or(n, 3*n)` -/
def P16351308037987598584.Spec : Prop :=
  ∀ n, P16351308037987598584.a n = A213526 n

end A213526

/-! ## A213526.P1284883180159060806

`2*n-xor(n, 3*n)/2`
-/

namespace A213526.P1284883180159060806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Nat.xor n (3 * n) : ℚ) / 2

end

end A213526.P1284883180159060806

namespace A213526

/-- `2*n-xor(n, 3*n)/2` -/
def P1284883180159060806.Spec : Prop :=
  ∀ n, P1284883180159060806.a n = (A213526 n : ℚ)

end A213526

/-! ## A213526.P9814227916037676984

`abs(or(abs(or(3*n, -n)), -n))`
-/

namespace A213526.P9814227916037676984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lor |Int.lor (3 * n : ℤ) (-(n : ℤ))| (-(n : ℤ)))|

end

end A213526.P9814227916037676984

namespace A213526

/-- `abs(or(abs(or(3*n, -n)), -n))` -/
def P9814227916037676984.Spec : Prop :=
  ∀ n, P9814227916037676984.a n = A213526 n

end A213526

/-! ## A213526.P3060220205968691107

`or(3*n, -(n+1))+n+1`
-/

namespace A213526.P3060220205968691107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (3 * n : ℤ) (-(n + 1 : ℤ)) + (n + 1 : ℤ)

end

end A213526.P3060220205968691107

namespace A213526

/-- `or(3*n, -(n+1))+n+1` -/
def P3060220205968691107.Spec : Prop :=
  ∀ n, P3060220205968691107.a n = A213526 n

end A213526

/-! ## A213526.P14132703349774476426

`and(n-1+n+n, n-1)+1`
-/

namespace A213526.P14132703349774476426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1 + (n : ℤ) + (n : ℤ)) ((n : ℤ) - 1) + 1

end

end A213526.P14132703349774476426

namespace A213526

/-- `and(n-1+n+n, n-1)+1` -/
def P14132703349774476426.Spec : Prop :=
  ∀ n, P14132703349774476426.a n = A213526 n

end A213526

/-! ## A213526.P6197904647277437006

`2*n-A184617(n)`
-/

namespace A213526.P6197904647277437006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A184617 n

end

end A213526.P6197904647277437006

namespace A213526

/-- `2*n-A184617(n)` -/
def P6197904647277437006.Spec : Prop :=
  ∀ n, P6197904647277437006.a n = A213526 n

end A213526

/-! ## A213526.P372984989565193159

`4*n-A178890(n)`
-/

namespace A213526.P372984989565193159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A178890 n

end

end A213526.P372984989565193159

namespace A213526

/-- `4*n-A178890(n)` -/
def P372984989565193159.Spec : Prop :=
  ∀ n, P372984989565193159.a n = A213526 n

end A213526

/-! ## A213526.P16983180059091838910

`A178890(n)-A178729(n)`
-/

namespace A213526.P16983180059091838910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178890 n - A178729 n

end

end A213526.P16983180059091838910

namespace A213526

/-- `A178890(n)-A178729(n)` -/
def P16983180059091838910.Spec : Prop :=
  ∀ n, P16983180059091838910.a n = A213526 n

end A213526

/-! ## A213526.P4783086096705361152

`n-A184615(A184617(n)-n)`
-/

namespace A213526.P4783086096705361152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A184615 (A184617 n - (n : ℤ)).toNat

end

end A213526.P4783086096705361152

namespace A213526

/-- `n-A184615(A184617(n)-n)` -/
def P4783086096705361152.Spec : Prop :=
  ∀ n, P4783086096705361152.a n = A213526 n

end A213526

/-! ## A213526.P18170693673895060766

`n-2*A184616(n)`
-/

namespace A213526.P18170693673895060766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A184616 n

end

end A213526.P18170693673895060766

namespace A213526

/-- `n-2*A184616(n)` -/
def P18170693673895060766.Spec : Prop :=
  ∀ n, P18170693673895060766.a n = A213526 n

end A213526

/-! ## A213526.P15075453963390981952

`n-A178729(A184616(n))`
-/

namespace A213526.P15075453963390981952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A178729 (A184616 n).toNat

end

end A213526.P15075453963390981952

namespace A213526

/-- `n-A178729(A184616(n))` -/
def P15075453963390981952.Spec : Prop :=
  ∀ n, P15075453963390981952.a n = A213526 n

end A213526

/-! ## A213526.P7944372240812058325

`n-A178729(A184615(n)-n)`
-/

namespace A213526.P7944372240812058325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A178729 (A184615 n - (n : ℤ)).toNat

end

end A213526.P7944372240812058325

namespace A213526

/-- `n-A178729(A184615(n)-n)` -/
def P7944372240812058325.Spec : Prop :=
  ∀ n, P7944372240812058325.a n = A213526 n

end A213526

/-! ## A213526.P2163899716861424701

`A184615(n)-A048724(A184616(n))`
-/

namespace A213526.P2163899716861424701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 n - A048724 (A184616 n).toNat

end

end A213526.P2163899716861424701

namespace A213526

/-- `A184615(n)-A048724(A184616(n))` -/
def P2163899716861424701.Spec : Prop :=
  ∀ n, P2163899716861424701.a n = A213526 n

end A213526

/-! ## A213526.P17355714452827826379

`A026741(and(A022998(n), A165988(n)))`
-/

namespace A213526.P17355714452827826379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (A022998 n) (A165988 n)).toNat

end

end A213526.P17355714452827826379

namespace A213526

/-- `A026741(and(A022998(n), A165988(n)))` -/
def P17355714452827826379.Spec : Prop :=
  ∀ n, P17355714452827826379.a n = A213526 n

end A213526

/-! ## A213526.P2332079215233688663

`A026741(and(A022998(n), A298028(n)))`
-/

namespace A213526.P2332079215233688663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (A022998 n) (A298028 n)).toNat

end

end A213526.P2332079215233688663

namespace A213526

/-- `A026741(and(A022998(n), A298028(n)))` -/
def P2332079215233688663.Spec : Prop :=
  ∀ n, P2332079215233688663.a n = A213526 n

end A213526

/-! ## A213526.P2822085250070346744

`xor(n, A184616(2*n))`
-/

namespace A213526.P2822085250070346744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A184616 (2 * n))

end

end A213526.P2822085250070346744

namespace A213526

/-- `xor(n, A184616(2*n))` -/
def P2822085250070346744.Spec : Prop :=
  ∀ n, P2822085250070346744.a n = A213526 n

end A213526

/-! ## A213526.P4800435810372559075

`n-A184616(n+n)`
-/

namespace A213526.P4800435810372559075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A184616 (n + n)

end

end A213526.P4800435810372559075

namespace A213526

/-- `n-A184616(n+n)` -/
def P4800435810372559075.Spec : Prop :=
  ∀ n, P4800435810372559075.a n = A213526 n

end A213526

/-! ## A213526.P7499240427485955363

`A047215(n)-A178746(n)`
-/

namespace A213526.P7499240427485955363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n - A178746 n

end

end A213526.P7499240427485955363

namespace A213526

/-- `A047215(n)-A178746(n)` -/
def P7499240427485955363.Spec : Prop :=
  ∀ n, P7499240427485955363.a n = A213526 n

end A213526

/-! ## A213526.P17305650370985518027

`A080099(A062725(n))`
-/

namespace A213526.P17305650370985518027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (A062725 n).toNat

end

end A213526.P17305650370985518027

namespace A213526

/-- `A080099(A062725(n))` -/
def P17305650370985518027.Spec : Prop :=
  ∀ n, P17305650370985518027.a n = A213526 n

end A213526

/-!
# A213527: E.g.f.: exp( Sum_{n>=1} Fibonacci(n+1)*x^n/n ), where Fibonacci(n) = A000045(n).

The programs for A213527, there is no canonical definition to state claims against.
-/

/-! ## A213527.P9048201508631434448

`∏[(1-n)²/a(n-1)+n]` with `a(0)=1`
-/

namespace A213527.P9048201508631434448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213527.P9048201508631434448

/-! ## A213527.P9041396151479071727

`a(n-1)/n^(-1)+a(n-2)/(1-n)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A213527.P9041396151479071727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) + a (n - 2) / (1 - (n : ℤ) : ℚ) ^ (-2 : ℤ)

end

end A213527.P9041396151479071727

/-! ## A213527.P9266492426131504217

`a(n-1)+(a(n-1)+(n-1)*a(n-2))*(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A213527.P9266492426131504217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) * ((n : ℤ) - 1)

end

end A213527.P9266492426131504217

/-!
# A213528: E.g.f.: exp( Sum_{n>=1} Pell(n+1)*x^n/n ), where Pell(n) = A000129(n).

The programs for A213528, there is no canonical definition to state claims against.
-/

/-! ## A213528.P11962760615690593217

`∏[(1-n)²/a(n-1)+2*n]` with `a(0)=1`
-/

namespace A213528.P11962760615690593217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / f1 (n - 1) + (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213528.P11962760615690593217

/-! ## A213528.P7492812603662380538

`A285500((n+1)*a(n-1)+1)-1` with `a(0)=1`
-/

namespace A213528.P7492812603662380538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285500 ((n + 1 : ℤ) * a (n - 1) + 1).toNat - 1

end

end A213528.P7492812603662380538

/-!
# A213533: Number of k < 10^n such that A047988(k) = 4.

The programs for A213533, there is no canonical definition to state claims against.
-/

/-! ## A213533.P15698496796371119723

`A079691(floor(A288911(n)/A112250(n+1)))`
-/

namespace A213533.P15698496796371119723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079691 ⌊(A288911 n : ℚ) / (A112250 (n + 1) : ℚ)⌋.toNat

end

end A213533.P15698496796371119723

/-! ## A213533.P6140401019443184903

`∑[A027870(A362907(n))]`
-/

namespace A213533.P6140401019443184903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A362907 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213533.P6140401019443184903

/-! ## A213533.P15329979183539010649

`A332898(A143684(n)+1)`
-/

namespace A213533.P15329979183539010649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (A143684 n + 1).toNat

end

end A213533.P15329979183539010649

/-! ## A213533.P18346407281819466079

`A025437(or(1, A193318(n)))`
-/

namespace A213533.P18346407281819466079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (Int.lor 1 (A193318 n)).toNat

end

end A213533.P18346407281819466079

/-! ## A213533.P5018383259791643043

`A279329(xor(15, A166989(n)))`
-/

namespace A213533.P5018383259791643043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (Int.xor 15 (A166989 n)).toNat

end

end A213533.P5018383259791643043

/-!
# A213536: Cousin prime recurrence sequence: a(1) = 14, and for n > 1, a(n) = a(n-1) + gcd(n+5, a(n-1)), if n is even, otherwise a(n) = a(n-1) + gcd(n+1, a(n-1)).

The programs for A213536, there is no canonical definition to state claims against.
-/

/-! ## A213536.P8273117984960854237

`A167170(n+6)+A102683(A052302(n))`
-/

namespace A213536.P8273117984960854237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167170 (n + 6) + A102683 (A052302 n).toNat

end

end A213536.P8273117984960854237

/-! ## A213536.P18391641930012598574

`A167170(n+6)+A006002(A172535(n+1))`
-/

namespace A213536.P18391641930012598574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167170 (n + 6) + A006002 (A172535 (n + 1)).toNat

end

end A213536.P18391641930012598574

/-!
# A213537: Record first differences of base sequence A213536 (a cousin prime recurrence sequence).

The programs for A213537, there is no canonical definition to state claims against.
-/

/-! ## A213537.P3850450878904776278

`A145897(A337762(n)+1+n)`
-/

namespace A213537.P3850450878904776278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145897 (A337762 n + 1 + (n : ℤ)).toNat

end

end A213537.P3850450878904776278

/-! ## A213537.P11726486831306053972

`A272409(A298913(n+2)+n)`
-/

namespace A213537.P11726486831306053972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (A298913 (n + 2) + (n : ℤ)).toNat

end

end A213537.P11726486831306053972

/-!
# A213539: Numbers for which there is at least one 3-smooth representation that is special of level k.

The programs for A213539, there is no canonical definition to state claims against.
-/

/-! ## A213539.P12768956684686906977

`eq[1, char[A119733(n+1)]]`
-/

namespace A213539.P12768956684686906977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213539.P12768956684686906977

/-! ## A213539.P9848926111103598322

`eq[char[A119733(n)], A054977(n)]`
-/

namespace A213539.P9848926111103598322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A213539.P9848926111103598322

/-! ## A213539.P4633666296910470771

`eq[char[A119733(n)], A057427(n)]`
-/

namespace A213539.P4633666296910470771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A213539.P4633666296910470771

/-! ## A213539.P10016625630723310242

`record[A028310(n*char[A119733(n)])]`
-/

namespace A213539.P10016625630723310242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213539.P10016625630723310242

/-! ## A213539.P7806662033458499050

`eq[char[A119733(n)], A178334(n)]`
-/

namespace A213539.P7806662033458499050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A213539.P7806662033458499050

/-!
# A213540: Numbers k such that k AND k*2 = 2, where AND is the bitwise AND operator.

The programs for A213540, the canonical program `A213540.P1206337804366464910` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213540 has offset 1).

The definition of A213540 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213540.P1206337804366464910

`A003714(n)*8+3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A213540

/-- `A003714(n)*8+3` -/
def P1206337804366464910.Spec : Prop :=
  ∀ n, P1206337804366464910.a n = A213540 (n + 1)

theorem P1206337804366464910.correct : P1206337804366464910.Spec := by
  intro n
  simp only [A213540, Nat.add_sub_cancel]

end A213540

/-! ## A213540.P2078198846626860869

`2*A022341(n)+1`
-/

namespace A213540.P2078198846626860869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022341 n + 1

end

end A213540.P2078198846626860869

namespace A213540

/-- `2*A022341(n)+1` -/
def P2078198846626860869.Spec : Prop :=
  ∀ n, P2078198846626860869.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P4335041079257519483

`4*A118113(n)-1`
-/

namespace A213540.P4335041079257519483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A118113 n - 1

end

end A213540.P4335041079257519483

namespace A213540

/-- `4*A118113(n)-1` -/
def P4335041079257519483.Spec : Prop :=
  ∀ n, P4335041079257519483.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P430671104087050254

`4*A022340(n)+3`
-/

namespace A213540.P430671104087050254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022340 n + 3

end

end A213540.P430671104087050254

namespace A213540

/-- `4*A022340(n)+3` -/
def P430671104087050254.Spec : Prop :=
  ∀ n, P430671104087050254.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P16021774621041999531

`A118113(n)+2*A048297(n)`
-/

namespace A213540.P16021774621041999531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n + 2 * A048297 n

end

end A213540.P16021774621041999531

namespace A213540

/-- `A118113(n)+2*A048297(n)` -/
def P16021774621041999531.Spec : Prop :=
  ∀ n, P16021774621041999531.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P16826769173027091512

`4*(A022341(n)-A022340(n))-1`
-/

namespace A213540.P16826769173027091512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A022341 n - A022340 n) - 1

end

end A213540.P16826769173027091512

namespace A213540

/-- `4*(A022341(n)-A022340(n))-1` -/
def P16826769173027091512.Spec : Prop :=
  ∀ n, P16826769173027091512.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P11505296664668797931

`A022341(n)+A118113(n)+A118113(n)`
-/

namespace A213540.P11505296664668797931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n + (A118113 n + A118113 n)

end

end A213540.P11505296664668797931

namespace A213540

/-- `A022341(n)+A118113(n)+A118113(n)` -/
def P11505296664668797931.Spec : Prop :=
  ∀ n, P11505296664668797931.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P4841946724575336092

`A022341(A022342(n+1))+2`
-/

namespace A213540.P4841946724575336092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 (A022342 (n + 1)).toNat + 2

end

end A213540.P4841946724575336092

namespace A213540

/-- `A022341(A022342(n+1))+2` -/
def P4841946724575336092.Spec : Prop :=
  ∀ n, P4841946724575336092.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P1023383116583295196

`4*record[and(2*n, -n)]+3`
-/

namespace A213540.P1023383116583295196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A213540.P1023383116583295196

namespace A213540

/-- `4*record[and(2*n, -n)]+3` -/
def P1023383116583295196.Spec : Prop :=
  ∀ n, P1023383116583295196.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P4661986228893646049

`record[3*xor(n, 2*n)-(n-3)]`
-/

namespace A213540.P4661986228893646049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor n (2 * n) : ℤ) - ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213540.P4661986228893646049

namespace A213540

/-- `record[3*xor(n, 2*n)-(n-3)]` -/
def P4661986228893646049.Spec : Prop :=
  ∀ n, P4661986228893646049.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P1219930289446630230

`4*record[xor(n, or(n, 2*n))]+3`
-/

namespace A213540.P1219930289446630230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3

end

end A213540.P1219930289446630230

namespace A213540

/-- `4*record[xor(n, or(n, 2*n))]+3` -/
def P1219930289446630230.Spec : Prop :=
  ∀ n, (P1219930289446630230.a n : ℤ) = A213540 (n + 1)

end A213540

/-! ## A213540.P670528053535594795

`record[2*(xor(n, 2*n)+1+n)+1]`
-/

namespace A213540.P670528053535594795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.xor n (2 * n) + 1 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213540.P670528053535594795

namespace A213540

/-- `record[2*(xor(n, 2*n)+1+n)+1]` -/
def P670528053535594795.Spec : Prop :=
  ∀ n, (P670528053535594795.a n : ℤ) = A213540 (n + 1)

end A213540

/-! ## A213540.P2356034505490559270

`A118113(A003622(n+1))`
-/

namespace A213540.P2356034505490559270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 (A003622 (n + 1)).toNat

end

end A213540.P2356034505490559270

namespace A213540

/-- `A118113(A003622(n+1))` -/
def P2356034505490559270.Spec : Prop :=
  ∀ n, P2356034505490559270.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P13102170070502964023

`record[xor(n+1, 2*n)+2+n]`
-/

namespace A213540.P13102170070502964023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * n) + 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213540.P13102170070502964023

namespace A213540

/-- `record[xor(n+1, 2*n)+2+n]` -/
def P13102170070502964023.Spec : Prop :=
  ∀ n, (P13102170070502964023.a n : ℤ) = A213540 (n + 1)

end A213540

/-! ## A213540.P15422581740932177168

`record[2*(or(n+1, 2*n)-n)+1]`
-/

namespace A213540.P15422581740932177168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor (n + 1) (2 * n) : ℤ) - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213540.P15422581740932177168

namespace A213540

/-- `record[2*(or(n+1, 2*n)-n)+1]` -/
def P15422581740932177168.Spec : Prop :=
  ∀ n, P15422581740932177168.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P12628209289563377491

`record[and(3*or(1, n)+n, 6*n+3)]`
-/

namespace A213540.P12628209289563377491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 * Nat.lor 1 n + n) (6 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213540.P12628209289563377491

namespace A213540

/-- `record[and(3*or(1, n)+n, 6*n+3)]` -/
def P12628209289563377491.Spec : Prop :=
  ∀ n, (P12628209289563377491.a n : ℤ) = A213540 (n + 1)

end A213540

/-! ## A213540.P17819865383607492437

`record[xor(n+2, n+2+n)+n+3]`
-/

namespace A213540.P17819865383607492437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) (n + 2 + n) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213540.P17819865383607492437

namespace A213540

/-- `record[xor(n+2, n+2+n)+n+3]` -/
def P17819865383607492437.Spec : Prop :=
  ∀ n, (P17819865383607492437.a n : ℤ) = A213540 (n + 1)

end A213540

/-! ## A213540.P5308655552004014507

`∩[A003714(n)+2, A118113(n)]`
-/

namespace A213540.P5308655552004014507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213540.P5308655552004014507

namespace A213540

/-- `∩[A003714(n)+2, A118113(n)]` -/
def P5308655552004014507.Spec : Prop :=
  ∀ n, (P5308655552004014507.a n : ℤ) = A213540 (n + 1)

end A213540

/-! ## A213540.P5940091504965568136

`A003714(A035336(n+1)-1)+2`
-/

namespace A213540.P5940091504965568136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A035336 (n + 1) - 1).toNat + 2

end

end A213540.P5940091504965568136

namespace A213540

/-- `A003714(A035336(n+1)-1)+2` -/
def P5940091504965568136.Spec : Prop :=
  ∀ n, P5940091504965568136.a n = A213540 (n + 1)

end A213540

/-! ## A213540.P12988827716422176801

`A003714(A035336(n+1))+1`
-/

namespace A213540.P12988827716422176801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A035336 (n + 1)).toNat + 1

end

end A213540.P12988827716422176801

namespace A213540

/-- `A003714(A035336(n+1))+1` -/
def P12988827716422176801.Spec : Prop :=
  ∀ n, P12988827716422176801.a n = A213540 (n + 1)

end A213540

/-!
# A213541: a(n) = n AND n^2, where AND is the bitwise AND operator.

The programs for A213541, the canonical program `A213541.P3182135842389523473` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213541 has offset 0).

The definition of A213541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213541.P3182135842389523473

`and(n, n²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213541

/-- `and(n, n²)` -/
def P3182135842389523473.Spec : Prop :=
  ∀ n, (P3182135842389523473.a n : ℤ) = A213541 n

theorem P3182135842389523473.correct : P3182135842389523473.Spec := by
  intro n
  simp only [A213541]

end A213541

/-! ## A213541.P5276162354533538390

`or(and(n, n^2), char[1])`
-/

namespace A213541.P5276162354533538390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.land n (n ^ 2)) (if ∃ j, f1 j = n then 1 else 0)

end

end A213541.P5276162354533538390

namespace A213541

/-- `or(and(n, n^2), char[1])` -/
def P5276162354533538390.Spec : Prop :=
  ∀ n, (P5276162354533538390.a n : ℤ) = A213541 n

end A213541

/-! ## A213541.P9599114569748754867

`and(n, n^2)%(n+1)`
-/

namespace A213541.P9599114569748754867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n ^ 2) % (n + 1)

end

end A213541.P9599114569748754867

namespace A213541

/-- `and(n, n^2)%(n+1)` -/
def P9599114569748754867.Spec : Prop :=
  ∀ n, (P9599114569748754867.a n : ℤ) = A213541 n

end A213541

/-! ## A213541.P18403579747950263806

`∑[2*n]-or(n, n²)`
-/

namespace A213541.P18403579747950263806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lor n (n ^ 2) : ℤ)

end

end A213541.P18403579747950263806

namespace A213541

/-- `∑[2*n]-or(n, n²)` -/
def P18403579747950263806.Spec : Prop :=
  ∀ n, P18403579747950263806.a n = A213541 n

end A213541

/-! ## A213541.P12504878750749149343

`or(1-n, n²)+n-1`
-/

namespace A213541.P12504878750749149343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (n : ℤ)) (n ^ 2 : ℤ) + ((n : ℤ) - 1)

end

end A213541.P12504878750749149343

namespace A213541

/-- `or(1-n, n²)+n-1` -/
def P12504878750749149343.Spec : Prop :=
  ∀ n, P12504878750749149343.a n = A213541 n

end A213541

/-! ## A213541.P16475098934012037173

`(n*or(n, n²))%(n+1)`
-/

namespace A213541.P16475098934012037173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor n (n ^ 2) % (n + 1)

end

end A213541.P16475098934012037173

namespace A213541

/-- `(n*or(n, n²))%(n+1)` -/
def P16475098934012037173.Spec : Prop :=
  ∀ n, (P16475098934012037173.a n : ℤ) = A213541 n

end A213541

/-! ## A213541.P14667662011050148509

`and(2*n, n*2*n)/2`
-/

namespace A213541.P14667662011050148509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n) (n * (2 * n)) : ℚ) / 2

end

end A213541.P14667662011050148509

namespace A213541

/-- `and(2*n, n*2*n)/2` -/
def P14667662011050148509.Spec : Prop :=
  ∀ n, P14667662011050148509.a n = (A213541 n : ℚ)

end A213541

/-! ## A213541.P6005125230621817458

`(n²-xor(n, n²)+n)/2`
-/

namespace A213541.P6005125230621817458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (Nat.xor n (n ^ 2) : ℤ) + (n : ℤ) : ℚ) / 2

end

end A213541.P6005125230621817458

namespace A213541

/-- `(n²-xor(n, n²)+n)/2` -/
def P6005125230621817458.Spec : Prop :=
  ∀ n, P6005125230621817458.a n = (A213541 n : ℚ)

end A213541

/-! ## A213541.P5256000837751620061

`abs(and(n*(n-1)+n, n-2))`
-/

namespace A213541.P5256000837751620061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land ((n : ℤ) * ((n : ℤ) - 1) + (n : ℤ)) ((n : ℤ) - 2)|

end

end A213541.P5256000837751620061

namespace A213541

/-- `abs(and(n*(n-1)+n, n-2))` -/
def P5256000837751620061.Spec : Prop :=
  ∀ n, P5256000837751620061.a n = A213541 n

end A213541

/-! ## A213541.P9265004461791302639

`abs(or(-(n+1), n²)+n+1)`
-/

namespace A213541.P9265004461791302639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ) + (n + 1 : ℤ)|

end

end A213541.P9265004461791302639

namespace A213541

/-- `abs(or(-(n+1), n²)+n+1)` -/
def P9265004461791302639.Spec : Prop :=
  ∀ n, P9265004461791302639.a n = A213541 n

end A213541

/-! ## A213541.P2798558423375699050

`n-and(n, n-1-∑[2*n])`
-/

namespace A213541.P2798558423375699050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A213541.P2798558423375699050

namespace A213541

/-- `n-and(n, n-1-∑[2*n])` -/
def P2798558423375699050.Spec : Prop :=
  ∀ n, P2798558423375699050.a n = A213541 n

end A213541

/-! ## A213541.P14171953490411645818

`xor(-(n+1), or(-(n+1), n²))`
-/

namespace A213541.P14171953490411645818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n + 1 : ℤ)) (Int.lor (-(n + 1 : ℤ)) (n ^ 2 : ℤ))

end

end A213541.P14171953490411645818

namespace A213541

/-- `xor(-(n+1), or(-(n+1), n²))` -/
def P14171953490411645818.Spec : Prop :=
  ∀ n, P14171953490411645818.a n = A213541 n

end A213541

/-! ## A213541.P17817188910734666784

`n-A396237(n)`
-/

namespace A213541.P17817188910734666784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A396237 n

end

end A213541.P17817188910734666784

namespace A213541

/-- `n-A396237(n)` -/
def P17817188910734666784.Spec : Prop :=
  ∀ n, P17817188910734666784.a n = A213541 n

end A213541

/-! ## A213541.P8771966502089903525

`n²-A396236(n)`
-/

namespace A213541.P8771966502089903525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A396236 n

end

end A213541.P8771966502089903525

namespace A213541

/-- `n²-A396236(n)` -/
def P8771966502089903525.Spec : Prop :=
  ∀ n, P8771966502089903525.a n = A213541 n

end A213541

/-! ## A213541.P13978883788606543846

`(A174375(n)+n)/2`
-/

namespace A213541.P13978883788606543846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174375 n + (n : ℤ) : ℚ) / 2

end

end A213541.P13978883788606543846

namespace A213541

/-- `(A174375(n)+n)/2` -/
def P13978883788606543846.Spec : Prop :=
  ∀ n, P13978883788606543846.a n = (A213541 n : ℚ)

end A213541

/-! ## A213541.P4331042762983275587

`∑[n]-A169810(n)/2`
-/

namespace A213541.P4331042762983275587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A169810 n : ℚ) / 2

end

end A213541.P4331042762983275587

namespace A213541

/-- `∑[n]-A169810(n)/2` -/
def P4331042762983275587.Spec : Prop :=
  ∀ n, P4331042762983275587.a n = (A213541 n : ℚ)

end A213541

/-! ## A213541.P17104179868466589957

`A396237(n)+A174375(n)`
-/

namespace A213541.P17104179868466589957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396237 n + A174375 n

end

end A213541.P17104179868466589957

namespace A213541

/-- `A396237(n)+A174375(n)` -/
def P17104179868466589957.Spec : Prop :=
  ∀ n, P17104179868466589957.a n = A213541 n

end A213541

/-! ## A213541.P13269291416286653911

`sqrt(A000290(and(n, A000290(n))))`
-/

namespace A213541.P13269291416286653911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000290 (Int.land (n : ℤ) (A000290 n)).toNat : ℝ)

end

end A213541.P13269291416286653911

namespace A213541

/-- `sqrt(A000290(and(n, A000290(n))))` -/
def P13269291416286653911.Spec : Prop :=
  ∀ n, P13269291416286653911.a n = (A213541 n : ℝ)

end A213541

/-! ## A213541.P10840691277313809197

`A004525(2*and(n, A000290(n)))`
-/

namespace A213541.P10840691277313809197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * Int.land (n : ℤ) (A000290 n)).toNat

end

end A213541.P10840691277313809197

namespace A213541

/-- `A004525(2*and(n, A000290(n)))` -/
def P10840691277313809197.Spec : Prop :=
  ∀ n, P10840691277313809197.a n = A213541 n

end A213541

/-! ## A213541.P15647370168063802472

`A004526(and(n*A005843(n), A005843(n)))`
-/

namespace A213541.P15647370168063802472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.land ((n : ℤ) * A005843 n) (A005843 n)).toNat

end

end A213541.P15647370168063802472

namespace A213541

/-- `A004526(and(n*A005843(n), A005843(n)))` -/
def P15647370168063802472.Spec : Prop :=
  ∀ n, P15647370168063802472.a n = A213541 n

end A213541

/-!
# A213542: a(n) = k AND k^k, where k=2*n+1, AND is the bitwise AND operator.

The programs for A213542, there is no canonical definition to state claims against.
-/

/-! ## A213542.P11140692998150810008

`and(Δ[n²], A178537(n))`
-/

namespace A213542.P11140692998150810008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A178537 n)

end

end A213542.P11140692998150810008

/-! ## A213542.P6638725327278861507

`A004442(and(2*n, A178537(n)))`
-/

namespace A213542.P6638725327278861507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.land (2 * n : ℤ) (A178537 n)).toNat

end

end A213542.P6638725327278861507

/-! ## A213542.P8569236303764023818

`and(A178537(n), A283002(A283002(n+1)-n))`
-/

namespace A213542.P8569236303764023818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178537 n) (A283002 (A283002 (n + 1) - (n : ℤ)).toNat)

end

end A213542.P8569236303764023818

/-!
# A213543: a(n) = n AND 3^n, where AND is the bitwise AND operator.

The programs for A213543, there is no canonical definition to state claims against.
-/

/-! ## A213543.P16198562040727420598

`and(n, A096555(n+1))`
-/

namespace A213543.P16198562040727420598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A096555 (n + 1))

end

end A213543.P16198562040727420598

/-! ## A213543.P14684871754269477821

`and(n, A384373(n+1))`
-/

namespace A213543.P14684871754269477821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A384373 (n + 1))

end

end A213543.P14684871754269477821

/-! ## A213543.P6481863308688883286

`and(n, A108411(A006257(n)))`
-/

namespace A213543.P6481863308688883286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A108411 (A006257 n).toNat)

end

end A213543.P6481863308688883286

/-! ## A213543.P15993001700321016303

`and(n, A002380(n))`
-/

namespace A213543.P15993001700321016303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A002380 n)

end

end A213543.P15993001700321016303

/-! ## A213543.P17532568073999884458

`and(n, A058842(n+3))`
-/

namespace A213543.P17532568073999884458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A058842 (n + 3))

end

end A213543.P17532568073999884458

/-! ## A213543.P4571966710771695942

`and(n, 9*(2^(n+2)-A079450(n+2)))`
-/

namespace A213543.P4571966710771695942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (9 * ((2 ^ (n + 2) : ℤ) - A079450 (n + 2)))

end

end A213543.P4571966710771695942

/-! ## A213543.P15409495358839464633

`and(n, -A126087(n))`
-/

namespace A213543.P15409495358839464633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-A126087 n)

end

end A213543.P15409495358839464633

/-! ## A213543.P4554239998062748998

`and(n, A243019(n))`
-/

namespace A213543.P4554239998062748998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A243019 n)

end

end A213543.P4554239998062748998

/-! ## A213543.P2252814966318186948

`and(n, A056577(n))`
-/

namespace A213543.P2252814966318186948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A056577 n)

end

end A213543.P2252814966318186948

/-! ## A213543.P17091452977995859886

`and(n, 3^n)`
-/

namespace A213543.P17091452977995859886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 ^ n)

end

end A213543.P17091452977995859886

/-! ## A213543.P16795959357028493384

`or(-(n+1), 3^n)+n+1`
-/

namespace A213543.P16795959357028493384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(n + 1 : ℤ)) (3 ^ n : ℤ) + (n + 1 : ℤ)

end

end A213543.P16795959357028493384

/-! ## A213543.P16465127172925874374

`and(n, A000244(n))%A211439(n)`
-/

namespace A213543.P16465127172925874374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (A000244 n)) (A211439 n)

end

end A213543.P16465127172925874374

/-! ## A213543.P15678156653134783315

`and(2*n, A062547(2*n+1))/2`
-/

namespace A213543.P15678156653134783315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * n : ℤ) (A062547 (2 * n + 1)) : ℚ) / 2

end

end A213543.P15678156653134783315

/-! ## A213543.P937617391331565374

`and(n, sqrt(A001019(n)))%(2*n+1)`
-/

namespace A213543.P937617391331565374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A001019 n : ℝ)))) (2 * n + 1 : ℤ)

end

end A213543.P937617391331565374

/-!
# A213544: Sum of numerators of Farey Sequence of order n.

The programs for A213544, the canonical program `A213544.P18315218714805834190` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213544 has offset 1).

The definition of A213544 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011755, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213544.P13662282571328208396

`A240877(n+1)/2`
-/

namespace A213544.P13662282571328208396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240877 (n + 1) : ℚ) / 2

end

end A213544.P13662282571328208396

namespace A213544

/-- `A240877(n+1)/2` -/
def P13662282571328208396.Spec : Prop :=
  ∀ n, P13662282571328208396.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P18315218714805834190

`(A011755(n+1)+1)/2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213544

/-- `(A011755(n+1)+1)/2` -/
def P18315218714805834190.Spec : Prop :=
  ∀ n, P18315218714805834190.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P13951381554313296234

`∑[A023896(n+1)]`
-/

namespace A213544.P13951381554313296234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P13951381554313296234

namespace A213544

/-- `∑[A023896(n+1)]` -/
def P13951381554313296234.Spec : Prop :=
  ∀ n, P13951381554313296234.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P4369507756140886621

`ceil(A011755(n+1)/2)`
-/

namespace A213544.P4369507756140886621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011755 (n + 1) : ℚ) / 2⌉

end

end A213544.P4369507756140886621

namespace A213544

/-- `ceil(A011755(n+1)/2)` -/
def P4369507756140886621.Spec : Prop :=
  ∀ n, P4369507756140886621.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P5239313548218167988

`ceil(A333297(n+1)/3)`
-/

namespace A213544.P5239313548218167988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333297 (n + 1) : ℚ) / 3⌉

end

end A213544.P5239313548218167988

namespace A213544

/-- `ceil(A333297(n+1)/3)` -/
def P5239313548218167988.Spec : Prop :=
  ∀ n, P5239313548218167988.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P13009043220395438710

`∑[A109607(n+1)+1]`
-/

namespace A213544.P13009043220395438710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P13009043220395438710

namespace A213544

/-- `∑[A109607(n+1)+1]` -/
def P13009043220395438710.Spec : Prop :=
  ∀ n, P13009043220395438710.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P12778085683800750348

`∑[ceil(A002618(n+1)/2)]`
-/

namespace A213544.P12778085683800750348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002618 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P12778085683800750348

namespace A213544

/-- `∑[ceil(A002618(n+1)/2)]` -/
def P12778085683800750348.Spec : Prop :=
  ∀ n, P12778085683800750348.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P16801151778533973741

`(∑[A046152(n+1)]-n)/2`
-/

namespace A213544.P16801151778533973741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A213544.P16801151778533973741

namespace A213544

/-- `(∑[A046152(n+1)]-n)/2` -/
def P16801151778533973741.Spec : Prop :=
  ∀ n, P16801151778533973741.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P17358098160631951645

`∑[A308474(n+1)/(n+1)²]`
-/

namespace A213544.P17358098160631951645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308474 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P17358098160631951645

namespace A213544

/-- `∑[A308474(n+1)/(n+1)²]` -/
def P17358098160631951645.Spec : Prop :=
  ∀ n, P17358098160631951645.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P13994095816342621733

`∑[ceil((n+1)/2*A000010(n+1))]`
-/

namespace A213544.P13994095816342621733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A000010 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P13994095816342621733

namespace A213544

/-- `∑[ceil((n+1)/2*A000010(n+1))]` -/
def P13994095816342621733.Spec : Prop :=
  ∀ n, P13994095816342621733.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P5625103610224515996

`∑[A000124(n)-A067392(n+1)+n]`
-/

namespace A213544.P5625103610224515996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A067392 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P5625103610224515996

namespace A213544

/-- `∑[A000124(n)-A067392(n+1)+n]` -/
def P5625103610224515996.Spec : Prop :=
  ∀ n, P5625103610224515996.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P6727506361556035649

`A333297(n+1)+1-A011755(n+1)`
-/

namespace A213544.P6727506361556035649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333297 (n + 1) + (1 - A011755 (n + 1))

end

end A213544.P6727506361556035649

namespace A213544

/-- `A333297(n+1)+1-A011755(n+1)` -/
def P6727506361556035649.Spec : Prop :=
  ∀ n, P6727506361556035649.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P5518003112305501761

`∑[A026741(A000010(2*(n+1)))*A026741(n+1)]`
-/

namespace A213544.P5518003112305501761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000010 (2 * (n + 1))).toNat * A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P5518003112305501761

namespace A213544

/-- `∑[A026741(A000010(2*(n+1)))*A026741(n+1)]` -/
def P5518003112305501761.Spec : Prop :=
  ∀ n, P5518003112305501761.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P6634720942538332091

`Δ[∑[A240877(n)]/2]`
-/

namespace A213544.P6634720942538332091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213544.P6634720942538332091

namespace A213544

/-- `Δ[∑[A240877(n)]/2]` -/
def P6634720942538332091.Spec : Prop :=
  ∀ n, P6634720942538332091.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P7255549528055263696

`∑[A026741(A055034(2*(n+1)))*A026741(n+1)]`
-/

namespace A213544.P7255549528055263696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A055034 (2 * (n + 1))).toNat * A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P7255549528055263696

namespace A213544

/-- `∑[A026741(A055034(2*(n+1)))*A026741(n+1)]` -/
def P7255549528055263696.Spec : Prop :=
  ∀ n, P7255549528055263696.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P3746863229088278062

`∑[ceil(A000010((n+1)²)/2)]`
-/

namespace A213544.P3746863229088278062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((n + 1) ^ 2) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P3746863229088278062

namespace A213544

/-- `∑[ceil(A000010((n+1)²)/2)]` -/
def P3746863229088278062.Spec : Prop :=
  ∀ n, P3746863229088278062.a n = A213544 (n + 1)

end A213544

/-! ## A213544.P8501139694536829967

`(∑[A000010(∑[2*n+1])]+1)/2`
-/

namespace A213544.P8501139694536829967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A213544.P8501139694536829967

namespace A213544

/-- `(∑[A000010(∑[2*n+1])]+1)/2` -/
def P8501139694536829967.Spec : Prop :=
  ∀ n, P8501139694536829967.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P5850140375493369162

`∑[A000010((n-(A004277(n)+1))²)/2]`
-/

namespace A213544.P5850140375493369162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (((n : ℤ) - (A004277 n + 1)) ^ 2).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P5850140375493369162

namespace A213544

/-- `∑[A000010((n-(A004277(n)+1))²)/2]` -/
def P5850140375493369162.Spec : Prop :=
  ∀ n, P5850140375493369162.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P3548698689221823295

`∑[A000010((n-1-A004277(n))²)/2]`
-/

namespace A213544.P3548698689221823295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (((n : ℤ) - 1 - A004277 n) ^ 2).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213544.P3548698689221823295

namespace A213544

/-- `∑[A000010((n-1-A004277(n))²)/2]` -/
def P3548698689221823295.Spec : Prop :=
  ∀ n, P3548698689221823295.a n = (A213544 (n + 1) : ℚ)

end A213544

/-! ## A213544.P8602134659589421743

`record[∑[A038568(2*n+1)]/A038568(2*n+1)]`
-/

namespace A213544.P8602134659589421743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A038568 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213544.P8602134659589421743

namespace A213544

/-- `record[∑[A038568(2*n+1)]/A038568(2*n+1)]` -/
def P8602134659589421743.Spec : Prop :=
  ∀ n, P8602134659589421743.a n = (A213544 (n + 1) : ℚ)

end A213544

/-!
# A213546: Principal diagonal of the convolution array A213505.

The programs for A213546, the canonical program `A213546.P10981299121347241640` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213546 has offset 1).

The definition of A213546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213546.P10981299121347241640

`(16*(n+1)^5+15*(n+1)^4-(n+1))/30`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213546

/-- `(16*(n+1)^5+15*(n+1)^4-(n+1))/30` -/
def P10981299121347241640.Spec : Prop :=
  ∀ n, P10981299121347241640.a n = (A213546 (n + 1) : ℚ)

end A213546

/-! ## A213546.P8585322791800106052

`A292053(n+1)+A213556(n+1)`
-/

namespace A213546.P8585322791800106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292053 (n + 1) + A213556 (n + 1)

end

end A213546.P8585322791800106052

namespace A213546

/-- `A292053(n+1)+A213556(n+1)` -/
def P8585322791800106052.Spec : Prop :=
  ∀ n, P8585322791800106052.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P5797819938248453740

`A292053(n+1)+A276159(n)+A027480(n)`
-/

namespace A213546.P5797819938248453740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292053 (n + 1) + (A276159 n + A027480 n)

end

end A213546.P5797819938248453740

namespace A213546

/-- `A292053(n+1)+A276159(n)+A027480(n)` -/
def P5797819938248453740.Spec : Prop :=
  ∀ n, P5797819938248453740.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P12787735312281960140

`A143945(n+1)+A000538(n+1)`
-/

namespace A213546.P12787735312281960140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143945 (n + 1) + A000538 (n + 1)

end

end A213546.P12787735312281960140

namespace A213546

/-- `A143945(n+1)+A000538(n+1)` -/
def P12787735312281960140.Spec : Prop :=
  ∀ n, P12787735312281960140.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P15865213750724871334

`A292053(n+1)+Δ[n*A024166(n)]`
-/

namespace A213546.P15865213750724871334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292053 (n + 1) + (f1 (n + 1) - f1 n)

end

end A213546.P15865213750724871334

namespace A213546

/-- `A292053(n+1)+Δ[n*A024166(n)]` -/
def P15865213750724871334.Spec : Prop :=
  ∀ n, P15865213750724871334.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P1216659070622953050

`A337173(2*(n+1))`
-/

namespace A213546.P1216659070622953050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337173 (2 * (n + 1))

end

end A213546.P1216659070622953050

namespace A213546

/-- `A337173(2*(n+1))` -/
def P1216659070622953050.Spec : Prop :=
  ∀ n, P1216659070622953050.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P18058114799822092763

`record[A337173(n+1)^(n%2)]`
-/

namespace A213546.P18058114799822092763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337173 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213546.P18058114799822092763

namespace A213546

/-- `record[A337173(n+1)^(n%2)]` -/
def P18058114799822092763.Spec : Prop :=
  ∀ n, P18058114799822092763.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P46171025236932184

`A005585(2*n+1)-A008911(n+1)`
-/

namespace A213546.P46171025236932184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (2 * n + 1) - A008911 (n + 1)

end

end A213546.P46171025236932184

namespace A213546

/-- `A005585(2*n+1)-A008911(n+1)` -/
def P46171025236932184.Spec : Prop :=
  ∀ n, P46171025236932184.a n = A213546 (n + 1)

end A213546

/-! ## A213546.P7644732377740114495

`A213505((n+1)²+n²)`
-/

namespace A213546.P7644732377740114495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213505 ((n + 1) ^ 2 + n ^ 2)

end

end A213546.P7644732377740114495

namespace A213546

/-- `A213505((n+1)²+n²)` -/
def P7644732377740114495.Spec : Prop :=
  ∀ n, P7644732377740114495.a n = A213546 (n + 1)

end A213546

/-!
# A213547: Antidiagonal sums of the convolution array A213505.

The programs for A213547, the canonical program `A213547.P6241385071106255565` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213547 has offset 1).

The definition of A213547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213547.P6241385071106255565

`((n+1)^6+6*(n+1)^5+15*(n+1)^4+20*(n+1)^3+14*(n+1)²+4*(n+1))/60`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213547

/-- `((n+1)^6+6*(n+1)^5+15*(n+1)^4+20*(n+1)^3+14*(n+1)²+4*(n+1))/60` -/
def P6241385071106255565.Spec : Prop :=
  ∀ n, P6241385071106255565.a n = (A213547 (n + 1) : ℚ)

end A213547

/-! ## A213547.P13841253090466523815

`∑[∑[C((n+1)²+1, 2)]]`
-/

namespace A213547.P13841253090466523815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2 + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213547.P13841253090466523815

namespace A213547

/-- `∑[∑[C((n+1)²+1, 2)]]` -/
def P13841253090466523815.Spec : Prop :=
  ∀ n, (P13841253090466523815.a n : ℤ) = A213547 (n + 1)

end A213547

/-! ## A213547.P12099965798202744401

`2/(n+2)*A114239(n)`
-/

namespace A213547.P12099965798202744401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A114239 n : ℚ)

end

end A213547.P12099965798202744401

namespace A213547

/-- `2/(n+2)*A114239(n)` -/
def P12099965798202744401.Spec : Prop :=
  ∀ n, P12099965798202744401.a n = (A213547 (n + 1) : ℚ)

end A213547

/-! ## A213547.P11309609831845689531

`(n+2)/2*A033455(n+1)`
-/

namespace A213547.P11309609831845689531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A033455 (n + 1) : ℚ)

end

end A213547.P11309609831845689531

namespace A213547

/-- `(n+2)/2*A033455(n+1)` -/
def P11309609831845689531.Spec : Prop :=
  ∀ n, P11309609831845689531.a n = (A213547 (n + 1) : ℚ)

end A213547

/-! ## A213547.P8194614192874069038

`∑[A086755(n)]-A086755(n)/2`
-/

namespace A213547.P8194614192874069038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086755 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A086755 n : ℚ) / 2

end

end A213547.P8194614192874069038

namespace A213547

/-- `∑[A086755(n)]-A086755(n)/2` -/
def P8194614192874069038.Spec : Prop :=
  ∀ n, P8194614192874069038.a n = (A213547 (n + 1) : ℚ)

end A213547

/-! ## A213547.P65877491581621642

`A101094(n+1)+A101094(n+1)-A024166(n+1)`
-/

namespace A213547.P65877491581621642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 1) + (A101094 (n + 1) - A024166 (n + 1))

end

end A213547.P65877491581621642

namespace A213547

/-- `A101094(n+1)+A101094(n+1)-A024166(n+1)` -/
def P65877491581621642.Spec : Prop :=
  ∀ n, P65877491581621642.a n = A213547 (n + 1)

end A213547

/-! ## A213547.P9612280678995844118

`Δ[Δ[A241205(n+1)]]`
-/

namespace A213547.P9612280678995844118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213547.P9612280678995844118

namespace A213547

/-- `Δ[Δ[A241205(n+1)]]` -/
def P9612280678995844118.Spec : Prop :=
  ∀ n, P9612280678995844118.a n = A213547 (n + 1)

end A213547

/-!
# A213548: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = m(m+1)/2, m = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213548, there is no canonical definition to state claims against.
-/

/-! ## A213548.P14105761522818414724

`(A213500(n+1)+A212891(n+1))/2`
-/

namespace A213548.P14105761522818414724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213500 (n + 1) + A212891 (n + 1) : ℚ) / 2

end

end A213548.P14105761522818414724

/-! ## A213548.P4104560099570061207

`2*A213551(n+1)-A213561(n+1)`
-/

namespace A213548.P4104560099570061207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213551 (n + 1) - A213561 (n + 1)

end

end A213548.P4104560099570061207

/-! ## A213548.P3507745205023852907

`A213550(n+1)+A213564(n+1)-A213561(n+1)`
-/

namespace A213548.P3507745205023852907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) + (A213564 (n + 1) - A213561 (n + 1))

end

end A213548.P3507745205023852907

/-! ## A213548.P12992449030169048472

`A273943(A212891(n+1)-A213500(n+1))+A213500(n+1)`
-/

namespace A213548.P12992449030169048472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A212891 (n + 1) - A213500 (n + 1)).toNat + A213500 (n + 1)

end

end A213548.P12992449030169048472

/-! ## A213548.P14960383781471388114

`A273943(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P14960383781471388114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P14960383781471388114

/-! ## A213548.P7882609196482246739

`A213500(n+1)+A014682(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P7882609196482246739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A014682 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P7882609196482246739

/-! ## A213548.P3626723018753173508

`A014682(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P3626723018753173508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P3626723018753173508

/-! ## A213548.P8764296231869013206

`A014682(A212891(n+1)+A213819(n+1)-A213750(n+1))`
-/

namespace A213548.P8764296231869013206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A212891 (n + 1) + (A213819 (n + 1) - A213750 (n + 1))).toNat

end

end A213548.P8764296231869013206

/-! ## A213548.P14604136286813189806

`A332893(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P14604136286813189806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P14604136286813189806

/-! ## A213548.P13072184178188373784

`A213500(n+1)+A038572(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P13072184178188373784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A038572 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P13072184178188373784

/-! ## A213548.P8487935259998530158

`A038572(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P8487935259998530158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P8487935259998530158

/-! ## A213548.P10718246879466420447

`A213500(n+1)+A001281(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P10718246879466420447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A001281 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P10718246879466420447

/-! ## A213548.P11685278332198372197

`A213500(n+1)+A004525(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P11685278332198372197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A004525 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P11685278332198372197

/-! ## A213548.P14218746171625389110

`A213500(n+1)+A025480(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P14218746171625389110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A025480 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P14218746171625389110

/-! ## A213548.P17134446001020137225

`A213500(n+1)+A026741(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P17134446001020137225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A026741 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P17134446001020137225

/-! ## A213548.P18371839238883542196

`A213500(n+1)+A029578(A212891(n+1)-A213500(n+1))`
-/

namespace A213548.P18371839238883542196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A029578 (A212891 (n + 1) - A213500 (n + 1)).toNat

end

end A213548.P18371839238883542196

/-! ## A213548.P524367758834781218

`A001281(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P524367758834781218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P524367758834781218

/-! ## A213548.P12605222943246416969

`A004525(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P12605222943246416969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P12605222943246416969

/-! ## A213548.P16531770123285831852

`A004526(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P16531770123285831852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P16531770123285831852

/-! ## A213548.P15201194513588638729

`A025480(A213500(n+1)+A212891(n+1))`
-/

namespace A213548.P15201194513588638729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213500 (n + 1) + A212891 (n + 1)).toNat

end

end A213548.P15201194513588638729

/-!
# A213549: Principal diagonal of the convolution array A213548.

The programs for A213549, the canonical program `A213549.P17047246900857965942` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213549 has offset 1).

The definition of A213549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213549.P5525094651125144576

`(n+1)*(n+2)*(11*(n+1)²+3*(n+1)-2)/24`
-/

namespace A213549.P5525094651125144576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * (((11 * (n + 1) ^ 2 + 3 * (n + 1) : ℤ) - 2 : ℚ) / 24))

end

end A213549.P5525094651125144576

namespace A213549

/-- `(n+1)*(n+2)*(11*(n+1)²+3*(n+1)-2)/24` -/
def P5525094651125144576.Spec : Prop :=
  ∀ n, P5525094651125144576.a n = (A213549 (n + 1) : ℚ)

theorem P5525094651125144576.correct : P5525094651125144576.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213549, Nat.add_sub_cancel, A213549.P5525094651125144576.a, A213549.P17047246900857965942.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213549, Nat.add_sub_cancel, A213549.P5525094651125144576.a, A213549.P17047246900857965942.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213549

/-! ## A213549.P17047246900857965942

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=12, a(2)=53, a(3)=155, a(4)=360`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213549

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17047246900857965942.Spec : Prop :=
  ∀ n, P17047246900857965942.a n = A213549 (n + 1)

theorem P17047246900857965942.correct : P17047246900857965942.Spec := by
  intro n
  simp only [A213549, Nat.add_sub_cancel]

end A213549

/-! ## A213549.P463432002488469374

`A290312(n)+∑[C(2*(n+1), 3)]`
-/

namespace A213549.P463432002488469374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213549.P463432002488469374

namespace A213549

/-- `A290312(n)+∑[C(2*(n+1), 3)]` -/
def P463432002488469374.Spec : Prop :=
  ∀ n, P463432002488469374.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P1891294327134546582

`A055268(n)-A027480(n)`
-/

namespace A213549.P1891294327134546582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 n - A027480 n

end

end A213549.P1891294327134546582

namespace A213549

/-- `A055268(n)-A027480(n)` -/
def P1891294327134546582.Spec : Prop :=
  ∀ n, P1891294327134546582.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P1484334382025446993

`A051878(n)-A277229(n)`
-/

namespace A213549.P1484334382025446993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051878 n - A277229 n

end

end A213549.P1484334382025446993

namespace A213549

/-- `A051878(n)-A277229(n)` -/
def P1484334382025446993.Spec : Prop :=
  ∀ n, P1484334382025446993.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P15016838234809084678

`A290312(n)+∑[A002492(n)]`
-/

namespace A213549.P15016838234809084678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213549.P15016838234809084678

namespace A213549

/-- `A290312(n)+∑[A002492(n)]` -/
def P15016838234809084678.Spec : Prop :=
  ∀ n, P15016838234809084678.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P5415152852756142388

`A006324(n+1)+A001296(n)`
-/

namespace A213549.P5415152852756142388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) + A001296 n

end

end A213549.P5415152852756142388

namespace A213549

/-- `A006324(n+1)+A001296(n)` -/
def P5415152852756142388.Spec : Prop :=
  ∀ n, P5415152852756142388.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P11685276784854876820

`A215862(n)+A066804(n+1)`
-/

namespace A213549.P11685276784854876820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + A066804 (n + 1)

end

end A213549.P11685276784854876820

namespace A213549

/-- `A215862(n)+A066804(n+1)` -/
def P11685276784854876820.Spec : Prop :=
  ∀ n, P11685276784854876820.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P17499480539234223680

`A213843(n+1)-A002418(n)`
-/

namespace A213549.P17499480539234223680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) - A002418 n

end

end A213549.P17499480539234223680

namespace A213549

/-- `A213843(n+1)-A002418(n)` -/
def P17499480539234223680.Spec : Prop :=
  ∀ n, P17499480539234223680.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P1675332543372549942

`A187673(n)+A033488(n)/2`
-/

namespace A213549.P1675332543372549942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187673 n : ℚ) + (A033488 n : ℚ) / 2

end

end A213549.P1675332543372549942

namespace A213549

/-- `A187673(n)+A033488(n)/2` -/
def P1675332543372549942.Spec : Prop :=
  ∀ n, P1675332543372549942.a n = (A213549 (n + 1) : ℚ)

end A213549

/-! ## A213549.P15623524403564636664

`A051740(n)+n*A000292(n)`
-/

namespace A213549.P15623524403564636664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n + (n : ℤ) * A000292 n

end

end A213549.P15623524403564636664

namespace A213549

/-- `A051740(n)+n*A000292(n)` -/
def P15623524403564636664.Spec : Prop :=
  ∀ n, P15623524403564636664.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P6641622408693396911

`∑[A000330(n)]+∑[A050509(n)]`
-/

namespace A213549.P6641622408693396911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213549.P6641622408693396911

namespace A213549

/-- `∑[A000330(n)]+∑[A050509(n)]` -/
def P6641622408693396911.Spec : Prop :=
  ∀ n, P6641622408693396911.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P10416143092626849687

`A006323(n+1)+∑[A006331(n)]`
-/

namespace A213549.P10416143092626849687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213549.P10416143092626849687

namespace A213549

/-- `A006323(n+1)+∑[A006331(n)]` -/
def P10416143092626849687.Spec : Prop :=
  ∀ n, P10416143092626849687.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P18324509386222234619

`A117066(n+1)+∑[A000292(n)]`
-/

namespace A213549.P18324509386222234619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213549.P18324509386222234619

namespace A213549

/-- `A117066(n+1)+∑[A000292(n)]` -/
def P18324509386222234619.Spec : Prop :=
  ∀ n, P18324509386222234619.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P10025716663309553589

`A052149(n+1)+A006322(n+1)`
-/

namespace A213549.P10025716663309553589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) + A006322 (n + 1)

end

end A213549.P10025716663309553589

namespace A213549

/-- `A052149(n+1)+A006322(n+1)` -/
def P10025716663309553589.Spec : Prop :=
  ∀ n, P10025716663309553589.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P12998144363148341274

`A098077(n+1)-A006322(n+1)`
-/

namespace A213549.P12998144363148341274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) - A006322 (n + 1)

end

end A213549.P12998144363148341274

namespace A213549

/-- `A098077(n+1)-A006322(n+1)` -/
def P12998144363148341274.Spec : Prop :=
  ∀ n, P12998144363148341274.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P3429986278486924261

`A027482(n+2)-A136105(n+8)`
-/

namespace A213549.P3429986278486924261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2) - A136105 (n + 8)

end

end A213549.P3429986278486924261

namespace A213549

/-- `A027482(n+2)-A136105(n+8)` -/
def P3429986278486924261.Spec : Prop :=
  ∀ n, P3429986278486924261.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P4167961273678817367

`A302560(n+1)-n*A000292(n)`
-/

namespace A213549.P4167961273678817367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) - (n : ℤ) * A000292 n

end

end A213549.P4167961273678817367

namespace A213549

/-- `A302560(n+1)-n*A000292(n)` -/
def P4167961273678817367.Spec : Prop :=
  ∀ n, P4167961273678817367.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P3814746055878827411

`2*A213552(n+1)-A213562(n+1)`
-/

namespace A213549.P3814746055878827411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213552 (n + 1) - A213562 (n + 1)

end

end A213549.P3814746055878827411

namespace A213549

/-- `2*A213552(n+1)-A213562(n+1)` -/
def P3814746055878827411.Spec : Prop :=
  ∀ n, P3814746055878827411.a n = A213549 (n + 1)

end A213549

/-! ## A213549.P11857136416185588898

`A000292(n)+A096000(n)+a(n-1)` with `a(0)=1`
-/

namespace A213549.P11857136416185588898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000292 n + (A096000 n + a (n - 1))

end

end A213549.P11857136416185588898

namespace A213549

/-- `A000292(n)+A096000(n)+a(n-1)` -/
def P11857136416185588898.Spec : Prop :=
  ∀ n, P11857136416185588898.a n = A213549 (n + 1)

end A213549

/-!
# A213550: Rectangular array: (row n) = b**c, where b(h) = h*(h+1)/2, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213550, there is no canonical definition to state claims against.
-/

/-! ## A213550.P2104667600903531100

`(A213503(n+1)+A213500(n+1))/2`
-/

namespace A213550.P2104667600903531100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213503 (n + 1) + A213500 (n + 1) : ℚ) / 2

end

end A213550.P2104667600903531100

/-! ## A213550.P9996221061986114360

`2*A213551(n+1)-A213564(n+1)`
-/

namespace A213550.P9996221061986114360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213551 (n + 1) - A213564 (n + 1)

end

end A213550.P9996221061986114360

/-! ## A213550.P16485981918489706777

`A213548(n+1)+A213561(n+1)-A213564(n+1)`
-/

namespace A213550.P16485981918489706777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + (A213561 (n + 1) - A213564 (n + 1))

end

end A213550.P16485981918489706777

/-! ## A213550.P8057962122360034998

`A213500(n+1)+A014682(A213503(n+1)-A213500(n+1))`
-/

namespace A213550.P8057962122360034998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A014682 (A213503 (n + 1) - A213500 (n + 1)).toNat

end

end A213550.P8057962122360034998

/-! ## A213550.P13594581386247974742

`A014682(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P13594581386247974742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P13594581386247974742

/-! ## A213550.P13212049951979532315

`A014682(A213503(n+1)+A213819(n+1)-A213750(n+1))`
-/

namespace A213550.P13212049951979532315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213503 (n + 1) + (A213819 (n + 1) - A213750 (n + 1))).toNat

end

end A213550.P13212049951979532315

/-! ## A213550.P13003211110143106446

`A332893(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P13003211110143106446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332893 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P13003211110143106446

/-! ## A213550.P15977935474776941552

`A213500(n+1)+A038572(A213503(n+1)-A213500(n+1))`
-/

namespace A213550.P15977935474776941552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A038572 (A213503 (n + 1) - A213500 (n + 1)).toNat

end

end A213550.P15977935474776941552

/-! ## A213550.P10295585937633569320

`A038572(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P10295585937633569320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P10295585937633569320

/-! ## A213550.P7728131742635356774

`A213500(n+1)+A004525(A213503(n+1)-A213500(n+1))`
-/

namespace A213550.P7728131742635356774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A004525 (A213503 (n + 1) - A213500 (n + 1)).toNat

end

end A213550.P7728131742635356774

/-! ## A213550.P6860970156011586833

`A213500(n+1)+A025480(A213503(n+1)-A213500(n+1))`
-/

namespace A213550.P6860970156011586833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A025480 (A213503 (n + 1) - A213500 (n + 1)).toNat

end

end A213550.P6860970156011586833

/-! ## A213550.P6897839736222553890

`A213500(n+1)+A026741(A213503(n+1)-A213500(n+1))`
-/

namespace A213550.P6897839736222553890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A026741 (A213503 (n + 1) - A213500 (n + 1)).toNat

end

end A213550.P6897839736222553890

/-! ## A213550.P781016748974773921

`A213500(n+1)+A029578(A213503(n+1)-A213500(n+1))`
-/

namespace A213550.P781016748974773921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A029578 (A213503 (n + 1) - A213500 (n + 1)).toNat

end

end A213550.P781016748974773921

/-! ## A213550.P2231275644674946814

`A004525(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P2231275644674946814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P2231275644674946814

/-! ## A213550.P1150366245570861580

`A004526(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P1150366245570861580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P1150366245570861580

/-! ## A213550.P5333030644783591471

`A025480(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P5333030644783591471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P5333030644783591471

/-! ## A213550.P13334147196483661772

`A026741(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P13334147196483661772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P13334147196483661772

/-! ## A213550.P11127745439419748388

`A029578(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P11127745439419748388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P11127745439419748388

/-! ## A213550.P10378124938424410476

`A110654(A213503(n+1)+A213500(n+1))`
-/

namespace A213550.P10378124938424410476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A213503 (n + 1) + A213500 (n + 1)).toNat

end

end A213550.P10378124938424410476

/-! ## A213550.P12433067278126588918

`A005843(A213551(n+1))-A213564(n+1)`
-/

namespace A213550.P12433067278126588918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213551 (n + 1)).toNat - A213564 (n + 1)

end

end A213550.P12433067278126588918

/-!
# A213551: Rectangular array: (row n) = b**c, where b(h) = h*(h+1)/2, c(h) = b(n-1+h), n>=1, h>=1, and ** = convolution.

The programs for A213551, there is no canonical definition to state claims against.
-/

/-! ## A213551.P4013458860418895985

`(A213561(n+1)+A213548(n+1))/2`
-/

namespace A213551.P4013458860418895985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213561 (n + 1) + A213548 (n + 1) : ℚ) / 2

end

end A213551.P4013458860418895985

/-! ## A213551.P12259278324016528002

`(A213564(n+1)+A213550(n+1))/2`
-/

namespace A213551.P12259278324016528002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213564 (n + 1) + A213550 (n + 1) : ℚ) / 2

end

end A213551.P12259278324016528002

/-! ## A213551.P8481549571576229177

`A273943(A213561(n+1)-A213548(n+1))+A213548(n+1)`
-/

namespace A213551.P8481549571576229177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213561 (n + 1) - A213548 (n + 1)).toNat + A213548 (n + 1)

end

end A213551.P8481549571576229177

/-! ## A213551.P920243844795237791

`A273943(A213564(n+1)-A213550(n+1))+A213550(n+1)`
-/

namespace A213551.P920243844795237791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213564 (n + 1) - A213550 (n + 1)).toNat + A213550 (n + 1)

end

end A213551.P920243844795237791

/-! ## A213551.P13490726189891801229

`A273943(A213561(n+1)+A213548(n+1))`
-/

namespace A213551.P13490726189891801229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213561 (n + 1) + A213548 (n + 1)).toNat

end

end A213551.P13490726189891801229

/-! ## A213551.P5103935553967548748

`A273943(A213564(n+1)+A213550(n+1))`
-/

namespace A213551.P5103935553967548748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213564 (n + 1) + A213550 (n + 1)).toNat

end

end A213551.P5103935553967548748

/-! ## A213551.P12171711809514797464

`A213548(n+1)+A014682(A213561(n+1)-A213548(n+1))`
-/

namespace A213551.P12171711809514797464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + A014682 (A213561 (n + 1) - A213548 (n + 1)).toNat

end

end A213551.P12171711809514797464

/-! ## A213551.P13199299375082672544

`A213550(n+1)+A014682(A213564(n+1)-A213550(n+1))`
-/

namespace A213551.P13199299375082672544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) + A014682 (A213564 (n + 1) - A213550 (n + 1)).toNat

end

end A213551.P13199299375082672544

/-! ## A213551.P16533064178213916861

`A014682(A213561(n+1)+A213548(n+1))`
-/

namespace A213551.P16533064178213916861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213561 (n + 1) + A213548 (n + 1)).toNat

end

end A213551.P16533064178213916861

/-! ## A213551.P8501439906286551690

`A014682(A213564(n+1)+A213550(n+1))`
-/

namespace A213551.P8501439906286551690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213564 (n + 1) + A213550 (n + 1)).toNat

end

end A213551.P8501439906286551690

/-! ## A213551.P6594171749791274743

`A213548(n+1)+A038572(A213561(n+1)-A213548(n+1))`
-/

namespace A213551.P6594171749791274743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + A038572 (A213561 (n + 1) - A213548 (n + 1)).toNat

end

end A213551.P6594171749791274743

/-! ## A213551.P14241734599473152738

`A213550(n+1)+A038572(A213564(n+1)-A213550(n+1))`
-/

namespace A213551.P14241734599473152738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) + A038572 (A213564 (n + 1) - A213550 (n + 1)).toNat

end

end A213551.P14241734599473152738

/-! ## A213551.P8692611994299373896

`A038572(A213561(n+1)+A213548(n+1))`
-/

namespace A213551.P8692611994299373896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213561 (n + 1) + A213548 (n + 1)).toNat

end

end A213551.P8692611994299373896

/-! ## A213551.P16334421834990841595

`A038572(A213564(n+1)+A213550(n+1))`
-/

namespace A213551.P16334421834990841595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213564 (n + 1) + A213550 (n + 1)).toNat

end

end A213551.P16334421834990841595

/-!
# A213552: Principal diagonal of the convolution array A213551.

The programs for A213552, the canonical program `A213552.P490520038576488185` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213552 has offset 1).

The definition of A213552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213552.P490520038576488185

`∑[∑[∑[∑[a(n-1)+16]]]]` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213552

/-- `∑[∑[∑[∑[a(n-1)+16]]]]` -/
def P490520038576488185.Spec : Prop :=
  ∀ n, (P490520038576488185.a n : ℤ) = A213552 (n + 1)

theorem P490520038576488185.correct : P490520038576488185.Spec := by
  intro n
  simp only [A213552, Nat.add_sub_cancel]

end A213552

/-! ## A213552.P14723562464687528555

`∑[(n+1)*∑[∑[4*n+1]]]`
-/

namespace A213552.P14723562464687528555
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213552.P14723562464687528555

namespace A213552

/-- `∑[(n+1)*∑[∑[4*n+1]]]` -/
def P14723562464687528555.Spec : Prop :=
  ∀ n, (P14723562464687528555.a n : ℤ) = A213552 (n + 1)

end A213552

/-! ## A213552.P3722629625996231066

`A050406(n)-A373733(n)`
-/

namespace A213552.P3722629625996231066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 n - A373733 n

end

end A213552.P3722629625996231066

namespace A213552

/-- `A050406(n)-A373733(n)` -/
def P3722629625996231066.Spec : Prop :=
  ∀ n, P3722629625996231066.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P14956502732352376945

`(A213562(n+1)+A213549(n+1))/2`
-/

namespace A213552.P14956502732352376945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213562 (n + 1) + A213549 (n + 1) : ℚ) / 2

end

end A213552.P14956502732352376945

namespace A213552

/-- `(A213562(n+1)+A213549(n+1))/2` -/
def P14956502732352376945.Spec : Prop :=
  ∀ n, P14956502732352376945.a n = (A213552 (n + 1) : ℚ)

end A213552

/-! ## A213552.P4191149528117928711

`A034263(n)+A271567(n)-A051740(n)`
-/

namespace A213552.P4191149528117928711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (A271567 n - A051740 n)

end

end A213552.P4191149528117928711

namespace A213552

/-- `A034263(n)+A271567(n)-A051740(n)` -/
def P4191149528117928711.Spec : Prop :=
  ∀ n, P4191149528117928711.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P14863424858627378304

`A004256(n+1)-(A034263(n)+A002417(n+1))`
-/

namespace A213552.P14863424858627378304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004256 (n + 1) - (A034263 n + A002417 (n + 1))

end

end A213552.P14863424858627378304

namespace A213552

/-- `A004256(n+1)-(A034263(n)+A002417(n+1))` -/
def P14863424858627378304.Spec : Prop :=
  ∀ n, P14863424858627378304.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P4594971015259339470

`2*A207361(n+1)-A001296(n+1)`
-/

namespace A213552.P4594971015259339470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207361 (n + 1) - A001296 (n + 1)

end

end A213552.P4594971015259339470

namespace A213552

/-- `2*A207361(n+1)-A001296(n+1)` -/
def P4594971015259339470.Spec : Prop :=
  ∀ n, P4594971015259339470.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P2278392410840456522

`A112851(n+1)+A112851(n+1)+A034263(n)`
-/

namespace A213552.P2278392410840456522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + (A112851 (n + 1) + A034263 n)

end

end A213552.P2278392410840456522

namespace A213552

/-- `A112851(n+1)+A112851(n+1)+A034263(n)` -/
def P2278392410840456522.Spec : Prop :=
  ∀ n, P2278392410840456522.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P14455233366544120229

`A000538(n+1)-(A207361(n)+A002415(n+1))`
-/

namespace A213552.P14455233366544120229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) - (A207361 n + A002415 (n + 1))

end

end A213552.P14455233366544120229

namespace A213552

/-- `A000538(n+1)-(A207361(n)+A002415(n+1))` -/
def P14455233366544120229.Spec : Prop :=
  ∀ n, P14455233366544120229.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P4099268816288527808

`A112851(n+1)+A000217(n+1)*A000292(n+1)`
-/

namespace A213552.P4099268816288527808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + A000217 (n + 1) * A000292 (n + 1)

end

end A213552.P4099268816288527808

namespace A213552

/-- `A112851(n+1)+A000217(n+1)*A000292(n+1)` -/
def P4099268816288527808.Spec : Prop :=
  ∀ n, P4099268816288527808.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P11458476247077155809

`A001753(2*n)-∑[A000292(n)]`
-/

namespace A213552.P11458476247077155809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213552.P11458476247077155809

namespace A213552

/-- `A001753(2*n)-∑[A000292(n)]` -/
def P11458476247077155809.Spec : Prop :=
  ∀ n, P11458476247077155809.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P7507595125469992336

`A001753(2*n)-A000332(n+3)`
-/

namespace A213552.P7507595125469992336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (2 * n) - A000332 (n + 3)

end

end A213552.P7507595125469992336

namespace A213552

/-- `A001753(2*n)-A000332(n+3)` -/
def P7507595125469992336.Spec : Prop :=
  ∀ n, P7507595125469992336.a n = A213552 (n + 1)

end A213552

/-! ## A213552.P6404715596310995940

`A001753(2*n)-A096338(2*n)/2`
-/

namespace A213552.P6404715596310995940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001753 (2 * n) : ℚ) - (A096338 (2 * n) : ℚ) / 2

end

end A213552.P6404715596310995940

namespace A213552

/-- `A001753(2*n)-A096338(2*n)/2` -/
def P6404715596310995940.Spec : Prop :=
  ∀ n, P6404715596310995940.a n = (A213552 (n + 1) : ℚ)

end A213552

/-! ## A213552.P11614037042772266471

`A085461(n+1)+A000914(n)`
-/

namespace A213552.P11614037042772266471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + A000914 n

end

end A213552.P11614037042772266471

namespace A213552

/-- `A085461(n+1)+A000914(n)` -/
def P11614037042772266471.Spec : Prop :=
  ∀ n, P11614037042772266471.a n = A213552 (n + 1)

end A213552

/-!
# A213554: Principal diagonal of the convolution array A213553.

The programs for A213554, the canonical program `A213554.P15397445435927386370` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213554 has offset 1).

The definition of A213554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213554.P15397445435927386370

`(39*(n+1)^5+15*(n+1)^4-25*(n+1)^3+n+1)/30`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213554

/-- `(39*(n+1)^5+15*(n+1)^4-25*(n+1)^3+n+1)/30` -/
def P15397445435927386370.Spec : Prop :=
  ∀ n, P15397445435927386370.a n = (A213554 (n + 1) : ℚ)

end A213554

/-! ## A213554.P16155794787376592371

`A133754(n+1)+∑[(n+1)^4+2*∑[n]²]`
-/

namespace A213554.P16155794787376592371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 + 2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133754 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213554.P16155794787376592371

namespace A213554

/-- `A133754(n+1)+∑[(n+1)^4+2*∑[n]²]` -/
def P16155794787376592371.Spec : Prop :=
  ∀ n, P16155794787376592371.a n = A213554 (n + 1)

end A213554

/-! ## A213554.P276749731878172483

`A213556(n+1)+A133754(n+1)`
-/

namespace A213554.P276749731878172483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) + A133754 (n + 1)

end

end A213554.P276749731878172483

namespace A213554

/-- `A213556(n+1)+A133754(n+1)` -/
def P276749731878172483.Spec : Prop :=
  ∀ n, P276749731878172483.a n = A213554 (n + 1)

end A213554

/-! ## A213554.P14169804576936787170

`A213553(∑[4*n]+1)`
-/

namespace A213554.P14169804576936787170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213554.P14169804576936787170

namespace A213554

/-- `A213553(∑[4*n]+1)` -/
def P14169804576936787170.Spec : Prop :=
  ∀ n, P14169804576936787170.a n = A213554 (n + 1)

end A213554

/-! ## A213554.P18316086050150168749

`A213553(A001844(n))%A319206(3*n+5)`
-/

namespace A213554.P18316086050150168749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213553 (A001844 n).toNat) (A319206 (3 * n + 5))

end

end A213554.P18316086050150168749

namespace A213554

/-- `A213553(A001844(n))%A319206(3*n+5)` -/
def P18316086050150168749.Spec : Prop :=
  ∀ n, P18316086050150168749.a n = A213554 (n + 1)

end A213554

/-!
# A213556: Principal diagonal of the convolution array A213555.

The programs for A213556, the canonical program `A213556.P10312568443150520046` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213556 has offset 1).

The definition of A213556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213556.P10312568443150520046

`(9*(n+1)^5+15*(n+1)^4+5*(n+1)^3+n+1)/30`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213556

/-- `(9*(n+1)^5+15*(n+1)^4+5*(n+1)^3+n+1)/30` -/
def P10312568443150520046.Spec : Prop :=
  ∀ n, P10312568443150520046.a n = (A213556 (n + 1) : ℚ)

end A213556

/-! ## A213556.P2373345029642134776

`∑[(n+1)²²]+∑[A163102(n)]`
-/

namespace A213556.P2373345029642134776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A213556.P2373345029642134776

namespace A213556

/-- `∑[(n+1)²²]+∑[A163102(n)]` -/
def P2373345029642134776.Spec : Prop :=
  ∀ n, P2373345029642134776.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P1105062355084946103

`a(n-1)+(n+1)*A005920(n)` with `a(0)=1`
-/

namespace A213556.P1105062355084946103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) * A005920 n

end

end A213556.P1105062355084946103

namespace A213556

/-- `a(n-1)+(n+1)*A005920(n)` -/
def P1105062355084946103.Spec : Prop :=
  ∀ n, P1105062355084946103.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P16024212442651981725

`A225007(n)+A004256(n)`
-/

namespace A213556.P16024212442651981725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n + A004256 n

end

end A213556.P16024212442651981725

namespace A213556

/-- `A225007(n)+A004256(n)` -/
def P16024212442651981725.Spec : Prop :=
  ∀ n, P16024212442651981725.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P5186169411037536145

`A276159(n)+A027480(n)`
-/

namespace A213556.P5186169411037536145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276159 n + A027480 n

end

end A213556.P5186169411037536145

namespace A213556

/-- `A276159(n)+A027480(n)` -/
def P5186169411037536145.Spec : Prop :=
  ∀ n, P5186169411037536145.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P5197116807077123296

`A225007(n)+n*A004320(n)`
-/

namespace A213556.P5197116807077123296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 n + (n : ℤ) * A004320 n

end

end A213556.P5197116807077123296

namespace A213556

/-- `A225007(n)+n*A004320(n)` -/
def P5197116807077123296.Spec : Prop :=
  ∀ n, P5197116807077123296.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P11619181895070203383

`A202785(n+1)-A093119(n+1)`
-/

namespace A213556.P11619181895070203383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202785 (n + 1) - A093119 (n + 1)

end

end A213556.P11619181895070203383

namespace A213556

/-- `A202785(n+1)-A093119(n+1)` -/
def P11619181895070203383.Spec : Prop :=
  ∀ n, P11619181895070203383.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P5571531077486769283

`A213546(n+1)-A292053(n+1)`
-/

namespace A213556.P5571531077486769283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213546 (n + 1) - A292053 (n + 1)

end

end A213556.P5571531077486769283

namespace A213556

/-- `A213546(n+1)-A292053(n+1)` -/
def P5571531077486769283.Spec : Prop :=
  ∀ n, P5571531077486769283.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P15918942395869345427

`Δ[n*∑[C(n+1, 2)²]]`
-/

namespace A213556.P15918942395869345427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213556.P15918942395869345427

namespace A213556

/-- `Δ[n*∑[C(n+1, 2)²]]` -/
def P15918942395869345427.Spec : Prop :=
  ∀ n, P15918942395869345427.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P6617774150863174592

`Δ[n*A024166(n)]`
-/

namespace A213556.P6617774150863174592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213556.P6617774150863174592

namespace A213556

/-- `Δ[n*A024166(n)]` -/
def P6617774150863174592.Spec : Prop :=
  ∀ n, P6617774150863174592.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P9818621786002963391

`Δ[n*∑[A000537(n)]]`
-/

namespace A213556.P9818621786002963391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213556.P9818621786002963391

namespace A213556

/-- `Δ[n*∑[A000537(n)]]` -/
def P9818621786002963391.Spec : Prop :=
  ∀ n, P9818621786002963391.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P15732294138982008909

`Δ[n*∑[A000217(n)²]]`
-/

namespace A213556.P15732294138982008909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213556.P15732294138982008909

namespace A213556

/-- `Δ[n*∑[A000217(n)²]]` -/
def P15732294138982008909.Spec : Prop :=
  ∀ n, P15732294138982008909.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P3033057239508305543

`Δ[n*(A244864(n)-A034263(n))]`
-/

namespace A213556.P3033057239508305543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A244864 n - A034263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213556.P3033057239508305543

namespace A213556

/-- `Δ[n*(A244864(n)-A034263(n))]` -/
def P3033057239508305543.Spec : Prop :=
  ∀ n, P3033057239508305543.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P17684419363215301180

`A024166(n+1)+n*A000537(n+1)`
-/

namespace A213556.P17684419363215301180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) + (n : ℤ) * A000537 (n + 1)

end

end A213556.P17684419363215301180

namespace A213556

/-- `A024166(n+1)+n*A000537(n+1)` -/
def P17684419363215301180.Spec : Prop :=
  ∀ n, P17684419363215301180.a n = A213556 (n + 1)

end A213556

/-! ## A213556.P4938112375979595623

`A085462(n+1)+A085462(n+1)-A000537(n+1)`
-/

namespace A213556.P4938112375979595623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) + (A085462 (n + 1) - A000537 (n + 1))

end

end A213556.P4938112375979595623

namespace A213556

/-- `A085462(n+1)+A085462(n+1)-A000537(n+1)` -/
def P4938112375979595623.Spec : Prop :=
  ∀ n, P4938112375979595623.a n = A213556 (n + 1)

end A213556

/-!
# A213557: Antidiagonal sums of the convolution array A213590.

The programs for A213557, the canonical program `A213557.P10793997535067726782` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213557 has offset 1).

The definition of A213557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213557.P10793997535067726782

`∑[A213767(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213557

/-- `∑[A213767(n+1)]` -/
def P10793997535067726782.Spec : Prop :=
  ∀ n, P10793997535067726782.a n = A213557 (n + 1)

theorem P10793997535067726782.correct : P10793997535067726782.Spec := by
  intro n
  simp only [A213557, Nat.add_sub_cancel]

end A213557

/-! ## A213557.P1534551423368472413

`∑[∑[∑[A136376(n+1)]]]`
-/

namespace A213557.P1534551423368472413
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P1534551423368472413

namespace A213557

/-- `∑[∑[∑[A136376(n+1)]]]` -/
def P1534551423368472413.Spec : Prop :=
  ∀ n, P1534551423368472413.a n = A213557 (n + 1)

end A213557

/-! ## A213557.P15367915065031811380

`∑[∑[(n-1)*A020701(n)+4]]`
-/

namespace A213557.P15367915065031811380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A020701 n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P15367915065031811380

namespace A213557

/-- `∑[∑[(n-1)*A020701(n)+4]]` -/
def P15367915065031811380.Spec : Prop :=
  ∀ n, P15367915065031811380.a n = A213557 (n + 1)

end A213557

/-! ## A213557.P12358446941615056843

`∑[record[A213767(A152271(n))]]`
-/

namespace A213557.P12358446941615056843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213767 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P12358446941615056843

namespace A213557

/-- `∑[record[A213767(A152271(n))]]` -/
def P12358446941615056843.Spec : Prop :=
  ∀ n, P12358446941615056843.a n = A213557 (n + 1)

end A213557

/-! ## A213557.P11041730644261135230

`∑[record[A213767(A344180(n))]]`
-/

namespace A213557.P11041730644261135230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213767 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P11041730644261135230

namespace A213557

/-- `∑[record[A213767(A344180(n))]]` -/
def P11041730644261135230.Spec : Prop :=
  ∀ n, P11041730644261135230.a n = A213557 (n + 1)

end A213557

/-! ## A213557.P981128303145481388

`∑[∑[A014286(n+1)+A014286(n)]]`
-/

namespace A213557.P981128303145481388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + A014286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P981128303145481388

namespace A213557

/-- `∑[∑[A014286(n+1)+A014286(n)]]` -/
def P981128303145481388.Spec : Prop :=
  ∀ n, P981128303145481388.a n = A213557 (n + 1)

end A213557

/-! ## A213557.P6900595910764783996

`(n+2)*A053808(n)-A213570(n+1)`
-/

namespace A213557.P6900595910764783996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A053808 n - A213570 (n + 1)

end

end A213557.P6900595910764783996

namespace A213557

/-- `(n+2)*A053808(n)-A213570(n+1)` -/
def P6900595910764783996.Spec : Prop :=
  ∀ n, P6900595910764783996.a n = A213557 (n + 1)

end A213557

/-! ## A213557.P9242599607721972373

`∑[∑[A094584(n+1)-A000071(n+2)]]`
-/

namespace A213557.P9242599607721972373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094584 (n + 1) - A000071 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213557.P9242599607721972373

namespace A213557

/-- `∑[∑[A094584(n+1)-A000071(n+2)]]` -/
def P9242599607721972373.Spec : Prop :=
  ∀ n, P9242599607721972373.a n = A213557 (n + 1)

end A213557

/-!
# A213559: Principal diagonal of the convolution array A213558.

The programs for A213559, the canonical program `A213559.P6488487181096108632` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213559 has offset 1).

The definition of A213559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213559.P6488487181096108632

`16/35*(n+1)^7+1/2*(n+1)^6+1/15*(n+1)^3-1/42*(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213559

/-- `16/35*(n+1)^7+1/2*(n+1)^6+1/15*(n+1)^3-1/42*(n+1)` -/
def P6488487181096108632.Spec : Prop :=
  ∀ n, P6488487181096108632.a n = (A213559 (n + 1) : ℚ)

end A213559

/-! ## A213559.P16218677014828191365

`A213558(∑[4*n]+1)`
-/

namespace A213559.P16218677014828191365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213559.P16218677014828191365

namespace A213559

/-- `A213558(∑[4*n]+1)` -/
def P16218677014828191365.Spec : Prop :=
  ∀ n, P16218677014828191365.a n = A213559 (n + 1)

end A213559

/-! ## A213559.P15417000467318936798

`or(char[1], A213558(A001844(n)))`
-/

namespace A213559.P15417000467318936798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A213558 (A001844 n).toNat)

end

end A213559.P15417000467318936798

namespace A213559

/-- `or(char[1], A213558(A001844(n)))` -/
def P15417000467318936798.Spec : Prop :=
  ∀ n, P15417000467318936798.a n = A213559 (n + 1)

end A213559

/-! ## A213559.P15263700147487376568

`gcd(A000038(n), A213558(A001844(n)))`
-/

namespace A213559.P15263700147487376568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213558 (A001844 n).toNat)

end

end A213559.P15263700147487376568

namespace A213559

/-- `gcd(A000038(n), A213558(A001844(n)))` -/
def P15263700147487376568.Spec : Prop :=
  ∀ n, (P15263700147487376568.a n : ℤ) = A213559 (n + 1)

end A213559

/-! ## A213559.P8064256666783020806

`lcm(A033999(n), A213558(A001844(n)))`
-/

namespace A213559.P8064256666783020806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A213558 (A001844 n).toNat)

end

end A213559.P8064256666783020806

namespace A213559

/-- `lcm(A033999(n), A213558(A001844(n)))` -/
def P8064256666783020806.Spec : Prop :=
  ∀ n, (P8064256666783020806.a n : ℤ) = A213559 (n + 1)

end A213559

/-! ## A213559.P10345122358591957906

`A007318(∑[n])*A213558(A001844(n))`
-/

namespace A213559.P10345122358591957906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A213558 (A001844 n).toNat

end

end A213559.P10345122358591957906

namespace A213559

/-- `A007318(∑[n])*A213558(A001844(n))` -/
def P10345122358591957906.Spec : Prop :=
  ∀ n, P10345122358591957906.a n = A213559 (n + 1)

end A213559

/-! ## A213559.P13550446363774359334

`char[A027656(n)]*A213558(A001844(n))`
-/

namespace A213559.P13550446363774359334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A213558 (A001844 n).toNat

end

end A213559.P13550446363774359334

namespace A213559

/-- `char[A027656(n)]*A213558(A001844(n))` -/
def P13550446363774359334.Spec : Prop :=
  ∀ n, P13550446363774359334.a n = A213559 (n + 1)

end A213559

/-!
# A213560: Antidiagonal sums of the convolution array A213558.

The programs for A213560, the canonical program `A213560.P16918128216561739588` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213560 has offset 1).

The definition of A213560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213560.P5402331644814752028

`∑[A249884(n+1)/35]`
-/

namespace A213560.P5402331644814752028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249884 (n + 1) : ℚ) / 35

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213560.P5402331644814752028

namespace A213560

/-- `∑[A249884(n+1)/35]` -/
def P5402331644814752028.Spec : Prop :=
  ∀ n, P5402331644814752028.a n = (A213560 (n + 1) : ℚ)

end A213560

/-! ## A213560.P16918128216561739588

`(n+2)/2*A145216(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A213560

/-- `(n+2)/2*A145216(n+1)` -/
def P16918128216561739588.Spec : Prop :=
  ∀ n, P16918128216561739588.a n = (A213560 (n + 1) : ℚ)

end A213560

/-! ## A213560.P2682787649369219927

`(n+2)/2*∑[A085465(n+1)]`
-/

namespace A213560.P2682787649369219927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085465 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A213560.P2682787649369219927

namespace A213560

/-- `(n+2)/2*∑[A085465(n+1)]` -/
def P2682787649369219927.Spec : Prop :=
  ∀ n, P2682787649369219927.a n = (A213560 (n + 1) : ℚ)

end A213560

/-! ## A213560.P15022232445595848741

`∑[record[A249884(A291766(n))/35]]`
-/

namespace A213560.P15022232445595848741
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249884 (A291766 n).toNat : ℚ) / 35

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213560.P15022232445595848741

namespace A213560

/-- `∑[record[A249884(A291766(n))/35]]` -/
def P15022232445595848741.Spec : Prop :=
  ∀ n, P15022232445595848741.a n = (A213560 (n + 1) : ℚ)

end A213560

/-! ## A213560.P12908391241845863669

`∑[record[A249884(A331742(n))/35]]`
-/

namespace A213560.P12908391241845863669
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249884 (A331742 n).toNat : ℚ) / 35

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213560.P12908391241845863669

namespace A213560

/-- `∑[record[A249884(A331742(n))/35]]` -/
def P12908391241845863669.Spec : Prop :=
  ∀ n, P12908391241845863669.a n = (A213560 (n + 1) : ℚ)

end A213560

/-! ## A213560.P10106558828681504111

`record[A213558(n+1)/2*A003057(n+2)]`
-/

namespace A213560.P10106558828681504111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213558 (n + 1) : ℚ) / 2 * (A003057 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213560.P10106558828681504111

namespace A213560

/-- `record[A213558(n+1)/2*A003057(n+2)]` -/
def P10106558828681504111.Spec : Prop :=
  ∀ n, P10106558828681504111.a n = (A213560 (n + 1) : ℚ)

end A213560

/-!
# A213561: Rectangular array: (row n) = b**c, where b(h) = h^2, c(h) = m*(m+1)/2, m=n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213561, there is no canonical definition to state claims against.
-/

/-! ## A213561.P12271996623487985768

`(A213505(n+1)+A213503(n+1))/2`
-/

namespace A213561.P12271996623487985768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213505 (n + 1) + A213503 (n + 1) : ℚ) / 2

end

end A213561.P12271996623487985768

/-! ## A213561.P4197890458361122746

`2*A213551(n+1)-A213548(n+1)`
-/

namespace A213561.P4197890458361122746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213551 (n + 1) - A213548 (n + 1)

end

end A213561.P4197890458361122746

/-! ## A213561.P3704258240927501218

`A213503(n+1)+a(A083920(n-1))` with `a(0)=1`
-/

namespace A213561.P3704258240927501218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213503 (n + 1) + a (A083920 (n - 1)).toNat

end

end A213561.P3704258240927501218

/-! ## A213561.P3322150356617809513

`A213550(n+1)+A213564(n+1)-A213548(n+1)`
-/

namespace A213561.P3322150356617809513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (n + 1) + (A213564 (n + 1) - A213548 (n + 1))

end

end A213561.P3322150356617809513

/-! ## A213561.P15589200636397220525

`A213564(n+1)-A014682(A212891(n+1)-A213503(n+1))`
-/

namespace A213561.P15589200636397220525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213564 (n + 1) - A014682 (A212891 (n + 1) - A213503 (n + 1)).toNat

end

end A213561.P15589200636397220525

/-! ## A213561.P15726589820941984941

`A213503(n+1)+A014682(A213505(n+1)-A213503(n+1))`
-/

namespace A213561.P15726589820941984941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213503 (n + 1) + A014682 (A213505 (n + 1) - A213503 (n + 1)).toNat

end

end A213561.P15726589820941984941

/-! ## A213561.P18445003383471413448

`A014682(A213505(n+1)+A213503(n+1))`
-/

namespace A213561.P18445003383471413448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213505 (n + 1) + A213503 (n + 1)).toNat

end

end A213561.P18445003383471413448

/-! ## A213561.P7198320054547986097

`A004277(A213551(n+1))-A213548(n+1)`
-/

namespace A213561.P7198320054547986097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213551 (n + 1)).toNat - A213548 (n + 1)

end

end A213561.P7198320054547986097

/-! ## A213561.P11159400437327395680

`A213503(n+1)+A038572(A213505(n+1)-A213503(n+1))`
-/

namespace A213561.P11159400437327395680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213503 (n + 1) + A038572 (A213505 (n + 1) - A213503 (n + 1)).toNat

end

end A213561.P11159400437327395680

/-! ## A213561.P7740073756821650392

`A038572(A213505(n+1)+A213503(n+1))`
-/

namespace A213561.P7740073756821650392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213505 (n + 1) + A213503 (n + 1)).toNat

end

end A213561.P7740073756821650392

/-!
# A213562: Principal diagonal of the convolution array A213561.

The programs for A213562, the canonical program `A213562.P9261893149142617996` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213562 has offset 1).

The definition of A213562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213562.P9261893149142617996

`∑[(n+1)^4+n*∑[n²]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213562

/-- `∑[(n+1)^4+n*∑[n²]]` -/
def P9261893149142617996.Spec : Prop :=
  ∀ n, (P9261893149142617996.a n : ℤ) = A213562 (n + 1)

theorem P9261893149142617996.correct : P9261893149142617996.Spec := by
  intro n
  simp only [A213562, Nat.add_sub_cancel]

end A213562

/-! ## A213562.P9463042085890196624

`2*A085461(n+1)-A006322(n+1)`
-/

namespace A213562.P9463042085890196624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085461 (n + 1) - A006322 (n + 1)

end

end A213562.P9463042085890196624

namespace A213562

/-- `2*A085461(n+1)-A006322(n+1)` -/
def P9463042085890196624.Spec : Prop :=
  ∀ n, P9463042085890196624.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P16743340494486103932

`A213565(n+1)-A000217(n+1)*A000217(n)`
-/

namespace A213562.P16743340494486103932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213565 (n + 1) - A000217 (n + 1) * A000217 n

end

end A213562.P16743340494486103932

namespace A213562

/-- `A213565(n+1)-A000217(n+1)*A000217(n)` -/
def P16743340494486103932.Spec : Prop :=
  ∀ n, P16743340494486103932.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P17423994470426600133

`A085462(n+1)+A085463(n+1)-A006322(n+1)`
-/

namespace A213562.P17423994470426600133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) + (A085463 (n + 1) - A006322 (n + 1))

end

end A213562.P17423994470426600133

namespace A213562

/-- `A085462(n+1)+A085463(n+1)-A006322(n+1)` -/
def P17423994470426600133.Spec : Prop :=
  ∀ n, P17423994470426600133.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P7711370936850733385

`A207361(n)+A000538(n+1)`
-/

namespace A213562.P7711370936850733385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 n + A000538 (n + 1)

end

end A213562.P7711370936850733385

namespace A213562

/-- `A207361(n)+A000538(n+1)` -/
def P7711370936850733385.Spec : Prop :=
  ∀ n, P7711370936850733385.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P14301201362774176979

`Δ[A006332(n)]-A006322(n+1)`
-/

namespace A213562.P14301201362774176979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006322 (n + 1)

end

end A213562.P14301201362774176979

namespace A213562

/-- `Δ[A006332(n)]-A006322(n+1)` -/
def P14301201362774176979.Spec : Prop :=
  ∀ n, P14301201362774176979.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P3127160456948940172

`A000538(n+1)+∑[n*A000330(n)]`
-/

namespace A213562.P3127160456948940172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213562.P3127160456948940172

namespace A213562

/-- `A000538(n+1)+∑[n*A000330(n)]` -/
def P3127160456948940172.Spec : Prop :=
  ∀ n, P3127160456948940172.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P8088940626151426788

`∑[A002415(n)]+(n+1)*A000537(n+1)`
-/

namespace A213562.P8088940626151426788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ) * A000537 (n + 1)

end

end A213562.P8088940626151426788

namespace A213562

/-- `∑[A002415(n)]+(n+1)*A000537(n+1)` -/
def P8088940626151426788.Spec : Prop :=
  ∀ n, P8088940626151426788.a n = A213562 (n + 1)

end A213562

/-! ## A213562.P15224187557777356707

`(A005585(2*n+1)+A000537(n+1))/2`
-/

namespace A213562.P15224187557777356707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005585 (2 * n + 1) + A000537 (n + 1) : ℚ) / 2

end

end A213562.P15224187557777356707

namespace A213562

/-- `(A005585(2*n+1)+A000537(n+1))/2` -/
def P15224187557777356707.Spec : Prop :=
  ∀ n, P15224187557777356707.a n = (A213562 (n + 1) : ℚ)

end A213562

/-! ## A213562.P18144384219570607465

`A213561((n+1)²+n²)`
-/

namespace A213562.P18144384219570607465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213561 ((n + 1) ^ 2 + n ^ 2)

end

end A213562.P18144384219570607465

namespace A213562

/-- `A213561((n+1)²+n²)` -/
def P18144384219570607465.Spec : Prop :=
  ∀ n, P18144384219570607465.a n = A213562 (n + 1)

end A213562

/-!
# A213563: Antidiagonal sums of the convolution array A213561.

The programs for A213563, the canonical program `A213563.P5878924347788991499` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213563 has offset 1).

The definition of A213563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213563.P5878924347788991499

`∑[∑[∑[∑[Δ[n^3]-n]]]]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213563

/-- `∑[∑[∑[∑[Δ[n^3]-n]]]]` -/
def P5878924347788991499.Spec : Prop :=
  ∀ n, P5878924347788991499.a n = A213563 (n + 1)

theorem P5878924347788991499.correct : P5878924347788991499.Spec := by
  intro n
  simp only [A213563, Nat.add_sub_cancel]

end A213563

/-! ## A213563.P16731330961811681431

`A271663(n)+a(n-1)` with `a(0)=1`
-/

namespace A213563.P16731330961811681431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271663 n + a (n - 1)

end

end A213563.P16731330961811681431

namespace A213563

/-- `A271663(n)+a(n-1)` -/
def P16731330961811681431.Spec : Prop :=
  ∀ n, P16731330961811681431.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P3844601280472119119

`A006414(n)+∑[∑[∑[n]²]]`
-/

namespace A213563.P3844601280472119119
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213563.P3844601280472119119

namespace A213563

/-- `A006414(n)+∑[∑[∑[n]²]]` -/
def P3844601280472119119.Spec : Prop :=
  ∀ n, P3844601280472119119.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P326038898316375977

`A051923(n)+∑[A051836(n)]`
-/

namespace A213563.P326038898316375977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213563.P326038898316375977

namespace A213563

/-- `A051923(n)+∑[A051836(n)]` -/
def P326038898316375977.Spec : Prop :=
  ∀ n, P326038898316375977.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P3078971814856888089

`A027810(n)-A277935(n+1)`
-/

namespace A213563.P3078971814856888089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027810 n - A277935 (n + 1)

end

end A213563.P3078971814856888089

namespace A213563

/-- `A027810(n)-A277935(n+1)` -/
def P3078971814856888089.Spec : Prop :=
  ∀ n, P3078971814856888089.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P7593982258434845580

`(A213547(n+1)+A033455(n+1))/2`
-/

namespace A213563.P7593982258434845580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213547 (n + 1) + A033455 (n + 1) : ℚ) / 2

end

end A213563.P7593982258434845580

namespace A213563

/-- `(A213547(n+1)+A033455(n+1))/2` -/
def P7593982258434845580.Spec : Prop :=
  ∀ n, P7593982258434845580.a n = (A213563 (n + 1) : ℚ)

end A213563

/-! ## A213563.P15866590962159821414

`A050404(n)-(A277935(n+1)+∑[A277935(n+1)])`
-/

namespace A213563.P15866590962159821414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050404 n - (A277935 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213563.P15866590962159821414

namespace A213563

/-- `A050404(n)-(A277935(n+1)+∑[A277935(n+1)])` -/
def P15866590962159821414.Spec : Prop :=
  ∀ n, P15866590962159821414.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P5093711594697134202

`A051923(n)+A051923(n)-A051836(n+1)`
-/

namespace A213563.P5093711594697134202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 n + (A051923 n - A051836 (n + 1))

end

end A213563.P5093711594697134202

namespace A213563

/-- `A051923(n)+A051923(n)-A051836(n+1)` -/
def P5093711594697134202.Spec : Prop :=
  ∀ n, P5093711594697134202.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P2361419837496103286

`A259181(n+1)+A259181(n+1)-A040977(n)`
-/

namespace A213563.P2361419837496103286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (n + 1) + (A259181 (n + 1) - A040977 n)

end

end A213563.P2361419837496103286

namespace A213563

/-- `A259181(n+1)+A259181(n+1)-A040977(n)` -/
def P2361419837496103286.Spec : Prop :=
  ∀ n, P2361419837496103286.a n = A213563 (n + 1)

end A213563

/-! ## A213563.P10859379173291769376

`A005585(n+1)+A101094(n+1)-A051836(n+1)`
-/

namespace A213563.P10859379173291769376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A101094 (n + 1) - A051836 (n + 1))

end

end A213563.P10859379173291769376

namespace A213563

/-- `A005585(n+1)+A101094(n+1)-A051836(n+1)` -/
def P10859379173291769376.Spec : Prop :=
  ∀ n, P10859379173291769376.a n = A213563 (n + 1)

end A213563

/-!
# A213564: Rectangular array: (row n) = b**c, where b(h) = h*(h+1)/2, c(h) = (n-1+h)^2, n>=1, h>=1, and ** = convolution.

The programs for A213564, there is no canonical definition to state claims against.
-/

/-! ## A213564.P14986675310118969369

`(A213505(n+1)+A212891(n+1))/2`
-/

namespace A213564.P14986675310118969369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213505 (n + 1) + A212891 (n + 1) : ℚ) / 2

end

end A213564.P14986675310118969369

/-! ## A213564.P14067913691961979374

`2*A213551(n+1)-A213550(n+1)`
-/

namespace A213564.P14067913691961979374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213551 (n + 1) - A213550 (n + 1)

end

end A213564.P14067913691961979374

/-! ## A213564.P6384142611171117189

`A213548(n+1)+A213561(n+1)-A213550(n+1)`
-/

namespace A213564.P6384142611171117189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + (A213561 (n + 1) - A213550 (n + 1))

end

end A213564.P6384142611171117189

/-! ## A213564.P12068189517475164630

`A213561(n+1)+A014682(A212891(n+1)-A213503(n+1))`
-/

namespace A213564.P12068189517475164630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213561 (n + 1) + A014682 (A212891 (n + 1) - A213503 (n + 1)).toNat

end

end A213564.P12068189517475164630

/-! ## A213564.P13039648122603109262

`A212891(n+1)+A014682(A213505(n+1)-A212891(n+1))`
-/

namespace A213564.P13039648122603109262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212891 (n + 1) + A014682 (A213505 (n + 1) - A212891 (n + 1)).toNat

end

end A213564.P13039648122603109262

/-! ## A213564.P6766718337948915901

`A014682(A213505(n+1)+A212891(n+1))`
-/

namespace A213564.P6766718337948915901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213505 (n + 1) + A212891 (n + 1)).toNat

end

end A213564.P6766718337948915901

/-! ## A213564.P10476348780057703322

`A213548(n+1)+A014682(A213505(n+1)-A213500(n+1))`
-/

namespace A213564.P10476348780057703322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + A014682 (A213505 (n + 1) - A213500 (n + 1)).toNat

end

end A213564.P10476348780057703322

/-! ## A213564.P3260674535243809652

`A004277(A213551(n+1))-A213550(n+1)`
-/

namespace A213564.P3260674535243809652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213551 (n + 1)).toNat - A213550 (n + 1)

end

end A213564.P3260674535243809652

/-! ## A213564.P18408222959142908685

`A212891(n+1)+A038572(A213505(n+1)-A212891(n+1))`
-/

namespace A213564.P18408222959142908685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212891 (n + 1) + A038572 (A213505 (n + 1) - A212891 (n + 1)).toNat

end

end A213564.P18408222959142908685

/-! ## A213564.P5938831117860283407

`A038572(A213505(n+1)+A212891(n+1))`
-/

namespace A213564.P5938831117860283407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213505 (n + 1) + A212891 (n + 1)).toNat

end

end A213564.P5938831117860283407

/-!
# A213565: Principal diagonal of the convolution array A213564.

The programs for A213565, the canonical program `A213565.P15345547237194828544` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213565 has offset 1).

The definition of A213565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213565.P15345547237194828544

`(n+1)*(n+2)*(n+3)*((n+1)*(32*(n+1)-11)-1)/120`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213565

/-- `(n+1)*(n+2)*(n+3)*((n+1)*(32*(n+1)-11)-1)/120` -/
def P15345547237194828544.Spec : Prop :=
  ∀ n, P15345547237194828544.a n = (A213565 (n + 1) : ℚ)

end A213565

/-! ## A213565.P17958701922740861457

`2*A225007(n)-A051740(n)`
-/

namespace A213565.P17958701922740861457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225007 n - A051740 n

end

end A213565.P17958701922740861457

namespace A213565

/-- `2*A225007(n)-A051740(n)` -/
def P17958701922740861457.Spec : Prop :=
  ∀ n, P17958701922740861457.a n = A213565 (n + 1)

end A213565

/-! ## A213565.P17731199025249782091

`A271567(n)+n*A033488(n)`
-/

namespace A213565.P17731199025249782091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n + (n : ℤ) * A033488 n

end

end A213565.P17731199025249782091

namespace A213565

/-- `A271567(n)+n*A033488(n)` -/
def P17731199025249782091.Spec : Prop :=
  ∀ n, P17731199025249782091.a n = A213565 (n + 1)

end A213565

/-! ## A213565.P4488238054757572327

`(A213546(n+1)+A213436(n+1))/2`
-/

namespace A213565.P4488238054757572327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213546 (n + 1) + A213436 (n + 1) : ℚ) / 2

end

end A213565.P4488238054757572327

namespace A213565

/-- `(A213546(n+1)+A213436(n+1))/2` -/
def P4488238054757572327.Spec : Prop :=
  ∀ n, P4488238054757572327.a n = (A213565 (n + 1) : ℚ)

end A213565

/-! ## A213565.P17650046018177077683

`A213562(n+1)+A000217(n+1)*A000217(n)`
-/

namespace A213565.P17650046018177077683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213562 (n + 1) + A000217 (n + 1) * A000217 n

end

end A213565.P17650046018177077683

namespace A213565

/-- `A213562(n+1)+A000217(n+1)*A000217(n)` -/
def P17650046018177077683.Spec : Prop :=
  ∀ n, P17650046018177077683.a n = A213565 (n + 1)

end A213565

/-! ## A213565.P1961080027380253

`A002299(n)+A000332(n+2)`
-/

namespace A213565.P1961080027380253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002299 n + A000332 (n + 2)

end

end A213565.P1961080027380253

namespace A213565

/-- `A002299(n)+A000332(n+2)` -/
def P1961080027380253.Spec : Prop :=
  ∀ n, P1961080027380253.a n = A213565 (n + 1)

end A213565

/-! ## A213565.P4302966755035011119

`A213564((n+1)²+n²)`
-/

namespace A213565.P4302966755035011119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213564 ((n + 1) ^ 2 + n ^ 2)

end

end A213565.P4302966755035011119

namespace A213565

/-- `A213564((n+1)²+n²)` -/
def P4302966755035011119.Spec : Prop :=
  ∀ n, P4302966755035011119.a n = A213565 (n + 1)

end A213565

/-!
# A213567: Principal diagonal of the convolution array A213566.

The programs for A213567, there is no canonical definition to state claims against.
-/

/-! ## A213567.P3426106151677600276

`A213566(∑[4*n]+1)`
-/

namespace A213567.P3426106151677600276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213566 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213567.P3426106151677600276

/-! ## A213567.P17278893815091982014

`lcm(A033999(n), A213566(A001844(n)))`
-/

namespace A213567.P17278893815091982014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A213566 (A001844 n).toNat)

end

end A213567.P17278893815091982014

/-! ## A213567.P14344080349675029844

`A213566(A001844(n))%A213470(n+1)`
-/

namespace A213567.P14344080349675029844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213566 (A001844 n).toNat) (A213470 (n + 1))

end

end A213567.P14344080349675029844

/-! ## A213567.P10452653452042869353

`A087039(A087039(n+1))*A213566(A001844(n))`
-/

namespace A213567.P10452653452042869353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A087039 (n + 1)).toNat * A213566 (A001844 n).toNat

end

end A213567.P10452653452042869353

/-! ## A213567.P10680743965059829092

`or(A219634(n+1)%2, A213566(A001844(n)))`
-/

namespace A213567.P10680743965059829092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A219634 (n + 1)) 2) (A213566 (A001844 n).toNat)

end

end A213567.P10680743965059829092

/-!
# A213568: Rectangular array: (row n) = b**c, where b(h) = 2^(h-1), c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213568, there is no canonical definition to state claims against.
-/

/-! ## A213568.P7166501271482337602

`(A213762(n+1)+A130330(n))/2`
-/

namespace A213568.P7166501271482337602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213762 (n + 1) + A130330 n : ℚ) / 2

end

end A213568.P7166501271482337602

/-! ## A213568.P9717375054995861217

`(A213582(n+1)+A049777(n+1))/2`
-/

namespace A213568.P9717375054995861217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213582 (n + 1) + A049777 (n + 1) : ℚ) / 2

end

end A213568.P9717375054995861217

/-! ## A213568.P3159628835407679829

`∑{d}[A140513(n), A130330(n)%#]`
-/

namespace A213568.P3159628835407679829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A130330 n) (d : ℤ)

end

end A213568.P3159628835407679829

/-! ## A213568.P6190846169625712005

`A130330(n)+A014682(A213762(n+1)-A130330(n))`
-/

namespace A213568.P6190846169625712005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n + A014682 (A213762 (n + 1) - A130330 n).toNat

end

end A213568.P6190846169625712005

/-! ## A213568.P9011998261984891010

`A273943(A213762(n+1)-A130330(n))+A130330(n)`
-/

namespace A213568.P9011998261984891010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213762 (n + 1) - A130330 n).toNat + A130330 n

end

end A213568.P9011998261984891010

/-! ## A213568.P4695152193398151527

`A014682(A213762(n+1)+A130330(n))`
-/

namespace A213568.P4695152193398151527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213762 (n + 1) + A130330 n).toNat

end

end A213568.P4695152193398151527

/-! ## A213568.P6286321590034574148

`A273943(A213762(n+1)+A130330(n))`
-/

namespace A213568.P6286321590034574148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213762 (n + 1) + A130330 n).toNat

end

end A213568.P6286321590034574148

/-! ## A213568.P2464377835554485595

`A014682(A213582(n+1)+A049777(n+1))`
-/

namespace A213568.P2464377835554485595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213582 (n + 1) + A049777 (n + 1)).toNat

end

end A213568.P2464377835554485595

/-! ## A213568.P3339436111200868560

`A273943(A213582(n+1)+A049777(n+1))`
-/

namespace A213568.P3339436111200868560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213582 (n + 1) + A049777 (n + 1)).toNat

end

end A213568.P3339436111200868560

/-! ## A213568.P10350066232599293789

`A130330(n)+A038572(A213762(n+1)-A130330(n))`
-/

namespace A213568.P10350066232599293789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n + A038572 (A213762 (n + 1) - A130330 n).toNat

end

end A213568.P10350066232599293789

/-!
# A213569: Principal diagonal of the convolution array A213568.

The programs for A213569, the canonical program `A213569.P17228227837292811730` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213569 has offset 1).

The definition of A213569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213569.P17228227837292811730

`2^(n+1)*(n+2)-(2*(n+1)+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213569

/-- `2^(n+1)*(n+2)-(2*(n+1)+1)` -/
def P17228227837292811730.Spec : Prop :=
  ∀ n, P17228227837292811730.a n = A213569 (n + 1)

theorem P17228227837292811730.correct : P17228227837292811730.Spec := by
  intro n
  simp only [A213569, Nat.add_sub_cancel]

end A213569

/-! ## A213569.P9895123052613704792

`record[1-n*A122958(n)]`
-/

namespace A213569.P9895123052613704792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213569.P9895123052613704792

namespace A213569

/-- `record[1-n*A122958(n)]` -/
def P9895123052613704792.Spec : Prop :=
  ∀ n, P9895123052613704792.a n = A213569 (n + 1)

end A213569

/-! ## A213569.P8072624000505405843

`record[A005183(n)-2*n]`
-/

namespace A213569.P8072624000505405843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213569.P8072624000505405843

namespace A213569

/-- `record[A005183(n)-2*n]` -/
def P8072624000505405843.Spec : Prop :=
  ∀ n, P8072624000505405843.a n = A213569 (n + 1)

end A213569

/-!
# A213570: Antidiagonal sums of the convolution array A213566.

The programs for A213570, the canonical program `A213570.P18187397949338464835` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213570 has offset 1).

The definition of A213570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213570.P18187397949338464835

`∑[∑[∑[A001060(n)+a(n-1)]]]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213570

/-- `∑[∑[∑[A001060(n)+a(n-1)]]]` -/
def P18187397949338464835.Spec : Prop :=
  ∀ n, P18187397949338464835.a n = A213570 (n + 1)

theorem P18187397949338464835.correct : P18187397949338464835.Spec := by
  intro n
  simp only [A213570, Nat.add_sub_cancel]

end A213570

/-! ## A213570.P16020013356878995556

`∑[∑[∑[A013655(n+1)+a(n-1)]]]` with `a(0)=1`
-/

namespace A213570.P16020013356878995556
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A013655 (n + 1) + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213570.P16020013356878995556

namespace A213570

/-- `∑[∑[∑[A013655(n+1)+a(n-1)]]]` -/
def P16020013356878995556.Spec : Prop :=
  ∀ n, P16020013356878995556.a n = A213570 (n + 1)

end A213570

/-! ## A213570.P15759360151129363763

`∑[∑[∑[A244472(n+2)]+a(n-1)]]` with `a(0)=1`
-/

namespace A213570.P15759360151129363763
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244472 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213570.P15759360151129363763

namespace A213570

/-- `∑[∑[∑[A244472(n+2)]+a(n-1)]]` -/
def P15759360151129363763.Spec : Prop :=
  ∀ n, P15759360151129363763.a n = A213570 (n + 1)

end A213570

/-! ## A213570.P16688778715032507085

`A000578(n+1)+a(n-2)+a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A213570.P16688778715032507085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A000578 (n + 1) + (a (n - 2) + a (n - 1))

end

end A213570.P16688778715032507085

namespace A213570

/-- `A000578(n+1)+a(n-2)+a(n-1)` -/
def P16688778715032507085.Spec : Prop :=
  ∀ n, P16688778715032507085.a n = A213570 (n + 1)

end A213570

/-! ## A213570.P295710620114278845

`A193007(n+2)+A000071(n+1)`
-/

namespace A213570.P295710620114278845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193007 (n + 2) + A000071 (n + 1)

end

end A213570.P295710620114278845

namespace A213570

/-- `A193007(n+2)+A000071(n+1)` -/
def P295710620114278845.Spec : Prop :=
  ∀ n, P295710620114278845.a n = A213570 (n + 1)

end A213570

/-! ## A213570.P12079350461185757320

`A193005(n+2)-A000045(n+2)`
-/

namespace A213570.P12079350461185757320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193005 (n + 2) - A000045 (n + 2)

end

end A213570.P12079350461185757320

namespace A213570

/-- `A193005(n+2)-A000045(n+2)` -/
def P12079350461185757320.Spec : Prop :=
  ∀ n, P12079350461185757320.a n = A213570 (n + 1)

end A213570

/-! ## A213570.P7823558826032748632

`∑[A213770(n+1)+∑[A001891(n)]]`
-/

namespace A213570.P7823558826032748632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213770 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213570.P7823558826032748632

namespace A213570

/-- `∑[A213770(n+1)+∑[A001891(n)]]` -/
def P7823558826032748632.Spec : Prop :=
  ∀ n, P7823558826032748632.a n = A213570 (n + 1)

end A213570

/-! ## A213570.P3081407574916190633

`A193006(n+1)+A193006(n)+A193005(n)`
-/

namespace A213570.P3081407574916190633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193006 (n + 1) + (A193006 n + A193005 n)

end

end A213570.P3081407574916190633

namespace A213570

/-- `A193006(n+1)+A193006(n)+A193005(n)` -/
def P3081407574916190633.Spec : Prop :=
  ∀ n, P3081407574916190633.a n = A213570 (n + 1)

end A213570

/-!
# A213571: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = (n-1+h)^2, n>=1, h>=1, and ** = convolution.

The programs for A213571, there is no canonical definition to state claims against.
-/

/-! ## A213571.P3282293257258670228

`∑{d}[A182944(n+1), A323247(#)]`
-/

namespace A213571.P3282293257258670228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323247 d

end

end A213571.P3282293257258670228

/-! ## A213571.P17047938324829261897

`A330072(A130328(n))`
-/

namespace A213571.P17047938324829261897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330072 (A130328 n).toNat

end

end A213571.P17047938324829261897

/-!
# A213572: Principal diagonal of the convolution array A213571.

The programs for A213572, the canonical program `A213572.P8839424250080247828` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213572 has offset 1).

The definition of A213572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213572.P8839424250080247828

`(2^(n+3)*(2^(n+1)-1)-(2^(n+2)+n+2)*(n+1))/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213572

/-- `(2^(n+3)*(2^(n+1)-1)-(2^(n+2)+n+2)*(n+1))/2` -/
def P8839424250080247828.Spec : Prop :=
  ∀ n, P8839424250080247828.a n = (A213572 (n + 1) : ℚ)

end A213572

/-! ## A213572.P14722762913940605

`record[A288687(n)-∑[n]]`
-/

namespace A213572.P14722762913940605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288687 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213572.P14722762913940605

namespace A213572

/-- `record[A288687(n)-∑[n]]` -/
def P14722762913940605.Spec : Prop :=
  ∀ n, P14722762913940605.a n = A213572 (n + 1)

end A213572

/-! ## A213572.P13887935999869629047

`A000431(n+3)-∑[n+1]`
-/

namespace A213572.P13887935999869629047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000431 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213572.P13887935999869629047

namespace A213572

/-- `A000431(n+3)-∑[n+1]` -/
def P13887935999869629047.Spec : Prop :=
  ∀ n, P13887935999869629047.a n = A213572 (n + 1)

end A213572

/-! ## A213572.P278358864034476967

`A064671(n+2)-∑[n+2]`
-/

namespace A213572.P278358864034476967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064671 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213572.P278358864034476967

namespace A213572

/-- `A064671(n+2)-∑[n+2]` -/
def P278358864034476967.Spec : Prop :=
  ∀ n, P278358864034476967.a n = A213572 (n + 1)

end A213572

/-! ## A213572.P8897343536878476537

`∑[A000079(n)*A095151(n+1)-(n+1)]`
-/

namespace A213572.P8897343536878476537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A095151 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213572.P8897343536878476537

namespace A213572

/-- `∑[A000079(n)*A095151(n+1)-(n+1)]` -/
def P8897343536878476537.Spec : Prop :=
  ∀ n, P8897343536878476537.a n = A213572 (n + 1)

end A213572

/-! ## A213572.P12393424823290323735

`∑[A000225(n+1)]*A000079(n+1)-∑[n+1]`
-/

namespace A213572.P12393424823290323735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213572.P12393424823290323735

namespace A213572

/-- `∑[A000225(n+1)]*A000079(n+1)-∑[n+1]` -/
def P12393424823290323735.Spec : Prop :=
  ∀ n, P12393424823290323735.a n = A213572 (n + 1)

end A213572

/-! ## A213572.P14216680320982697901

`A213571((n+1)²+n²)`
-/

namespace A213572.P14216680320982697901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213571 ((n + 1) ^ 2 + n ^ 2)

end

end A213572.P14216680320982697901

namespace A213572

/-- `A213571((n+1)²+n²)` -/
def P14216680320982697901.Spec : Prop :=
  ∀ n, P14216680320982697901.a n = A213572 (n + 1)

end A213572

/-!
# A213574: Principal diagonal of the convolution array A213573.

The programs for A213574, the canonical program `A213574.P17669493640781451891` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213574 has offset 1).

The definition of A213574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213574.P17669493640781451891

`2^(n+1)*(3+2*(n+1)+(n+1)²)-(3+4*(n+1)+4*(n+1)²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213574

/-- `2^(n+1)*(3+2*(n+1)+(n+1)²)-(3+4*(n+1)+4*(n+1)²)` -/
def P17669493640781451891.Spec : Prop :=
  ∀ n, P17669493640781451891.a n = A213574 (n + 1)

theorem P17669493640781451891.correct : P17669493640781451891.Spec := by
  intro n
  simp only [A213574, Nat.add_sub_cancel]

end A213574

/-! ## A213574.P15547443971164046070

`A213573((n+1)²+n²)`
-/

namespace A213574.P15547443971164046070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213573 ((n + 1) ^ 2 + n ^ 2)

end

end A213574.P15547443971164046070

namespace A213574

/-- `A213573((n+1)²+n²)` -/
def P15547443971164046070.Spec : Prop :=
  ∀ n, P15547443971164046070.a n = A213574 (n + 1)

end A213574

/-! ## A213574.P14818486511181736946

`or(1, A213573(A001844(n)))`
-/

namespace A213574.P14818486511181736946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A213573 (A001844 n).toNat)

end

end A213574.P14818486511181736946

namespace A213574

/-- `or(1, A213573(A001844(n)))` -/
def P14818486511181736946.Spec : Prop :=
  ∀ n, P14818486511181736946.a n = A213574 (n + 1)

end A213574

/-! ## A213574.P17085269465152425693

`A213573(A001844(n))%A213470(n+1)`
-/

namespace A213574.P17085269465152425693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213573 (A001844 n).toNat) (A213470 (n + 1))

end

end A213574.P17085269465152425693

namespace A213574

/-- `A213573(A001844(n))%A213470(n+1)` -/
def P17085269465152425693.Spec : Prop :=
  ∀ n, P17085269465152425693.a n = A213574 (n + 1)

end A213574

/-!
# A213575: Antidiagonal sums of the convolution array A213573.

The programs for A213575, the canonical program `A213575.P16336447600822375291` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213575 has offset 1).

The definition of A213575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213575.P16336447600822375291

`2*a(n-1)+(n+1)^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213575

/-- `2*a(n-1)+(n+1)^3` -/
def P16336447600822375291.Spec : Prop :=
  ∀ n, (P16336447600822375291.a n : ℤ) = A213575 (n + 1)

theorem P16336447600822375291.correct : P16336447600822375291.Spec := by
  intro n
  simp only [A213575, Nat.add_sub_cancel]

end A213575

/-! ## A213575.P14418607505313520255

`2^(n+2)*13-((n+1)^3+6*(n+1)²+18*(n+1)+26)`
-/

namespace A213575.P14418607505313520255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) * 13 : ℤ) - ((n + 1) ^ 3 + 6 * (n + 1) ^ 2 + 18 * (n + 1) + 26 : ℤ)

end

end A213575.P14418607505313520255

namespace A213575

/-- `2^(n+2)*13-((n+1)^3+6*(n+1)²+18*(n+1)+26)` -/
def P14418607505313520255.Spec : Prop :=
  ∀ n, P14418607505313520255.a n = A213575 (n + 1)

theorem P14418607505313520255.correct : P14418607505313520255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A213575, Nat.add_sub_cancel, A213575.P14418607505313520255.a, A213575.P16336447600822375291.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A213575, Nat.add_sub_cancel, A213575.P14418607505313520255.a, A213575.P16336447600822375291.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213575

/-! ## A213575.P12120200141172752436

`∑[∑[∑[ogf((1+4x+x^2)/(1-3x+2x^2))]]]`
-/

namespace A213575.P12120200141172752436
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, 2] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213575.P12120200141172752436

namespace A213575

/-- `∑[∑[∑[ogf((1+4x+x^2)/(1-3x+2x^2))]]]` -/
def P12120200141172752436.Spec : Prop :=
  ∀ n, P12120200141172752436.a n = A213575 (n + 1)

end A213575

/-! ## A213575.P14384469229816555496

`∑[∑[∑[2*(a(n-1)+3)]]]` with `a(0)=1, a(1)=7`
-/

namespace A213575.P14384469229816555496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f3 =>
  2 * (f3 (n - 1) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213575.P14384469229816555496

namespace A213575

/-- `∑[∑[∑[2*(a(n-1)+3)]]]` -/
def P14384469229816555496.Spec : Prop :=
  ∀ n, (P14384469229816555496.a n : ℤ) = A213575 (n + 1)

end A213575

/-! ## A213575.P15617424896863907899

`∑[A257448(n+1)]`
-/

namespace A213575.P15617424896863907899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213575.P15617424896863907899

namespace A213575

/-- `∑[A257448(n+1)]` -/
def P15617424896863907899.Spec : Prop :=
  ∀ n, P15617424896863907899.a n = A213575 (n + 1)

end A213575

/-! ## A213575.P17672426325091237848

`∑[∑[∑[A100206(n)]+1]]`
-/

namespace A213575.P17672426325091237848
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213575.P17672426325091237848

namespace A213575

/-- `∑[∑[∑[A100206(n)]+1]]` -/
def P17672426325091237848.Spec : Prop :=
  ∀ n, P17672426325091237848.a n = A213575 (n + 1)

end A213575

/-! ## A213575.P1698180501242350980

`∑[A213764(n+1)+A047520(n)]`
-/

namespace A213575.P1698180501242350980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213764 (n + 1) + A047520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213575.P1698180501242350980

namespace A213575

/-- `∑[A213764(n+1)+A047520(n)]` -/
def P1698180501242350980.Spec : Prop :=
  ∀ n, P1698180501242350980.a n = A213575 (n + 1)

end A213575

/-!
# A213576: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = F(n-1+h), where F=A000045 (Fibonacci numbers), n >= 1, h >= 1, and ** = convolution.

The programs for A213576, there is no canonical definition to state claims against.
-/

/-! ## A213576.P3574633493681361848

`(A213765(n+1)+A204922(n+1))/2`
-/

namespace A213576.P3574633493681361848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213765 (n + 1) + A204922 (n + 1) : ℚ) / 2

end

end A213576.P3574633493681361848

/-! ## A213576.P9615090200836198544

`A204922(n+1)+A014682(A213765(n+1)-A204922(n+1))`
-/

namespace A213576.P9615090200836198544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A014682 (A213765 (n + 1) - A204922 (n + 1)).toNat

end

end A213576.P9615090200836198544

/-! ## A213576.P8020362903819358305

`A014682(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P8020362903819358305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P8020362903819358305

/-! ## A213576.P13539565407550328297

`A204922(n+1)+A038572(A213765(n+1)-A204922(n+1))`
-/

namespace A213576.P13539565407550328297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A038572 (A213765 (n + 1) - A204922 (n + 1)).toNat

end

end A213576.P13539565407550328297

/-! ## A213576.P14558889803893903327

`A038572(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P14558889803893903327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P14558889803893903327

/-! ## A213576.P14416448842251425908

`A204922(n+1)+A004525(A213765(n+1)-A204922(n+1))`
-/

namespace A213576.P14416448842251425908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A004525 (A213765 (n + 1) - A204922 (n + 1)).toNat

end

end A213576.P14416448842251425908

/-! ## A213576.P17758211718591977409

`A204922(n+1)+A025480(A213765(n+1)-A204922(n+1))`
-/

namespace A213576.P17758211718591977409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A025480 (A213765 (n + 1) - A204922 (n + 1)).toNat

end

end A213576.P17758211718591977409

/-! ## A213576.P7025363433325550508

`A204922(n+1)+A026741(A213765(n+1)-A204922(n+1))`
-/

namespace A213576.P7025363433325550508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A026741 (A213765 (n + 1) - A204922 (n + 1)).toNat

end

end A213576.P7025363433325550508

/-! ## A213576.P1281670909236424919

`A204922(n+1)+A029578(A213765(n+1)-A204922(n+1))`
-/

namespace A213576.P1281670909236424919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) + A029578 (A213765 (n + 1) - A204922 (n + 1)).toNat

end

end A213576.P1281670909236424919

/-! ## A213576.P13895569540900358472

`A004525(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P13895569540900358472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P13895569540900358472

/-! ## A213576.P12508063930422487435

`A004526(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P12508063930422487435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P12508063930422487435

/-! ## A213576.P5031652711922366416

`A025480(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P5031652711922366416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P5031652711922366416

/-! ## A213576.P7698907272074243718

`A026741(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P7698907272074243718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P7698907272074243718

/-! ## A213576.P17528299841025638299

`A029578(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P17528299841025638299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P17528299841025638299

/-! ## A213576.P8134185270029646598

`A032742(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P8134185270029646598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P8134185270029646598

/-! ## A213576.P708700465056293230

`A110654(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P708700465056293230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P708700465056293230

/-! ## A213576.P18399926541517967553

`A252759(A213765(n+1)+A204922(n+1))`
-/

namespace A213576.P18399926541517967553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A213765 (n + 1) + A204922 (n + 1)).toNat

end

end A213576.P18399926541517967553

/-!
# A213577: Principal diagonal of the convolution array A213576.

The programs for A213577, the canonical program `A213577.P16976482993610206875` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213577 has offset 1).

The definition of A213577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213577.P16976482993610206875

`A023860(Δ[n²])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213577

/-- `A023860(Δ[n²])` -/
def P16976482993610206875.Spec : Prop :=
  ∀ n, P16976482993610206875.a n = A213577 (n + 1)

theorem P16976482993610206875.correct : P16976482993610206875.Spec := by
  intro n
  simp only [A213577, Nat.add_sub_cancel]

end A213577

/-! ## A213577.P15577095853244995807

`record[log2(gcd(2, n))*A023860(n+1)]`
-/

namespace A213577.P15577095853244995807
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A023860 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213577.P15577095853244995807

namespace A213577

/-- `record[log2(gcd(2, n))*A023860(n+1)]` -/
def P15577095853244995807.Spec : Prop :=
  ∀ n, P15577095853244995807.a n = (A213577 (n + 1) : ℝ)

end A213577

/-! ## A213577.P136397927921488898

`A023860(2*n+1)+(6*n)%2`
-/

namespace A213577.P136397927921488898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (2 * n + 1) + ((6 * n % 2 : ℕ) : ℤ)

end

end A213577.P136397927921488898

namespace A213577

/-- `A023860(2*n+1)+(6*n)%2` -/
def P136397927921488898.Spec : Prop :=
  ∀ n, P136397927921488898.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P17753962343565474152

`record[A023860(A141310(n))]`
-/

namespace A213577.P17753962343565474152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213577.P17753962343565474152

namespace A213577

/-- `record[A023860(A141310(n))]` -/
def P17753962343565474152.Spec : Prop :=
  ∀ n, P17753962343565474152.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P5319952094253569491

`A120297(n+1)-A014286(n)`
-/

namespace A213577.P5319952094253569491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120297 (n + 1) - A014286 n

end

end A213577.P5319952094253569491

namespace A213577

/-- `A120297(n+1)-A014286(n)` -/
def P5319952094253569491.Spec : Prop :=
  ∀ n, P5319952094253569491.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P5944806097640976096

`record[A023860((n+1)/A000034(n))]`
-/

namespace A213577.P5944806097640976096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213577.P5944806097640976096

namespace A213577

/-- `record[A023860((n+1)/A000034(n))]` -/
def P5944806097640976096.Spec : Prop :=
  ∀ n, P5944806097640976096.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P5066166504775158353

`A024309(2*n+1)-A129361(2*n)`
-/

namespace A213577.P5066166504775158353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (2 * n + 1) - A129361 (2 * n)

end

end A213577.P5066166504775158353

namespace A213577

/-- `A024309(2*n+1)-A129361(2*n)` -/
def P5066166504775158353.Spec : Prop :=
  ∀ n, P5066166504775158353.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P16437761579331615493

`A023864(2*(n+1))-A023864(2*n+1)`
-/

namespace A213577.P16437761579331615493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (2 * (n + 1)) - A023864 (2 * n + 1)

end

end A213577.P16437761579331615493

namespace A213577

/-- `A023864(2*(n+1))-A023864(2*n+1)` -/
def P16437761579331615493.Spec : Prop :=
  ∀ n, P16437761579331615493.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P4413194033358294468

`A024861(2*(n+1))-A023860(2*(n+1))`
-/

namespace A213577.P4413194033358294468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (2 * (n + 1)) - A023860 (2 * (n + 1))

end

end A213577.P4413194033358294468

namespace A213577

/-- `A024861(2*(n+1))-A023860(2*(n+1))` -/
def P4413194033358294468.Spec : Prop :=
  ∀ n, P4413194033358294468.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P18021759209188037477

`A024858(2*(n+1))-A024861(2*(n+1))`
-/

namespace A213577.P18021759209188037477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024858 (2 * (n + 1)) - A024861 (2 * (n + 1))

end

end A213577.P18021759209188037477

namespace A213577

/-- `A024858(2*(n+1))-A024861(2*(n+1))` -/
def P18021759209188037477.Spec : Prop :=
  ∀ n, P18021759209188037477.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P2034440392574584951

`A024313(2*n+1)-2*A129361(2*n)`
-/

namespace A213577.P2034440392574584951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024313 (2 * n + 1) - 2 * A129361 (2 * n)

end

end A213577.P2034440392574584951

namespace A213577

/-- `A024313(2*n+1)-2*A129361(2*n)` -/
def P2034440392574584951.Spec : Prop :=
  ∀ n, P2034440392574584951.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P2156751263608084665

`2*A024309(2*n+1)-A024313(2*n+1)`
-/

namespace A213577.P2156751263608084665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024309 (2 * n + 1) - A024313 (2 * n + 1)

end

end A213577.P2156751263608084665

namespace A213577

/-- `2*A024309(2*n+1)-A024313(2*n+1)` -/
def P2156751263608084665.Spec : Prop :=
  ∀ n, P2156751263608084665.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P15166884385129543320

`2*A023860(2*n+1)/A000034(2*n+1)`
-/

namespace A213577.P15166884385129543320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A023860 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A213577.P15166884385129543320

namespace A213577

/-- `2*A023860(2*n+1)/A000034(2*n+1)` -/
def P15166884385129543320.Spec : Prop :=
  ∀ n, P15166884385129543320.a n = (A213577 (n + 1) : ℚ)

end A213577

/-! ## A213577.P3262717674698874626

`2*A023860(2*n+1)/A141310(2*n+1)`
-/

namespace A213577.P3262717674698874626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A023860 (2 * n + 1) : ℚ) / (A141310 (2 * n + 1) : ℚ)

end

end A213577.P3262717674698874626

namespace A213577

/-- `2*A023860(2*n+1)/A141310(2*n+1)` -/
def P3262717674698874626.Spec : Prop :=
  ∀ n, P3262717674698874626.a n = (A213577 (n + 1) : ℚ)

end A213577

/-! ## A213577.P11928832717265560337

`A024861(2*(n+1))+A024861(2*(n+1))-A024861(2*n+3)`
-/

namespace A213577.P11928832717265560337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024861 (2 * (n + 1)) + (A024861 (2 * (n + 1)) - A024861 (2 * n + 3))

end

end A213577.P11928832717265560337

namespace A213577

/-- `A024861(2*(n+1))+A024861(2*(n+1))-A024861(2*n+3)` -/
def P11928832717265560337.Spec : Prop :=
  ∀ n, P11928832717265560337.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P15869721548684893506

`2*A024861(2*(n+1))-A024861(2*n+3)`
-/

namespace A213577.P15869721548684893506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024861 (2 * (n + 1)) - A024861 (2 * n + 3)

end

end A213577.P15869721548684893506

namespace A213577

/-- `2*A024861(2*(n+1))-A024861(2*n+3)` -/
def P15869721548684893506.Spec : Prop :=
  ∀ n, P15869721548684893506.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P6667092126061671183

`gcd(A023860(2*n+1)*A023860(n+2), A023860(2*n+1))`
-/

namespace A213577.P6667092126061671183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023860 (2 * n + 1) * A023860 (n + 2)) (A023860 (2 * n + 1))

end

end A213577.P6667092126061671183

namespace A213577

/-- `gcd(A023860(2*n+1)*A023860(n+2), A023860(2*n+1))` -/
def P6667092126061671183.Spec : Prop :=
  ∀ n, (P6667092126061671183.a n : ℤ) = A213577 (n + 1)

end A213577

/-! ## A213577.P3525275001468519748

`round(A023864(2*n+1)²/A023864(2*n+2))`
-/

namespace A213577.P3525275001468519748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023864 (2 * n + 1) ^ 2 : ℚ) / (A023864 (2 * n + 2) : ℚ))

end

end A213577.P3525275001468519748

namespace A213577

/-- `round(A023864(2*n+1)²/A023864(2*n+2))` -/
def P3525275001468519748.Spec : Prop :=
  ∀ n, P3525275001468519748.a n = A213577 (n + 1)

end A213577

/-! ## A213577.P17183974843864531823

`A023860(2*n+1)²/A023860(A141310(2*n))`
-/

namespace A213577.P17183974843864531823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023860 (2 * n + 1) ^ 2 : ℚ) / (A023860 (A141310 (2 * n)).toNat : ℚ)

end

end A213577.P17183974843864531823

namespace A213577

/-- `A023860(2*n+1)²/A023860(A141310(2*n))` -/
def P17183974843864531823.Spec : Prop :=
  ∀ n, P17183974843864531823.a n = (A213577 (n + 1) : ℚ)

end A213577

/-! ## A213577.P3854156403659149312

`A023860(2*n+1)*A023864(2*n+1)/A023860(2*(n+1))`
-/

namespace A213577.P3854156403659149312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023860 (2 * n + 1) * A023864 (2 * n + 1) : ℚ) / (A023860 (2 * (n + 1)) : ℚ)

end

end A213577.P3854156403659149312

namespace A213577

/-- `A023860(2*n+1)*A023864(2*n+1)/A023860(2*(n+1))` -/
def P3854156403659149312.Spec : Prop :=
  ∀ n, P3854156403659149312.a n = (A213577 (n + 1) : ℚ)

end A213577

/-!
# A213578: Antidiagonal sums of the convolution array A213576.

The programs for A213578, the canonical program `A213578.P2537024937293826820` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213578 has offset 1).

The definition of A213578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213578.P2537024937293826820

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=34, a(4)=80, a(5)=174`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213578

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P2537024937293826820.Spec : Prop :=
  ∀ n, P2537024937293826820.a n = A213578 (n + 1)

theorem P2537024937293826820.correct : P2537024937293826820.Spec := by
  intro n
  simp only [A213578, Nat.add_sub_cancel]

end A213578

/-! ## A213578.P7026350430022963985

`∑[∑[(n+1)*∑[a(n-1)+a(n-2)]]]` with `a(0)=1, a(1)=0`
-/

namespace A213578.P7026350430022963985
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P7026350430022963985

namespace A213578

/-- `∑[∑[(n+1)*∑[a(n-1)+a(n-2)]]]` -/
def P7026350430022963985.Spec : Prop :=
  ∀ n, (P7026350430022963985.a n : ℤ) = A213578 (n + 1)

end A213578

/-! ## A213578.P5657117522490277170

`∑[A014286(n+1)]`
-/

namespace A213578.P5657117522490277170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P5657117522490277170

namespace A213578

/-- `∑[A014286(n+1)]` -/
def P5657117522490277170.Spec : Prop :=
  ∀ n, P5657117522490277170.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P1308418363519245432

`∑[∑[A045925(n+1)]]`
-/

namespace A213578.P1308418363519245432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P1308418363519245432

namespace A213578

/-- `∑[∑[A045925(n+1)]]` -/
def P1308418363519245432.Spec : Prop :=
  ∀ n, P1308418363519245432.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P6077879102504963410

`∑[∑[∑[A136391(n+1)]]]`
-/

namespace A213578.P6077879102504963410
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P6077879102504963410

namespace A213578

/-- `∑[∑[∑[A136391(n+1)]]]` -/
def P6077879102504963410.Spec : Prop :=
  ∀ n, P6077879102504963410.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P1887902811064828367

`∑[∑[(n+1)*∑[A212804(n)]]]`
-/

namespace A213578.P1887902811064828367
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P1887902811064828367

namespace A213578

/-- `∑[∑[(n+1)*∑[A212804(n)]]]` -/
def P1887902811064828367.Spec : Prop :=
  ∀ n, P1887902811064828367.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P12627598741731592062

`∑[∑[(n+1)*A000045(n+1)]]`
-/

namespace A213578.P12627598741731592062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P12627598741731592062

namespace A213578

/-- `∑[∑[(n+1)*A000045(n+1)]]` -/
def P12627598741731592062.Spec : Prop :=
  ∀ n, P12627598741731592062.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P15084005462389592697

`∑[∑[(n+1)*A324969(n+2)]]`
-/

namespace A213578.P15084005462389592697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324969 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P15084005462389592697

namespace A213578

/-- `∑[∑[(n+1)*A324969(n+2)]]` -/
def P15084005462389592697.Spec : Prop :=
  ∀ n, P15084005462389592697.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P2046727803442153514

`∑[∑[A079977(2*n)*(n+1)]]`
-/

namespace A213578.P2046727803442153514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) * (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P2046727803442153514

namespace A213578

/-- `∑[∑[A079977(2*n)*(n+1)]]` -/
def P2046727803442153514.Spec : Prop :=
  ∀ n, P2046727803442153514.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P7802937214672881858

`∑[∑[(n+1)*(A000071(n+1)+1)]]`
-/

namespace A213578.P7802937214672881858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000071 (n + 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P7802937214672881858

namespace A213578

/-- `∑[∑[(n+1)*(A000071(n+1)+1)]]` -/
def P7802937214672881858.Spec : Prop :=
  ∀ n, P7802937214672881858.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P17501835071386972662

`∑[∑[(n+1)*(A001611(n+1)-1)]]`
-/

namespace A213578.P17501835071386972662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001611 (n + 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P17501835071386972662

namespace A213578

/-- `∑[∑[(n+1)*(A001611(n+1)-1)]]` -/
def P17501835071386972662.Spec : Prop :=
  ∀ n, P17501835071386972662.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P15323218843625690692

`∑[∑[(n+1)*A123231(2*n+1)]]`
-/

namespace A213578.P15323218843625690692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123231 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P15323218843625690692

namespace A213578

/-- `∑[∑[(n+1)*A123231(2*n+1)]]` -/
def P15323218843625690692.Spec : Prop :=
  ∀ n, P15323218843625690692.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P17554799366081941302

`A118425(n+1)+A118425(n+3)`
-/

namespace A213578.P17554799366081941302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118425 (n + 1) + A118425 (n + 3)

end

end A213578.P17554799366081941302

namespace A213578

/-- `A118425(n+1)+A118425(n+3)` -/
def P17554799366081941302.Spec : Prop :=
  ∀ n, P17554799366081941302.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P15847649523518732076

`A213580(n+3)-A023652(n+3)`
-/

namespace A213578.P15847649523518732076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213580 (n + 3) - A023652 (n + 3)

end

end A213578.P15847649523518732076

namespace A213578

/-- `A213580(n+3)-A023652(n+3)` -/
def P15847649523518732076.Spec : Prop :=
  ∀ n, P15847649523518732076.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P4144221099594665695

`∑[∑[A099920(n+1)-A000045(n+1)]]`
-/

namespace A213578.P4144221099594665695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (n + 1) - A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213578.P4144221099594665695

namespace A213578

/-- `∑[∑[A099920(n+1)-A000045(n+1)]]` -/
def P4144221099594665695.Spec : Prop :=
  ∀ n, P4144221099594665695.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P15563223810606587461

`A213585(n+2)-(A023537(n+1)+A023537(n+2))`
-/

namespace A213578.P15563223810606587461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213585 (n + 2) - (A023537 (n + 1) + A023537 (n + 2))

end

end A213578.P15563223810606587461

namespace A213578

/-- `A213585(n+2)-(A023537(n+1)+A023537(n+2))` -/
def P15563223810606587461.Spec : Prop :=
  ∀ n, P15563223810606587461.a n = A213578 (n + 1)

end A213578

/-! ## A213578.P867464599499365872

`A213767(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A213578.P867464599499365872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213767 (n + 1) - a (n - 1)

end

end A213578.P867464599499365872

namespace A213578

/-- `A213767(n+1)-a(n-1)` -/
def P867464599499365872.Spec : Prop :=
  ∀ n, P867464599499365872.a n = A213578 (n + 1)

end A213578

/-!
# A213579: Rectangular array: (row n) = b**c, where b(h) = F(h), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

The programs for A213579, the canonical program `A213579.P12720852438304577649` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213579 has offset 1).

The definition of A213579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213579.P16382405812617632268

`(A213768(n+1)+A104582(n+1))/2`
-/

namespace A213579.P16382405812617632268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213768 (n + 1) + A104582 (n + 1) : ℚ) / 2

end

end A213579.P16382405812617632268

namespace A213579

/-- `(A213768(n+1)+A104582(n+1))/2` -/
def P16382405812617632268.Spec : Prop :=
  ∀ n, P16382405812617632268.a n = (A213579 (n + 1) : ℚ)

end A213579

/-! ## A213579.P12720852438304577649

`A104798(n+2)+A001924(A025581(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213579

/-- `A104798(n+2)+A001924(A025581(n))` -/
def P12720852438304577649.Spec : Prop :=
  ∀ n, P12720852438304577649.a n = A213579 (n + 1)

theorem P12720852438304577649.correct : P12720852438304577649.Spec := by
  intro n
  simp only [A213579, Nat.add_sub_cancel]

end A213579

/-! ## A213579.P1909731655756127685

`A014682(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P1909731655756127685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P1909731655756127685

namespace A213579

/-- `A014682(A213768(n+1)+A104582(n+1))` -/
def P1909731655756127685.Spec : Prop :=
  ∀ n, P1909731655756127685.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P9897346002678775749

`A004525(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P9897346002678775749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P9897346002678775749

namespace A213579

/-- `A004525(A213768(n+1)+A104582(n+1))` -/
def P9897346002678775749.Spec : Prop :=
  ∀ n, P9897346002678775749.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P7688168258408678911

`A004526(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P7688168258408678911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P7688168258408678911

namespace A213579

/-- `A004526(A213768(n+1)+A104582(n+1))` -/
def P7688168258408678911.Spec : Prop :=
  ∀ n, P7688168258408678911.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P12858510338005090820

`A025480(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P12858510338005090820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P12858510338005090820

namespace A213579

/-- `A025480(A213768(n+1)+A104582(n+1))` -/
def P12858510338005090820.Spec : Prop :=
  ∀ n, P12858510338005090820.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P6162889187675786703

`A026741(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P6162889187675786703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P6162889187675786703

namespace A213579

/-- `A026741(A213768(n+1)+A104582(n+1))` -/
def P6162889187675786703.Spec : Prop :=
  ∀ n, P6162889187675786703.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P13333211501405502850

`A029578(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P13333211501405502850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P13333211501405502850

namespace A213579

/-- `A029578(A213768(n+1)+A104582(n+1))` -/
def P13333211501405502850.Spec : Prop :=
  ∀ n, P13333211501405502850.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P11785245413666634108

`A065033(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P11785245413666634108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P11785245413666634108

namespace A213579

/-- `A065033(A213768(n+1)+A104582(n+1))` -/
def P11785245413666634108.Spec : Prop :=
  ∀ n, P11785245413666634108.a n = A213579 (n + 1)

end A213579

/-! ## A213579.P5845225803311563129

`A110654(A213768(n+1)+A104582(n+1))`
-/

namespace A213579.P5845225803311563129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A213768 (n + 1) + A104582 (n + 1)).toNat

end

end A213579.P5845225803311563129

namespace A213579

/-- `A110654(A213768(n+1)+A104582(n+1))` -/
def P5845225803311563129.Spec : Prop :=
  ∀ n, P5845225803311563129.a n = A213579 (n + 1)

end A213579

/-!
# A213580: Principal diagonal of the convolution array A213579.

The programs for A213580, the canonical program `A213580.P3442609799024385666` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213580 has offset 1).

The definition of A213580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213580.P12734788569271926371

`A354044(n+2)-2*(n+2)`
-/

namespace A213580.P12734788569271926371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (n + 2) - (2 * (n + 2) : ℤ)

end

end A213580.P12734788569271926371

namespace A213580

/-- `A354044(n+2)-2*(n+2)` -/
def P12734788569271926371.Spec : Prop :=
  ∀ n, P12734788569271926371.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P3442609799024385666

`A157728(n+5)+n*A001911(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213580

/-- `A157728(n+5)+n*A001911(n)` -/
def P3442609799024385666.Spec : Prop :=
  ∀ n, P3442609799024385666.a n = A213580 (n + 1)

theorem P3442609799024385666.correct : P3442609799024385666.Spec := by
  intro n
  simp only [A213580, Nat.add_sub_cancel]

end A213580

/-! ## A213580.P7767775224073155213

`∑[A023607(n)+∑[A000045(n+2)]]`
-/

namespace A213580.P7767775224073155213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213580.P7767775224073155213

namespace A213580

/-- `∑[A023607(n)+∑[A000045(n+2)]]` -/
def P7767775224073155213.Spec : Prop :=
  ∀ n, P7767775224073155213.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P1413873464733959910

`∑[A071679(n+1)]+n*A001911(n)`
-/

namespace A213580.P1413873464733959910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A001911 n

end

end A213580.P1413873464733959910

namespace A213580

/-- `∑[A071679(n+1)]+n*A001911(n)` -/
def P1413873464733959910.Spec : Prop :=
  ∀ n, P1413873464733959910.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P18169064862184780348

`A001911(n+1)+(n+1)*A001911(n)`
-/

namespace A213580.P18169064862184780348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1) + (n + 1 : ℤ) * A001911 n

end

end A213580.P18169064862184780348

namespace A213580

/-- `A001911(n+1)+(n+1)*A001911(n)` -/
def P18169064862184780348.Spec : Prop :=
  ∀ n, P18169064862184780348.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P4664747174149840490

`A000045(n+2)+(n+2)*(A000045(n+3)-2)`
-/

namespace A213580.P4664747174149840490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (n + 2 : ℤ) * (A000045 (n + 3) - 2)

end

end A213580.P4664747174149840490

namespace A213580

/-- `A000045(n+2)+(n+2)*(A000045(n+3)-2)` -/
def P4664747174149840490.Spec : Prop :=
  ∀ n, P4664747174149840490.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P16680425990866536813

`A113684(n+1)+A113684(n)-A006478(n)`
-/

namespace A213580.P16680425990866536813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 (n + 1) + (A113684 n - A006478 n)

end

end A213580.P16680425990866536813

namespace A213580

/-- `A113684(n+1)+A113684(n)-A006478(n)` -/
def P16680425990866536813.Spec : Prop :=
  ∀ n, P16680425990866536813.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P9144800396071237052

`A113684(n+1)+A113684(n+1)-A023610(n)`
-/

namespace A213580.P9144800396071237052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 (n + 1) + (A113684 (n + 1) - A023610 n)

end

end A213580.P9144800396071237052

namespace A213580

/-- `A113684(n+1)+A113684(n+1)-A023610(n)` -/
def P9144800396071237052.Spec : Prop :=
  ∀ n, P9144800396071237052.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P7319511688511221503

`Δ[n*A001924(n)]`
-/

namespace A213580.P7319511688511221503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P7319511688511221503

namespace A213580

/-- `Δ[n*A001924(n)]` -/
def P7319511688511221503.Spec : Prop :=
  ∀ n, P7319511688511221503.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P7518977778427746583

`Δ[n*∑[∑[A000045(n)]]]`
-/

namespace A213580.P7518977778427746583
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P7518977778427746583

namespace A213580

/-- `Δ[n*∑[∑[A000045(n)]]]` -/
def P7518977778427746583.Spec : Prop :=
  ∀ n, P7518977778427746583.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P7505833119966139170

`Δ[n*∑[A000071(n+2)]]`
-/

namespace A213580.P7505833119966139170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P7505833119966139170

namespace A213580

/-- `Δ[n*∑[A000071(n+2)]]` -/
def P7505833119966139170.Spec : Prop :=
  ∀ n, P7505833119966139170.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P6387095685877386868

`Δ[n*∑[A339572(2*n)]]`
-/

namespace A213580.P6387095685877386868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P6387095685877386868

namespace A213580

/-- `Δ[n*∑[A339572(2*n)]]` -/
def P6387095685877386868.Spec : Prop :=
  ∀ n, P6387095685877386868.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P12833186011947281083

`Δ[n*(A000126(n+1)-1)]`
-/

namespace A213580.P12833186011947281083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000126 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P12833186011947281083

namespace A213580

/-- `Δ[n*(A000126(n+1)-1)]` -/
def P12833186011947281083.Spec : Prop :=
  ∀ n, P12833186011947281083.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P2480496713170116098

`Δ[n*(A006327(n+4)-n)]`
-/

namespace A213580.P2480496713170116098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A006327 (n + 4) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P2480496713170116098

namespace A213580

/-- `Δ[n*(A006327(n+4)-n)]` -/
def P2480496713170116098.Spec : Prop :=
  ∀ n, P2480496713170116098.a n = A213580 (n + 1)

end A213580

/-! ## A213580.P538024172176131575

`Δ[n*∑[A131524(2*(n+1))]]`
-/

namespace A213580.P538024172176131575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213580.P538024172176131575

namespace A213580

/-- `Δ[n*∑[A131524(2*(n+1))]]` -/
def P538024172176131575.Spec : Prop :=
  ∀ n, P538024172176131575.a n = A213580 (n + 1)

end A213580

/-!
# A213581: Antidiagonal sums of the convolution array A213571.

The programs for A213581, the canonical program `A213581.P13465062692516543204` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213581 has offset 1).

The definition of A213581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213581.P13465062692516543204

`8+(n-1)*2^(n+3)-(n-1)*(n+1)*(n+6)/6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213581

/-- `8+(n-1)*2^(n+3)-(n-1)*(n+1)*(n+6)/6` -/
def P13465062692516543204.Spec : Prop :=
  ∀ n, P13465062692516543204.a n = (A213581 (n + 1) : ℚ)

end A213581

/-! ## A213581.P5463285169190749692

`floor(∑[∑[(n+1)*∑[2*a(n-1)]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A213581.P5463285169190749692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213581.P5463285169190749692

namespace A213581

/-- `floor(∑[∑[(n+1)*∑[2*a(n-1)]]])` -/
def P5463285169190749692.Spec : Prop :=
  ∀ n, (P5463285169190749692.a n : ℤ) = A213581 (n + 1)

end A213581

/-! ## A213581.P1245033449352232101

`∑[A058227(n+1)/2]/2`
-/

namespace A213581.P1245033449352232101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058227 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A213581.P1245033449352232101

namespace A213581

/-- `∑[A058227(n+1)/2]/2` -/
def P1245033449352232101.Spec : Prop :=
  ∀ n, P1245033449352232101.a n = (A213581 (n + 1) : ℚ)

end A213581

/-! ## A213581.P18249224533538586287

`∑[A058227(n+1)]/4`
-/

namespace A213581.P18249224533538586287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058227 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A213581.P18249224533538586287

namespace A213581

/-- `∑[A058227(n+1)]/4` -/
def P18249224533538586287.Spec : Prop :=
  ∀ n, P18249224533538586287.a n = (A213581 (n + 1) : ℚ)

end A213581

/-!
# A213582: Rectangular array: (row n) = b**c, where b(h) = -1 + 2^h, c(h) = n-1+h, n>=1, h>=1, and ** = convolution.

The programs for A213582, there is no canonical definition to state claims against.
-/

/-! ## A213582.P10323664323761013632

`2*A213568(n+1)-A049777(n+1)`
-/

namespace A213582.P10323664323761013632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213568 (n + 1) - A049777 (n + 1)

end

end A213582.P10323664323761013632

/-! ## A213582.P16355663294093751492

`A005843(A213568(n+1))-A049777(n+1)`
-/

namespace A213582.P16355663294093751492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213568 (n + 1)).toNat - A049777 (n + 1)

end

end A213582.P16355663294093751492

/-!
# A213583: Principal diagonal of the convolution array A213582.

The programs for A213583, the canonical program `A213583.P3691233763461194418` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213583 has offset 1).

The definition of A213583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213583.P3691233763461194418

`(n+2)*(2^(n+3)-3*(n+1)-4)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213583

/-- `(n+2)*(2^(n+3)-3*(n+1)-4)/2` -/
def P3691233763461194418.Spec : Prop :=
  ∀ n, P3691233763461194418.a n = (A213583 (n + 1) : ℚ)

end A213583

/-! ## A213583.P981556109508159781

`∑[2*A053221(n+1)]-∑[n+1]`
-/

namespace A213583.P981556109508159781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213583.P981556109508159781

namespace A213583

/-- `∑[2*A053221(n+1)]-∑[n+1]` -/
def P981556109508159781.Spec : Prop :=
  ∀ n, P981556109508159781.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P13200245828372875161

`A190730(n+1)-A005449(n+1)`
-/

namespace A213583.P13200245828372875161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190730 (n + 1) - A005449 (n + 1)

end

end A213583.P13200245828372875161

namespace A213583

/-- `A190730(n+1)-A005449(n+1)` -/
def P13200245828372875161.Spec : Prop :=
  ∀ n, P13200245828372875161.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P4190090086157038583

`A036289(n+2)-A005449(n+2)`
-/

namespace A213583.P4190090086157038583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 2) - A005449 (n + 2)

end

end A213583.P4190090086157038583

namespace A213583

/-- `A036289(n+2)-A005449(n+2)` -/
def P4190090086157038583.Spec : Prop :=
  ∀ n, P4190090086157038583.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P10775841230817346227

`∑[A125128(n+1)]+n*A125128(n+1)`
-/

namespace A213583.P10775841230817346227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A125128 (n + 1)

end

end A213583.P10775841230817346227

namespace A213583

/-- `∑[A125128(n+1)]+n*A125128(n+1)` -/
def P10775841230817346227.Spec : Prop :=
  ∀ n, P10775841230817346227.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P3577300355889285058

`Δ[n*A002662(n+2)]`
-/

namespace A213583.P3577300355889285058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002662 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213583.P3577300355889285058

namespace A213583

/-- `Δ[n*A002662(n+2)]` -/
def P3577300355889285058.Spec : Prop :=
  ∀ n, P3577300355889285058.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P16264002697182388923

`Δ[n*∑[∑[A000225(n)]]]`
-/

namespace A213583.P16264002697182388923
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213583.P16264002697182388923

namespace A213583

/-- `Δ[n*∑[∑[A000225(n)]]]` -/
def P16264002697182388923.Spec : Prop :=
  ∀ n, P16264002697182388923.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P3192894428129124548

`Δ[n*∑[A000295(n+1)]]`
-/

namespace A213583.P3192894428129124548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213583.P3192894428129124548

namespace A213583

/-- `Δ[n*∑[A000295(n+1)]]` -/
def P3192894428129124548.Spec : Prop :=
  ∀ n, P3192894428129124548.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P3019031585207097286

`A068605(n+2)-A213749(n+1)`
-/

namespace A213583.P3019031585207097286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068605 (n + 2) - A213749 (n + 1)

end

end A213583.P3019031585207097286

namespace A213583

/-- `A068605(n+2)-A213749(n+1)` -/
def P3019031585207097286.Spec : Prop :=
  ∀ n, P3019031585207097286.a n = A213583 (n + 1)

end A213583

/-! ## A213583.P17425970984768052670

`Δ[n*A055248(A167614(n+1))]`
-/

namespace A213583.P17425970984768052670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055248 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213583.P17425970984768052670

namespace A213583

/-- `Δ[n*A055248(A167614(n+1))]` -/
def P17425970984768052670.Spec : Prop :=
  ∀ n, P17425970984768052670.a n = A213583 (n + 1)

end A213583

/-!
# A213584: Rectangular array: (row n) = b**c, where b(h) = F(h+1), c(h) = n-1+h, where F=A000045 (Fibonacci numbers), n>=1, h>=1, and ** = convolution.

The programs for A213584, the canonical program `A213584.P14777536116696346004` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213584 has offset 1).

The definition of A213584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213584.P14777536116696346004

`A213579(comp[∑[n]])-A003057(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A213584

/-- `A213579(comp[∑[n]])-A003057(n+2)` -/
def P14777536116696346004.Spec : Prop :=
  ∀ n, P14777536116696346004.a n = A213584 (n + 1)

theorem P14777536116696346004.correct : P14777536116696346004.Spec := by
  intro n
  simp only [A213584, Nat.add_sub_cancel]

end A213584

/-! ## A213584.P4097524447090690190

`A213579(comp[∑[n]])-(A003056(n)+2)`
-/

namespace A213584.P4097524447090690190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (A003056 n + 2)

end

end A213584.P4097524447090690190

namespace A213584

/-- `A213579(comp[∑[n]])-(A003056(n)+2)` -/
def P4097524447090690190.Spec : Prop :=
  ∀ n, P4097524447090690190.a n = A213584 (n + 1)

end A213584

/-! ## A213584.P9491584860927088691

`A213579(comp[∑[n]])-(A002024(n+1)+1)`
-/

namespace A213584.P9491584860927088691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (A002024 (n + 1) + 1)

end

end A213584.P9491584860927088691

namespace A213584

/-- `A213579(comp[∑[n]])-(A002024(n+1)+1)` -/
def P9491584860927088691.Spec : Prop :=
  ∀ n, P9491584860927088691.a n = A213584 (n + 1)

end A213584

/-! ## A213584.P15870692175597778987

`A213579(comp[∑[n]])-A014132(n+1)+n`
-/

namespace A213584.P15870692175597778987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A014132 (n + 1) + (n : ℤ)

end

end A213584.P15870692175597778987

namespace A213584

/-- `A213579(comp[∑[n]])-A014132(n+1)+n` -/
def P15870692175597778987.Spec : Prop :=
  ∀ n, P15870692175597778987.a n = A213584 (n + 1)

end A213584

/-! ## A213584.P484945858296874603

`A213579(A014132(n+1))-A000005(A140513(n))`
-/

namespace A213584.P484945858296874603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213579 (A014132 (n + 1)).toNat - A000005 (A140513 n).toNat

end

end A213584.P484945858296874603

namespace A213584

/-- `A213579(A014132(n+1))-A000005(A140513(n))` -/
def P484945858296874603.Spec : Prop :=
  ∀ n, P484945858296874603.a n = A213584 (n + 1)

end A213584

/-!
# A213585: Principal diagonal of the convolution array A213584.

The programs for A213585, the canonical program `A213585.P17385327160734707533` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213585 has offset 1).

The definition of A213585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213585.P17385327160734707533

`∑[A061705(n+2)-4]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A213585

/-- `∑[A061705(n+2)-4]` -/
def P17385327160734707533.Spec : Prop :=
  ∀ n, P17385327160734707533.a n = A213585 (n + 1)

theorem P17385327160734707533.correct : P17385327160734707533.Spec := by
  intro n
  simp only [A213585, Nat.add_sub_cancel]

end A213585

/-! ## A213585.P15959468206945099479

`∑[A007574(n+2)+n-2]`
-/

namespace A213585.P15959468206945099479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007574 (n + 2) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213585.P15959468206945099479

namespace A213585

/-- `∑[A007574(n+2)+n-2]` -/
def P15959468206945099479.Spec : Prop :=
  ∀ n, P15959468206945099479.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P18345208146942789242

`A001891(n+1)+n*A001911(n+1)`
-/

namespace A213585.P18345208146942789242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + (n : ℤ) * A001911 (n + 1)

end

end A213585.P18345208146942789242

namespace A213585

/-- `A001891(n+1)+n*A001911(n+1)` -/
def P18345208146942789242.Spec : Prop :=
  ∀ n, P18345208146942789242.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P1574894804082466649

`A213769(n+1)-A023607(n)`
-/

namespace A213585.P1574894804082466649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213769 (n + 1) - A023607 n

end

end A213585.P1574894804082466649

namespace A213585

/-- `A213769(n+1)-A023607(n)` -/
def P1574894804082466649.Spec : Prop :=
  ∀ n, P1574894804082466649.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P15266317624362379951

`Δ[n*A001891(n)]`
-/

namespace A213585.P15266317624362379951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213585.P15266317624362379951

namespace A213585

/-- `Δ[n*A001891(n)]` -/
def P15266317624362379951.Spec : Prop :=
  ∀ n, P15266317624362379951.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P11202119847184288573

`Δ[n*∑[A001911(n)]]`
-/

namespace A213585.P11202119847184288573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213585.P11202119847184288573

namespace A213585

/-- `Δ[n*∑[A001911(n)]]` -/
def P11202119847184288573.Spec : Prop :=
  ∀ n, P11202119847184288573.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P14986521408950914415

`Δ[n*Δ[A163250(n)]]`
-/

namespace A213585.P14986521408950914415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213585.P14986521408950914415

namespace A213585

/-- `Δ[n*Δ[A163250(n)]]` -/
def P14986521408950914415.Spec : Prop :=
  ∀ n, P14986521408950914415.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P9282339672657492996

`Δ[n*∑[A000045(n+3)-2]]`
-/

namespace A213585.P9282339672657492996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213585.P9282339672657492996

namespace A213585

/-- `Δ[n*∑[A000045(n+3)-2]]` -/
def P9282339672657492996.Spec : Prop :=
  ∀ n, P9282339672657492996.a n = A213585 (n + 1)

end A213585

/-! ## A213585.P7200156641039028877

`A213584((n+1)²+n²)`
-/

namespace A213585.P7200156641039028877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213584 ((n + 1) ^ 2 + n ^ 2)

end

end A213585.P7200156641039028877

namespace A213585

/-- `A213584((n+1)²+n²)` -/
def P7200156641039028877.Spec : Prop :=
  ∀ n, P7200156641039028877.a n = A213585 (n + 1)

end A213585

/-!
# A213586: Antidiagonal sums of the convolution array A213584.

The programs for A213586, the canonical program `A213586.P14997366274090083992` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213586 has offset 1).

The definition of A213586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213586.P14997366274090083992

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=51, a(4)=112`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213586

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P14997366274090083992.Spec : Prop :=
  ∀ n, P14997366274090083992.a n = A213586 (n + 1)

theorem P14997366274090083992.correct : P14997366274090083992.Spec := by
  intro n
  simp only [A213586, Nat.add_sub_cancel]

end A213586

/-! ## A213586.P10910922316104711629

`∑[∑[ogf((1+2x+x^2)/(1-2x+x^3))]]`
-/

namespace A213586.P10910922316104711629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P10910922316104711629

namespace A213586

/-- `∑[∑[ogf((1+2x+x^2)/(1-2x+x^3))]]` -/
def P10910922316104711629.Spec : Prop :=
  ∀ n, P10910922316104711629.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P1885149247551078803

`∑[∑[floor(ϕ*(a(n-1)+2))]]` with `a(0)=1`
-/

namespace A213586.P1885149247551078803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊Real.goldenRatio * (f2 (n - 1) + 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P1885149247551078803

namespace A213586

/-- `∑[∑[floor(ϕ*(a(n-1)+2))]]` -/
def P1885149247551078803.Spec : Prop :=
  ∀ n, P1885149247551078803.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P4460674252511282556

`∑[∑[a(n-1)+a(n-2)+4]]` with `a(0)=1, a(1)=4`
-/

namespace A213586.P4460674252511282556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P4460674252511282556

namespace A213586

/-- `∑[∑[a(n-1)+a(n-2)+4]]` -/
def P4460674252511282556.Spec : Prop :=
  ∀ n, (P4460674252511282556.a n : ℤ) = A213586 (n + 1)

end A213586

/-! ## A213586.P5749849027218084440

`∑[A023652(n+1)]`
-/

namespace A213586.P5749849027218084440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P5749849027218084440

namespace A213586

/-- `∑[A023652(n+1)]` -/
def P5749849027218084440.Spec : Prop :=
  ∀ n, P5749849027218084440.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P3465087341773568071

`∑[∑[A238374(2*n)]]`
-/

namespace A213586.P3465087341773568071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P3465087341773568071

namespace A213586

/-- `∑[∑[A238374(2*n)]]` -/
def P3465087341773568071.Spec : Prop :=
  ∀ n, P3465087341773568071.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P13035279400328408774

`∑[∑[A020712(n)-4]]`
-/

namespace A213586.P13035279400328408774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P13035279400328408774

namespace A213586

/-- `∑[∑[A020712(n)-4]]` -/
def P13035279400328408774.Spec : Prop :=
  ∀ n, P13035279400328408774.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P5889321747459056591

`∑[∑[A157728(n+5)]]`
-/

namespace A213586.P5889321747459056591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157728 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P5889321747459056591

namespace A213586

/-- `∑[∑[A157728(n+5)]]` -/
def P5889321747459056591.Spec : Prop :=
  ∀ n, P5889321747459056591.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P18125831597903125498

`∑[A033937(n)-(n+1)]`
-/

namespace A213586.P18125831597903125498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P18125831597903125498

namespace A213586

/-- `∑[A033937(n)-(n+1)]` -/
def P18125831597903125498.Spec : Prop :=
  ∀ n, P18125831597903125498.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P3443776523982456079

`∑[∑[∑[A071679(n+1)]]]`
-/

namespace A213586.P3443776523982456079
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P3443776523982456079

namespace A213586

/-- `∑[∑[∑[A071679(n+1)]]]` -/
def P3443776523982456079.Spec : Prop :=
  ∀ n, P3443776523982456079.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P14235394843914331353

`∑[∑[∑[A020695(n)]-1]]`
-/

namespace A213586.P14235394843914331353
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P14235394843914331353

namespace A213586

/-- `∑[∑[∑[A020695(n)]-1]]` -/
def P14235394843914331353.Spec : Prop :=
  ∀ n, P14235394843914331353.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P2905470592416371835

`∑[∑[A167616(n+5)+1]]`
-/

namespace A213586.P2905470592416371835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 5) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P2905470592416371835

namespace A213586

/-- `∑[∑[A167616(n+5)+1]]` -/
def P2905470592416371835.Spec : Prop :=
  ∀ n, P2905470592416371835.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P18293741969124732292

`∑[∑[A006327(n+5)-1]]`
-/

namespace A213586.P18293741969124732292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 5) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P18293741969124732292

namespace A213586

/-- `∑[∑[A006327(n+5)-1]]` -/
def P18293741969124732292.Spec : Prop :=
  ∀ n, P18293741969124732292.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P9039371707197234579

`∑[∑[A000045(n+5)-4]]`
-/

namespace A213586.P9039371707197234579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P9039371707197234579

namespace A213586

/-- `∑[∑[A000045(n+5)-4]]` -/
def P9039371707197234579.Spec : Prop :=
  ∀ n, P9039371707197234579.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P2572264255705156992

`∑[∑[A001924(n+1)+n]]`
-/

namespace A213586.P2572264255705156992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P2572264255705156992

namespace A213586

/-- `∑[∑[A001924(n+1)+n]]` -/
def P2572264255705156992.Spec : Prop :=
  ∀ n, P2572264255705156992.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P8897597862026058009

`∑[A014162(n+1)+∑[n]]`
-/

namespace A213586.P8897597862026058009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P8897597862026058009

namespace A213586

/-- `∑[A014162(n+1)+∑[n]]` -/
def P8897597862026058009.Spec : Prop :=
  ∀ n, P8897597862026058009.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P9513227370629995776

`A014166(n+1)+∑[∑[n]]`
-/

namespace A213586.P9513227370629995776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213586.P9513227370629995776

namespace A213586

/-- `A014166(n+1)+∑[∑[n]]` -/
def P9513227370629995776.Spec : Prop :=
  ∀ n, P9513227370629995776.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P9893520870843579680

`A053808(n+1)-(n+2)²`
-/

namespace A213586.P9893520870843579680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A213586.P9893520870843579680

namespace A213586

/-- `A053808(n+1)-(n+2)²` -/
def P9893520870843579680.Spec : Prop :=
  ∀ n, P9893520870843579680.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P17585222699192724984

`A163250(n+3)-(n+2)²`
-/

namespace A213586.P17585222699192724984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 (n + 3) - ((n + 2) ^ 2 : ℤ)

end

end A213586.P17585222699192724984

namespace A213586

/-- `A163250(n+3)-(n+2)²` -/
def P17585222699192724984.Spec : Prop :=
  ∀ n, P17585222699192724984.a n = A213586 (n + 1)

end A213586

/-! ## A213586.P16939774116448075855

`∑[∑[∑[A116470(2*n+1)]]]`
-/

namespace A213586.P16939774116448075855
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213586.P16939774116448075855

namespace A213586

/-- `∑[∑[∑[A116470(2*n+1)]]]` -/
def P16939774116448075855.Spec : Prop :=
  ∀ n, P16939774116448075855.a n = A213586 (n + 1)

end A213586

/-!
# A213588: Principal diagonal of the convolution array A213587.

The programs for A213588, the canonical program `A213588.P16307061991895130605` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213588 has offset 1).

The definition of A213588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213588.P16307061991895130605

`5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=1, a(1)=7, a(2)=27, a(3)=96, a(4)=315`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213588

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` -/
def P16307061991895130605.Spec : Prop :=
  ∀ n, P16307061991895130605.a n = A213588 (n + 1)

theorem P16307061991895130605.correct : P16307061991895130605.Spec := by
  intro n
  simp only [A213588, Nat.add_sub_cancel]

end A213588

/-! ## A213588.P14882022040783210806

`A024591(Δ[n²])`
-/

namespace A213588.P14882022040783210806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213588.P14882022040783210806

namespace A213588

/-- `A024591(Δ[n²])` -/
def P14882022040783210806.Spec : Prop :=
  ∀ n, P14882022040783210806.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P14472247068409880044

`record[(n+1)%2*A024591(n+1)]`
-/

namespace A213588.P14472247068409880044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A024591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213588.P14472247068409880044

namespace A213588

/-- `record[(n+1)%2*A024591(n+1)]` -/
def P14472247068409880044.Spec : Prop :=
  ∀ n, P14472247068409880044.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P9766965128755597848

`A001871(n)+A001654(n)`
-/

namespace A213588.P9766965128755597848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n + A001654 n

end

end A213588.P9766965128755597848

namespace A213588

/-- `A001871(n)+A001654(n)` -/
def P9766965128755597848.Spec : Prop :=
  ∀ n, P9766965128755597848.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P15538569161013584279

`A001654(n)+∑[A001870(n)]`
-/

namespace A213588.P15538569161013584279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213588.P15538569161013584279

namespace A213588

/-- `A001654(n)+∑[A001870(n)]` -/
def P15538569161013584279.Spec : Prop :=
  ∀ n, P15538569161013584279.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P15454787383001534167

`∑[A007598(n)+A001870(n)]`
-/

namespace A213588.P15454787383001534167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + A001870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213588.P15454787383001534167

namespace A213588

/-- `∑[A007598(n)+A001870(n)]` -/
def P15454787383001534167.Spec : Prop :=
  ∀ n, P15454787383001534167.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P8562313904482939631

`∑[A001870(n)+A000045(n)²]`
-/

namespace A213588.P8562313904482939631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n + A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213588.P8562313904482939631

namespace A213588

/-- `∑[A001870(n)+A000045(n)²]` -/
def P8562313904482939631.Spec : Prop :=
  ∀ n, P8562313904482939631.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P7834091678769855192

`A001871(n)+∑[A000045(n)²]`
-/

namespace A213588.P7834091678769855192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213588.P7834091678769855192

namespace A213588

/-- `A001871(n)+∑[A000045(n)²]` -/
def P7834091678769855192.Spec : Prop :=
  ∀ n, P7834091678769855192.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P9733496152042612577

`A027991(n+2)-A001519(n+2)`
-/

namespace A213588.P9733496152042612577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027991 (n + 2) - A001519 (n + 2)

end

end A213588.P9733496152042612577

namespace A213588

/-- `A027991(n+2)-A001519(n+2)` -/
def P9733496152042612577.Spec : Prop :=
  ∀ n, P9733496152042612577.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P267502600741117040

`A025082(2*n+1)-A006498(2*n)`
-/

namespace A213588.P267502600741117040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (2 * n + 1) - A006498 (2 * n)

end

end A213588.P267502600741117040

namespace A213588

/-- `A025082(2*n+1)-A006498(2*n)` -/
def P267502600741117040.Spec : Prop :=
  ∀ n, P267502600741117040.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P17710600076654538259

`A025082(2*n+1)-A074677(2*n+1)`
-/

namespace A213588.P17710600076654538259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (2 * n + 1) - A074677 (2 * n + 1)

end

end A213588.P17710600076654538259

namespace A213588

/-- `A025082(2*n+1)-A074677(2*n+1)` -/
def P17710600076654538259.Spec : Prop :=
  ∀ n, P17710600076654538259.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P7689881612551100594

`A129722(A144396(n+1))+A001654(n)`
-/

namespace A213588.P7689881612551100594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (A144396 (n + 1)).toNat + A001654 n

end

end A213588.P7689881612551100594

namespace A213588

/-- `A129722(A144396(n+1))+A001654(n)` -/
def P7689881612551100594.Spec : Prop :=
  ∀ n, P7689881612551100594.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P7652833251400736902

`∑[A001870(n)]+A094966(n)*A094967(n)`
-/

namespace A213588.P7652833251400736902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A094966 n * A094967 n

end

end A213588.P7652833251400736902

namespace A213588

/-- `∑[A001870(n)]+A094966(n)*A094967(n)` -/
def P7652833251400736902.Spec : Prop :=
  ∀ n, P7652833251400736902.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P5950745088172650963

`A001870(n)+A054444(n)-A027991(n+1)`
-/

namespace A213588.P5950745088172650963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n + (A054444 n - A027991 (n + 1))

end

end A213588.P5950745088172650963

namespace A213588

/-- `A001870(n)+A054444(n)-A027991(n+1)` -/
def P5950745088172650963.Spec : Prop :=
  ∀ n, P5950745088172650963.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P14030498994026363565

`A001871(n)+A000045(n+1)*A000045(n)`
-/

namespace A213588.P14030498994026363565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n + A000045 (n + 1) * A000045 n

end

end A213588.P14030498994026363565

namespace A213588

/-- `A001871(n)+A000045(n+1)*A000045(n)` -/
def P14030498994026363565.Spec : Prop :=
  ∀ n, P14030498994026363565.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P9927391448707395074

`A027991(n+1)+A001870(n)-A007598(n+1)`
-/

namespace A213588.P9927391448707395074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027991 (n + 1) + (A001870 n - A007598 (n + 1))

end

end A213588.P9927391448707395074

namespace A213588

/-- `A027991(n+1)+A001870(n)-A007598(n+1)` -/
def P9927391448707395074.Spec : Prop :=
  ∀ n, P9927391448707395074.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P181086488857903795

`A030267(n+1)+A001871(n)-A027991(n+1)`
-/

namespace A213588.P181086488857903795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + (A001871 n - A027991 (n + 1))

end

end A213588.P181086488857903795

namespace A213588

/-- `A030267(n+1)+A001871(n)-A027991(n+1)` -/
def P181086488857903795.Spec : Prop :=
  ∀ n, P181086488857903795.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P4768987616593688574

`A024458(2*n+1)+A024458(2*(n+1))-A006498(2*n)`
-/

namespace A213588.P4768987616593688574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * n + 1) + (A024458 (2 * (n + 1)) - A006498 (2 * n))

end

end A213588.P4768987616593688574

namespace A213588

/-- `A024458(2*n+1)+A024458(2*(n+1))-A006498(2*n)` -/
def P4768987616593688574.Spec : Prop :=
  ∀ n, P4768987616593688574.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P7009844759536912932

`A023610(2*n+1)-A025082(2*n+1)`
-/

namespace A213588.P7009844759536912932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (2 * n + 1) - A025082 (2 * n + 1)

end

end A213588.P7009844759536912932

namespace A213588

/-- `A023610(2*n+1)-A025082(2*n+1)` -/
def P7009844759536912932.Spec : Prop :=
  ∀ n, P7009844759536912932.a n = A213588 (n + 1)

end A213588

/-! ## A213588.P11081934760643118853

`A025105(2*(n+1))-A025105(2*n+1)`
-/

namespace A213588.P11081934760643118853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025105 (2 * (n + 1)) - A025105 (2 * n + 1)

end

end A213588.P11081934760643118853

namespace A213588

/-- `A025105(2*(n+1))-A025105(2*n+1)` -/
def P11081934760643118853.Spec : Prop :=
  ∀ n, P11081934760643118853.a n = A213588 (n + 1)

end A213588

/-!
# A213589: Antidiagonal sums of the convolution array A213587.

The programs for A213589, the canonical program `A213589.P3575669210265953932` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213589 has offset 1).

The definition of A213589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213589.P3575669210265953932

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=55, a(4)=135, a(5)=308`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A213589

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P3575669210265953932.Spec : Prop :=
  ∀ n, P3575669210265953932.a n = A213589 (n + 1)

theorem P3575669210265953932.correct : P3575669210265953932.Spec := by
  intro n
  simp only [A213589, Nat.add_sub_cancel]

end A213589

/-! ## A213589.P4479528390780312290

`(n/2+1)*A004798(n+1)`
-/

namespace A213589.P4479528390780312290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A004798 (n + 1) : ℚ)

end

end A213589.P4479528390780312290

namespace A213589

/-- `(n/2+1)*A004798(n+1)` -/
def P4479528390780312290.Spec : Prop :=
  ∀ n, P4479528390780312290.a n = (A213589 (n + 1) : ℚ)

end A213589

/-! ## A213589.P6654649526000744254

`(n+2)/2*∑[A055244(n+1)]`
-/

namespace A213589.P6654649526000744254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A213589.P6654649526000744254

namespace A213589

/-- `(n+2)/2*∑[A055244(n+1)]` -/
def P6654649526000744254.Spec : Prop :=
  ∀ n, P6654649526000744254.a n = (A213589 (n + 1) : ℚ)

end A213589

/-! ## A213589.P6817254256059769917

`A152881(n+1)+A152881(n+2)`
-/

namespace A213589.P6817254256059769917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 1) + A152881 (n + 2)

end

end A213589.P6817254256059769917

namespace A213589

/-- `A152881(n+1)+A152881(n+2)` -/
def P6817254256059769917.Spec : Prop :=
  ∀ n, P6817254256059769917.a n = A213589 (n + 1)

end A213589

/-! ## A213589.P10166628577407815366

`A306967(n+1)+A129707(n)-A105423(n)`
-/

namespace A213589.P10166628577407815366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306967 (n + 1) + (A129707 n - A105423 n)

end

end A213589.P10166628577407815366

namespace A213589

/-- `A306967(n+1)+A129707(n)-A105423(n)` -/
def P10166628577407815366.Spec : Prop :=
  ∀ n, P10166628577407815366.a n = A213589 (n + 1)

end A213589

/-! ## A213589.P5004531659351128507

`A067988(n+1)+A067988(n)-A023610(n+1)`
-/

namespace A213589.P5004531659351128507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067988 (n + 1) + (A067988 n - A023610 (n + 1))

end

end A213589.P5004531659351128507

namespace A213589

/-- `A067988(n+1)+A067988(n)-A023610(n+1)` -/
def P5004531659351128507.Spec : Prop :=
  ∀ n, P5004531659351128507.a n = A213589 (n + 1)

end A213589

/-!
# A213591: G.f. A(x) satisfies A( x - A(x)^2 ) = x.

The programs for A213591, there is no canonical definition to state claims against.
-/

/-! ## A213591.P1845719123101220603

`abs(A139702(n+1))`
-/

namespace A213591.P1845719123101220603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139702 (n + 1)|

end

end A213591.P1845719123101220603

/-! ## A213591.P6347438499176831021

`A033999(n)*A139702(n+1)`
-/

namespace A213591.P6347438499176831021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A139702 (n + 1)

end

end A213591.P6347438499176831021

/-! ## A213591.P824419704272330277

`lcm(A048896(n), A139702(n+1))`
-/

namespace A213591.P824419704272330277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 n) (A139702 (n + 1))

end

end A213591.P824419704272330277

/-! ## A213591.P14861259660570280900

`gcd(A001591(gcd(n, n+1)), A139702(n+1))`
-/

namespace A213591.P14861259660570280900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001591 (Nat.gcd n (n + 1))) (A139702 (n + 1))

end

end A213591.P14861259660570280900

/-! ## A213591.P16837405967456064067

`A139702(n+1)/A033999(A047243(n+1))`
-/

namespace A213591.P16837405967456064067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139702 (n + 1) : ℚ) / (A033999 (A047243 (n + 1)).toNat : ℚ)

end

end A213591.P16837405967456064067

/-! ## A213591.P13571584713260433150

`gcd(A081120(A081121(n+1)), A139702(n+1))`
-/

namespace A213591.P13571584713260433150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081120 (A081121 (n + 1)).toNat) (A139702 (n + 1))

end

end A213591.P13571584713260433150

/-!
# A213592: Expansion of q^(-1/3) * phi(q^2) * c(q) / 3 in powers of q where phi() is a Ramanujan theta function and c() is a cubic AGM theta function.

The programs for A213592, there is no canonical definition to state claims against.
-/

/-! ## A213592.P13299603419057998591

`A257651(2*n)`
-/

namespace A213592.P13299603419057998591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257651 (2 * n)

end

end A213592.P13299603419057998591

/-! ## A213592.P10121087787468606281

`A257651(n+n)%(n+3)`
-/

namespace A213592.P10121087787468606281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257651 (n + n)) (n + 3 : ℤ)

end

end A213592.P10121087787468606281

/-! ## A213592.P17168276977659461466

`A004015(3*n+1)/12`
-/

namespace A213592.P17168276977659461466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 (3 * n + 1) : ℚ) / 12

end

end A213592.P17168276977659461466

/-! ## A213592.P1848604620239266884

`A257651(n+n)+A106404(A000040(n+1))`
-/

namespace A213592.P1848604620239266884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257651 (n + n) + A106404 (A000040 (n + 1)).toNat

end

end A213592.P1848604620239266884

/-! ## A213592.P13181522459212869935

`A014455(A017569(n))/12`
-/

namespace A213592.P13181522459212869935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014455 (A017569 n).toNat : ℚ) / 12

end

end A213592.P13181522459212869935

/-!
# A213594: Greatest number k such that A048784(n) / 2^k is an integer.

The programs for A213594, the canonical program `A213594.P8203987678726154595` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213594 has offset 1).

The definition of A213594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213594.P8203987678726154595

`val(A048784(n+1), 2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213594

/-- `val(A048784(n+1), 2)` -/
def P8203987678726154595.Spec : Prop :=
  ∀ n, (P8203987678726154595.a n : ℤ) = A213594 (n + 1)

theorem P8203987678726154595.correct : P8203987678726154595.Spec := by
  intro n
  simp only [A213594, Nat.add_sub_cancel]

end A213594

/-! ## A213594.P12241240614252117463

`val(A034974(2*(n+1)), 2)`
-/

namespace A213594.P12241240614252117463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034974 (2 * (n + 1))).toNat 2

end

end A213594.P12241240614252117463

namespace A213594

/-- `val(A034974(2*(n+1)), 2)` -/
def P12241240614252117463.Spec : Prop :=
  ∀ n, (P12241240614252117463.a n : ℤ) = A213594 (n + 1)

end A213594

/-! ## A213594.P8383449429341676674

`log2(A048784(n+1)/A213595(n+1))`
-/

namespace A213594.P8383449429341676674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A048784 (n + 1) : ℚ) / (A213595 (n + 1) : ℚ) : ℝ)

end

end A213594.P8383449429341676674

namespace A213594

/-- `log2(A048784(n+1)/A213595(n+1))` -/
def P8383449429341676674.Spec : Prop :=
  ∀ n, P8383449429341676674.a n = (A213594 (n + 1) : ℝ)

end A213594

/-! ## A213594.P4846392801134611172

`log2(A034974(2*(n+1))/A213595(n+1))`
-/

namespace A213594.P4846392801134611172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A034974 (2 * (n + 1)) : ℚ) / (A213595 (n + 1) : ℚ) : ℝ)

end

end A213594.P4846392801134611172

namespace A213594

/-- `log2(A034974(2*(n+1))/A213595(n+1))` -/
def P4846392801134611172.Spec : Prop :=
  ∀ n, P4846392801134611172.a n = (A213594 (n + 1) : ℝ)

end A213594

/-! ## A213594.P17022733583859805156

`log2(A048784(n+1)/∏{e}[A056647(2*(n+1)), #+1])`
-/

namespace A213594.P17022733583859805156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (2 * (n + 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A048784 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℚ) : ℝ)

end

end A213594.P17022733583859805156

namespace A213594

/-- `log2(A048784(n+1)/∏{e}[A056647(2*(n+1)), #+1])` -/
def P17022733583859805156.Spec : Prop :=
  ∀ n, P17022733583859805156.a n = (A213594 (n + 1) : ℝ)

end A213594

/-!
# A213595: a(n) = A048784(n) / 2^A213594(n).

The programs for A213595, the canonical program `A213595.P12443528902880694475` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213595 has offset 1).

The definition of A213595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048784, A213594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213595.P12443528902880694475

`A048784(n+1)/2^A213594(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213595

/-- `A048784(n+1)/2^A213594(n+1)` -/
def P12443528902880694475.Spec : Prop :=
  ∀ n, P12443528902880694475.a n = (A213595 (n + 1) : ℚ)

end A213595

/-! ## A213595.P4520766995941985594

`A048784(n+1)/A000079(A213594(n+1))`
-/

namespace A213595.P4520766995941985594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048784 (n + 1) : ℚ) / (A000079 (A213594 (n + 1)).toNat : ℚ)

end

end A213595.P4520766995941985594

namespace A213595

/-- `A048784(n+1)/A000079(A213594(n+1))` -/
def P4520766995941985594.Spec : Prop :=
  ∀ n, P4520766995941985594.a n = (A213595 (n + 1) : ℚ)

end A213595

/-! ## A213595.P2742445949795702451

`A048784(n+1)/A000079(val(A048784(n+1), 2))`
-/

namespace A213595.P2742445949795702451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048784 (n + 1) : ℚ) / (A000079 (SequenceMachineLib.valuation (A048784 (n + 1)).toNat 2) : ℚ)

end

end A213595.P2742445949795702451

namespace A213595

/-- `A048784(n+1)/A000079(val(A048784(n+1), 2))` -/
def P2742445949795702451.Spec : Prop :=
  ∀ n, P2742445949795702451.a n = (A213595 (n + 1) : ℚ)

end A213595

/-! ## A213595.P1393030897750550701

`∏{e}[A056647(2*(n+1)), #+1]`
-/

namespace A213595.P1393030897750550701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056647 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A213595.P1393030897750550701

namespace A213595

/-- `∏{e}[A056647(2*(n+1)), #+1]` -/
def P1393030897750550701.Spec : Prop :=
  ∀ n, (P1393030897750550701.a n : ℤ) = A213595 (n + 1)

end A213595

/-! ## A213595.P9458431250955976189

`A000005(A056647(2*(n+1)))`
-/

namespace A213595.P9458431250955976189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056647 (2 * (n + 1))).toNat

end

end A213595.P9458431250955976189

namespace A213595

/-- `A000005(A056647(2*(n+1)))` -/
def P9458431250955976189.Spec : Prop :=
  ∀ n, P9458431250955976189.a n = A213595 (n + 1)

end A213595

/-! ## A213595.P16887590055048802571

`A000005(A056646(2*(n+1))²)`
-/

namespace A213595.P16887590055048802571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056646 (2 * (n + 1)) ^ 2).toNat

end

end A213595.P16887590055048802571

namespace A213595

/-- `A000005(A056646(2*(n+1))²)` -/
def P16887590055048802571.Spec : Prop :=
  ∀ n, P16887590055048802571.a n = A213595 (n + 1)

end A213595

/-! ## A213595.P15260410434379084380

`A000005(A056646(2*(n+1))^2)`
-/

namespace A213595.P15260410434379084380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056646 (2 * (n + 1)) ^ 2).toNat

end

end A213595.P15260410434379084380

namespace A213595

/-- `A000005(A056646(2*(n+1))^2)` -/
def P15260410434379084380.Spec : Prop :=
  ∀ n, P15260410434379084380.a n = A213595 (n + 1)

end A213595

/-! ## A213595.P2619133531509157014

`A000005((A056056(2*(n+1))/A056059(2*(n+1)))²)`
-/

namespace A213595.P2619133531509157014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((A056056 (2 * (n + 1)) : ℚ) / (A056059 (2 * (n + 1)) : ℚ)) ^ 2)).toNat

end

end A213595.P2619133531509157014

namespace A213595

/-- `A000005((A056056(2*(n+1))/A056059(2*(n+1)))²)` -/
def P2619133531509157014.Spec : Prop :=
  ∀ n, P2619133531509157014.a n = A213595 (n + 1)

end A213595

/-!
# A213598: Number of partitions of n in which no parts are multiples of 49.

The programs for A213598, there is no canonical definition to state claims against.
-/

/-! ## A213598.P14165656372359690083

`A133041(n)-comp[A011001(3*n+1)]`
-/

namespace A213598.P14165656372359690083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011001 (3 * n + 1 + 48)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A213598.P14165656372359690083

/-! ## A213598.P3503313307597232919

`A000041(n)-(comp[A002111(3*(n+1))]-n)`
-/

namespace A213598.P3503313307597232919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002111 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A213598.P3503313307597232919

/-! ## A213598.P10474971251057966532

`A000041(n)-A319922(A128262(n+5))`
-/

namespace A213598.P10474971251057966532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A319922 (A128262 (n + 5)).toNat

end

end A213598.P10474971251057966532

/-! ## A213598.P17031195981439838080

`A000041(n)-A031286(A114731(2*n+3))`
-/

namespace A213598.P17031195981439838080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A031286 (A114731 (2 * n + 3)).toNat

end

end A213598.P17031195981439838080

/-! ## A213598.P14542232330211946789

`A000041(n)+1-∑[A080995((2*n+1)²)]`
-/

namespace A213598.P14542232330211946789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213598.P14542232330211946789

/-! ## A213598.P13949503580507029143

`A000041(n)-A185284(Δ[A003105(n)])`
-/

namespace A213598.P13949503580507029143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A185284 (f1 (n + 1) - f1 n).toNat

end

end A213598.P13949503580507029143

