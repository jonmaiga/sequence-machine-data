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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
# A134500: a(n) = Fibonacci(7n + 2).

The programs for A134500, the canonical program `A134500.P6287195679193612502` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134500 has offset 0).

The definition of A134500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134500.P6287195679193612502

`A000045(A017005(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134500

/-- `A000045(A017005(n))` -/
def P6287195679193612502.Spec : Prop :=
  ∀ n, P6287195679193612502.a n = A134500 n

theorem P6287195679193612502.correct : P6287195679193612502.Spec := by
  intro n
  simp only [A134500]

end A134500

/-! ## A134500.P360802598561248429

`a(n-2)+29*a(n-1)` with `a(0)=1, a(1)=34`
-/

namespace A134500.P360802598561248429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 34] fun n a =>
  a (n - 2) + 29 * a (n - 1)

end

end A134500.P360802598561248429

namespace A134500

/-- `a(n-2)+29*a(n-1)` -/
def P360802598561248429.Spec : Prop :=
  ∀ n, (P360802598561248429.a n : ℤ) = A134500 n

end A134500

/-! ## A134500.P9501612322302704115

`A373566(7*n)`
-/

namespace A134500.P9501612322302704115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (7 * n)

end

end A134500.P9501612322302704115

namespace A134500

/-- `A373566(7*n)` -/
def P9501612322302704115.Spec : Prop :=
  ∀ n, P9501612322302704115.a n = A134500 n

end A134500

/-! ## A134500.P16537614134589914632

`A000045(7*n+2)`
-/

namespace A134500.P16537614134589914632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n + 2)

end

end A134500.P16537614134589914632

namespace A134500

/-- `A000045(7*n+2)` -/
def P16537614134589914632.Spec : Prop :=
  ∀ n, P16537614134589914632.a n = A134500 n

end A134500

/-! ## A134500.P3050217879085818922

`A212804(7*n+3)`
-/

namespace A134500.P3050217879085818922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (7 * n + 3)

end

end A134500.P3050217879085818922

namespace A134500

/-- `A212804(7*n+3)` -/
def P3050217879085818922.Spec : Prop :=
  ∀ n, P3050217879085818922.a n = A134500 n

end A134500

/-! ## A134500.P10111226421330916968

`A096748(2*7*n)`
-/

namespace A134500.P10111226421330916968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (2 * (7 * n))

end

end A134500.P10111226421330916968

namespace A134500

/-- `A096748(2*7*n)` -/
def P10111226421330916968.Spec : Prop :=
  ∀ n, P10111226421330916968.a n = A134500 n

end A134500

/-! ## A134500.P15592112392959626541

`A053602(14*n+1)`
-/

namespace A134500.P15592112392959626541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (14 * n + 1)

end

end A134500.P15592112392959626541

namespace A134500

/-- `A053602(14*n+1)` -/
def P15592112392959626541.Spec : Prop :=
  ∀ n, P15592112392959626541.a n = A134500 n

end A134500

/-! ## A134500.P4564511472081186176

`A001611(7*n+2)-1`
-/

namespace A134500.P4564511472081186176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n + 2) - 1

end

end A134500.P4564511472081186176

namespace A134500

/-- `A001611(7*n+2)-1` -/
def P4564511472081186176.Spec : Prop :=
  ∀ n, P4564511472081186176.a n = A134500 n

end A134500

/-! ## A134500.P11961131397754258978

`A000071(6*n+n+2)+1`
-/

namespace A134500.P11961131397754258978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (6 * n + (n + 2)) + 1

end

end A134500.P11961131397754258978

namespace A134500

/-- `A000071(6*n+n+2)+1` -/
def P11961131397754258978.Spec : Prop :=
  ∀ n, P11961131397754258978.a n = A134500 n

end A134500

/-! ## A134500.P12005036877504239093

`A097575(A161714(n))`
-/

namespace A134500.P12005036877504239093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A161714 n).toNat

end

end A134500.P12005036877504239093

namespace A134500

/-- `A097575(A161714(n))` -/
def P12005036877504239093.Spec : Prop :=
  ∀ n, P12005036877504239093.a n = A134500 n

end A134500

/-!
# A134501: a(n) = Fibonacci(7n + 3).

The programs for A134501, the canonical program `A134501.P18236831011765669420` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134501 has offset 0).

The definition of A134501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134501.P18236831011765669420

`A000045(A017017(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134501

/-- `A000045(A017017(n))` -/
def P18236831011765669420.Spec : Prop :=
  ∀ n, P18236831011765669420.a n = A134501 n

theorem P18236831011765669420.correct : P18236831011765669420.Spec := by
  intro n
  simp only [A134501]

end A134501

/-! ## A134501.P10233066561175836630

`2*A049667(n+1)-3*A049667(n)`
-/

namespace A134501.P10233066561175836630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049667 (n + 1) - 3 * A049667 n

end

end A134501.P10233066561175836630

namespace A134501

/-- `2*A049667(n+1)-3*A049667(n)` -/
def P10233066561175836630.Spec : Prop :=
  ∀ n, P10233066561175836630.a n = A134501 n

end A134501

/-! ## A134501.P11927869249693318069

`a(n-2)+29*a(n-1)` with `a(0)=2, a(1)=55`
-/

namespace A134501.P11927869249693318069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 55] fun n a =>
  a (n - 2) + 29 * a (n - 1)

end

end A134501.P11927869249693318069

namespace A134501

/-- `a(n-2)+29*a(n-1)` -/
def P11927869249693318069.Spec : Prop :=
  ∀ n, (P11927869249693318069.a n : ℤ) = A134501 n

end A134501

/-! ## A134501.P6482507221314073196

`A020695(7*n)`
-/

namespace A134501.P6482507221314073196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (7 * n)

end

end A134501.P6482507221314073196

namespace A134501

/-- `A020695(7*n)` -/
def P6482507221314073196.Spec : Prop :=
  ∀ n, P6482507221314073196.a n = A134501 n

end A134501

/-! ## A134501.P17636367452997739772

`A000045(7*n+3)`
-/

namespace A134501.P17636367452997739772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n + 3)

end

end A134501.P17636367452997739772

namespace A134501

/-- `A000045(7*n+3)` -/
def P17636367452997739772.Spec : Prop :=
  ∀ n, P17636367452997739772.a n = A134501 n

end A134501

/-! ## A134501.P2625977221306718815

`A097594(2*7*n)`
-/

namespace A134501.P2625977221306718815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097594 (2 * (7 * n))

end

end A134501.P2625977221306718815

namespace A134501

/-- `A097594(2*7*n)` -/
def P2625977221306718815.Spec : Prop :=
  ∀ n, P2625977221306718815.a n = A134501 n

end A134501

/-! ## A134501.P5484608029927204024

`A212804(7*n+4)`
-/

namespace A134501.P5484608029927204024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (7 * n + 4)

end

end A134501.P5484608029927204024

namespace A134501

/-- `A212804(7*n+4)` -/
def P5484608029927204024.Spec : Prop :=
  ∀ n, P5484608029927204024.a n = A134501 n

end A134501

/-! ## A134501.P15538162627671863660

`A001611(7*n+3)-1`
-/

namespace A134501.P15538162627671863660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n + 3) - 1

end

end A134501.P15538162627671863660

namespace A134501

/-- `A001611(7*n+3)-1` -/
def P15538162627671863660.Spec : Prop :=
  ∀ n, P15538162627671863660.a n = A134501 n

end A134501

/-! ## A134501.P14892363976779046292

`A103609(7*(2*n+1))`
-/

namespace A134501.P14892363976779046292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (7 * (2 * n + 1))

end

end A134501.P14892363976779046292

namespace A134501

/-- `A103609(7*(2*n+1))` -/
def P14892363976779046292.Spec : Prop :=
  ∀ n, P14892363976779046292.a n = A134501 n

end A134501

/-! ## A134501.P3971599272204671250

`A129982(7*(2*n+1))`
-/

namespace A134501.P3971599272204671250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129982 (7 * (2 * n + 1))

end

end A134501.P3971599272204671250

namespace A134501

/-- `A129982(7*(2*n+1))` -/
def P3971599272204671250.Spec : Prop :=
  ∀ n, P3971599272204671250.a n = A134501 n

end A134501

/-!
# A134502: a(n) = Fibonacci(7n + 4).

The programs for A134502, the canonical program `A134502.P16923367467815006900` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134502 has offset 0).

The definition of A134502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134502.P16923367467815006900

`A000045(A017029(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134502

/-- `A000045(A017029(n))` -/
def P16923367467815006900.Spec : Prop :=
  ∀ n, P16923367467815006900.a n = A134502 n

theorem P16923367467815006900.correct : P16923367467815006900.Spec := by
  intro n
  simp only [A134502]

end A134502

/-! ## A134502.P4211873812315120128

`2*A049667(n)+3*A049667(n+1)`
-/

namespace A134502.P4211873812315120128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049667 n + 3 * A049667 (n + 1)

end

end A134502.P4211873812315120128

namespace A134502

/-- `2*A049667(n)+3*A049667(n+1)` -/
def P4211873812315120128.Spec : Prop :=
  ∀ n, P4211873812315120128.a n = A134502 n

end A134502

/-! ## A134502.P14446671848564780569

`a(n-2)+29*a(n-1)` with `a(0)=3, a(1)=89`
-/

namespace A134502.P14446671848564780569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 89] fun n a =>
  a (n - 2) + 29 * a (n - 1)

end

end A134502.P14446671848564780569

namespace A134502

/-- `a(n-2)+29*a(n-1)` -/
def P14446671848564780569.Spec : Prop :=
  ∀ n, (P14446671848564780569.a n : ℤ) = A134502 n

end A134502

/-! ## A134502.P9304318043532446778

`A020701(7*n)`
-/

namespace A134502.P9304318043532446778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (7 * n)

end

end A134502.P9304318043532446778

namespace A134502

/-- `A020701(7*n)` -/
def P9304318043532446778.Spec : Prop :=
  ∀ n, P9304318043532446778.a n = A134502 n

end A134502

/-! ## A134502.P17610834070625590744

`A020695(7*n+1)`
-/

namespace A134502.P17610834070625590744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (7 * n + 1)

end

end A134502.P17610834070625590744

namespace A134502

/-- `A020695(7*n+1)` -/
def P17610834070625590744.Spec : Prop :=
  ∀ n, P17610834070625590744.a n = A134502 n

end A134502

/-! ## A134502.P14933702177456085732

`A000045(7*n+4)`
-/

namespace A134502.P14933702177456085732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n + 4)

end

end A134502.P14933702177456085732

namespace A134502

/-- `A000045(7*n+4)` -/
def P14933702177456085732.Spec : Prop :=
  ∀ n, P14933702177456085732.a n = A134502 n

end A134502

/-! ## A134502.P1835486759141801295

`abs(1-A020706(7*n))`
-/

namespace A134502.P1835486759141801295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A020706 (7 * n)|

end

end A134502.P1835486759141801295

namespace A134502

/-- `abs(1-A020706(7*n))` -/
def P1835486759141801295.Spec : Prop :=
  ∀ n, P1835486759141801295.a n = A134502 n

end A134502

/-! ## A134502.P17965990627888158537

`A174619(7*(2*n+1))`
-/

namespace A134502.P17965990627888158537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (7 * (2 * n + 1))

end

end A134502.P17965990627888158537

namespace A134502

/-- `A174619(7*(2*n+1))` -/
def P17965990627888158537.Spec : Prop :=
  ∀ n, P17965990627888158537.a n = A134502 n

end A134502

/-! ## A134502.P15451178477833393389

`A272912(7*(2*n+1))`
-/

namespace A134502.P15451178477833393389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (7 * (2 * n + 1))

end

end A134502.P15451178477833393389

namespace A134502

/-- `A272912(7*(2*n+1))` -/
def P15451178477833393389.Spec : Prop :=
  ∀ n, P15451178477833393389.a n = A134502 n

end A134502

/-! ## A134502.P8379139613781004041

`A001611(7*n+4)-1`
-/

namespace A134502.P8379139613781004041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n + 4) - 1

end

end A134502.P8379139613781004041

namespace A134502

/-- `A001611(7*n+4)-1` -/
def P8379139613781004041.Spec : Prop :=
  ∀ n, P8379139613781004041.a n = A134502 n

end A134502

/-!
# A134503: a(n) = Fibonacci(7n + 5).

The programs for A134503, the canonical program `A134503.P10762999087738266337` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134503 has offset 0).

The definition of A134503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134503.P10762999087738266337

`5*A049667(n+1)-A049667(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134503

/-- `5*A049667(n+1)-A049667(n)` -/
def P10762999087738266337.Spec : Prop :=
  ∀ n, P10762999087738266337.a n = A134503 n

theorem P10762999087738266337.correct : P10762999087738266337.Spec := by
  intro n
  simp only [A134503]

end A134503

/-! ## A134503.P14707887643950550271

`A020712(7*n)`
-/

namespace A134503.P14707887643950550271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (7 * n)

end

end A134503.P14707887643950550271

namespace A134503

/-- `A020712(7*n)` -/
def P14707887643950550271.Spec : Prop :=
  ∀ n, P14707887643950550271.a n = A134503 n

end A134503

/-! ## A134503.P4538963459989343121

`A020701(7*n+1)`
-/

namespace A134503.P4538963459989343121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (7 * n + 1)

end

end A134503.P4538963459989343121

namespace A134503

/-- `A020701(7*n+1)` -/
def P4538963459989343121.Spec : Prop :=
  ∀ n, P4538963459989343121.a n = A134503 n

end A134503

/-! ## A134503.P9086991065403663244

`A020695(7*n+2)`
-/

namespace A134503.P9086991065403663244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (7 * n + 2)

end

end A134503.P9086991065403663244

namespace A134503

/-- `A020695(7*n+2)` -/
def P9086991065403663244.Spec : Prop :=
  ∀ n, P9086991065403663244.a n = A134503 n

end A134503

/-! ## A134503.P2665321471881788059

`A000045(7*n+5)`
-/

namespace A134503.P2665321471881788059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n + 5)

end

end A134503.P2665321471881788059

namespace A134503

/-- `A000045(7*n+5)` -/
def P2665321471881788059.Spec : Prop :=
  ∀ n, P2665321471881788059.a n = A134503 n

end A134503

/-! ## A134503.P16040623725333843071

`A212804(7*n+6)`
-/

namespace A134503.P16040623725333843071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (7 * n + 6)

end

end A134503.P16040623725333843071

namespace A134503

/-- `A212804(7*n+6)` -/
def P16040623725333843071.Spec : Prop :=
  ∀ n, P16040623725333843071.a n = A134503 n

end A134503

/-! ## A134503.P2404323471093808858

`A053602(Δ[7*n²])`
-/

namespace A134503.P2404323471093808858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134503.P2404323471093808858

namespace A134503

/-- `A053602(Δ[7*n²])` -/
def P2404323471093808858.Spec : Prop :=
  ∀ n, P2404323471093808858.a n = A134503 n

end A134503

/-! ## A134503.P13949493222838916924

`A115339(7*(2*n+1))`
-/

namespace A134503.P13949493222838916924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (7 * (2 * n + 1))

end

end A134503.P13949493222838916924

namespace A134503

/-- `A115339(7*(2*n+1))` -/
def P13949493222838916924.Spec : Prop :=
  ∀ n, P13949493222838916924.a n = A134503 n

end A134503

/-! ## A134503.P3897022234589129618

`A000071(7*n+5)+1`
-/

namespace A134503.P3897022234589129618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (7 * n + 5) + 1

end

end A134503.P3897022234589129618

namespace A134503

/-- `A000071(7*n+5)+1` -/
def P3897022234589129618.Spec : Prop :=
  ∀ n, P3897022234589129618.a n = A134503 n

end A134503

/-! ## A134503.P14551048654188995093

`A001611(7*n+5)-1`
-/

namespace A134503.P14551048654188995093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n + 5) - 1

end

end A134503.P14551048654188995093

namespace A134503

/-- `A001611(7*n+5)-1` -/
def P14551048654188995093.Spec : Prop :=
  ∀ n, P14551048654188995093.a n = A134503 n

end A134503

/-!
# A134504: a(n) = Fibonacci(7n + 6).

The programs for A134504, the canonical program `A134504.P7612072969368070179` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134504 has offset 0).

The definition of A134504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134504.P7612072969368070179

`29*a(n-1)+a(n-2)` with `a(0)=8, a(1)=233`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134504

/-- `29*a(n-1)+a(n-2)` -/
def P7612072969368070179.Spec : Prop :=
  ∀ n, (P7612072969368070179.a n : ℤ) = A134504 n

theorem P7612072969368070179.correct : P7612072969368070179.Spec := by
  intro n
  simp only [A134504]

end A134504

/-! ## A134504.P14474460942186449909

`A000045(A017053(n))`
-/

namespace A134504.P14474460942186449909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A017053 n).toNat

end

end A134504.P14474460942186449909

namespace A134504

/-- `A000045(A017053(n))` -/
def P14474460942186449909.Spec : Prop :=
  ∀ n, P14474460942186449909.a n = A134504 n

end A134504

/-! ## A134504.P8900178916259903702

`A020712(7*n+1)`
-/

namespace A134504.P8900178916259903702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 (7 * n + 1)

end

end A134504.P8900178916259903702

namespace A134504

/-- `A020712(7*n+1)` -/
def P8900178916259903702.Spec : Prop :=
  ∀ n, P8900178916259903702.a n = A134504 n

end A134504

/-! ## A134504.P11526971944247722145

`A212804(7*(n+1))`
-/

namespace A134504.P11526971944247722145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (7 * (n + 1))

end

end A134504.P11526971944247722145

namespace A134504

/-- `A212804(7*(n+1))` -/
def P11526971944247722145.Spec : Prop :=
  ∀ n, P11526971944247722145.a n = A134504 n

end A134504

/-! ## A134504.P3118810921583861134

`A324969(7*(n+1))`
-/

namespace A134504.P3118810921583861134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (7 * (n + 1))

end

end A134504.P3118810921583861134

namespace A134504

/-- `A324969(7*(n+1))` -/
def P3118810921583861134.Spec : Prop :=
  ∀ n, P3118810921583861134.a n = A134504 n

end A134504

/-! ## A134504.P8249200531042632090

`A000045(7*n+6)`
-/

namespace A134504.P8249200531042632090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (7 * n + 6)

end

end A134504.P8249200531042632090

namespace A134504

/-- `A000045(7*n+6)` -/
def P8249200531042632090.Spec : Prop :=
  ∀ n, P8249200531042632090.a n = A134504 n

end A134504

/-! ## A134504.P9851138355638256676

`A116470(7*(2*n+1))`
-/

namespace A134504.P9851138355638256676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (7 * (2 * n + 1))

end

end A134504.P9851138355638256676

namespace A134504

/-- `A116470(7*(2*n+1))` -/
def P9851138355638256676.Spec : Prop :=
  ∀ n, P9851138355638256676.a n = A134504 n

end A134504

/-! ## A134504.P1843658199275811609

`A259623(7*(2*n+1))`
-/

namespace A134504.P1843658199275811609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (7 * (2 * n + 1))

end

end A134504.P1843658199275811609

namespace A134504

/-- `A259623(7*(2*n+1))` -/
def P1843658199275811609.Spec : Prop :=
  ∀ n, P1843658199275811609.a n = A134504 n

end A134504

/-! ## A134504.P13314556247689186336

`A000071(7*n+6)+1`
-/

namespace A134504.P13314556247689186336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (7 * n + 6) + 1

end

end A134504.P13314556247689186336

namespace A134504

/-- `A000071(7*n+6)+1` -/
def P13314556247689186336.Spec : Prop :=
  ∀ n, P13314556247689186336.a n = A134504 n

end A134504

/-! ## A134504.P1288973981139405807

`A001611(7*n+6)-1`
-/

namespace A134504.P1288973981139405807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (7 * n + 6) - 1

end

end A134504.P1288973981139405807

namespace A134504

/-- `A001611(7*n+6)-1` -/
def P1288973981139405807.Spec : Prop :=
  ∀ n, P1288973981139405807.a n = A134504 n

end A134504

/-!
# A134505: Replace 0's with 1's in triangle A049310, and take absolute values.

The programs for A134505, the canonical program `A134505.P6935622930957667742` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134505 has offset 1).

The definition of A134505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134505.P15552077956969934808

`ceil(A131324(n)/2)`
-/

namespace A134505.P15552077956969934808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131324 n : ℚ) / 2⌉

end

end A134505.P15552077956969934808

namespace A134505

/-- `ceil(A131324(n)/2)` -/
def P15552077956969934808.Spec : Prop :=
  ∀ n, P15552077956969934808.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P14436002847238740579

`(abs(1-2*A168561(n))+1)/2`
-/

namespace A134505.P14436002847238740579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - 2 * A168561 n| + 1 : ℚ) / 2

end

end A134505.P14436002847238740579

namespace A134505

/-- `(abs(1-2*A168561(n))+1)/2` -/
def P14436002847238740579.Spec : Prop :=
  ∀ n, P14436002847238740579.a n = (A134505 (n + 1) : ℚ)

end A134505

/-! ## A134505.P9209207438381469755

`A046854(lcm(n, A369736(n)))`
-/

namespace A134505.P9209207438381469755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (Int.lcm (n : ℤ) (A369736 n))

end

end A134505.P9209207438381469755

namespace A134505

/-- `A046854(lcm(n, A369736(n)))` -/
def P9209207438381469755.Spec : Prop :=
  ∀ n, P9209207438381469755.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P15985719559972015633

`A046854(n*A369736(n)²)`
-/

namespace A134505.P15985719559972015633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 ((n : ℤ) * A369736 n ^ 2).toNat

end

end A134505.P15985719559972015633

namespace A134505

/-- `A046854(n*A369736(n)²)` -/
def P15985719559972015633.Spec : Prop :=
  ∀ n, P15985719559972015633.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P4877003271100052853

`A134513(n*A369736(n)²)`
-/

namespace A134505.P4877003271100052853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 ((n : ℤ) * A369736 n ^ 2).toNat

end

end A134505.P4877003271100052853

namespace A134505

/-- `A134513(n*A369736(n)²)` -/
def P4877003271100052853.Spec : Prop :=
  ∀ n, P4877003271100052853.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P15561260760392061518

`A168561(n*A369736(n)²)`
-/

namespace A134505.P15561260760392061518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 ((n : ℤ) * A369736 n ^ 2).toNat

end

end A134505.P15561260760392061518

namespace A134505

/-- `A168561(n*A369736(n)²)` -/
def P15561260760392061518.Spec : Prop :=
  ∀ n, P15561260760392061518.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P5405480679039156851

`A046854(n*A128174(n+1))`
-/

namespace A134505.P5405480679039156851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 ((n : ℤ) * A128174 (n + 1)).toNat

end

end A134505.P5405480679039156851

namespace A134505

/-- `A046854(n*A128174(n+1))` -/
def P5405480679039156851.Spec : Prop :=
  ∀ n, P5405480679039156851.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P10454738865956440624

`A134513(n*A128174(n+1))`
-/

namespace A134505.P10454738865956440624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 ((n : ℤ) * A128174 (n + 1)).toNat

end

end A134505.P10454738865956440624

namespace A134505

/-- `A134513(n*A128174(n+1))` -/
def P10454738865956440624.Spec : Prop :=
  ∀ n, P10454738865956440624.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P8336596616876979681

`A168561(n*A128174(n+1))`
-/

namespace A134505.P8336596616876979681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 ((n : ℤ) * A128174 (n + 1)).toNat

end

end A134505.P8336596616876979681

namespace A134505

/-- `A168561(n*A128174(n+1))` -/
def P8336596616876979681.Spec : Prop :=
  ∀ n, P8336596616876979681.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P12649192381979567692

`A168561(n)+1-A128174(n+1)`
-/

namespace A134505.P12649192381979567692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n + (1 - A128174 (n + 1))

end

end A134505.P12649192381979567692

namespace A134505

/-- `A168561(n)+1-A128174(n+1)` -/
def P12649192381979567692.Spec : Prop :=
  ∀ n, P12649192381979567692.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P6935622930957667742

`A107230(n)/gcd(A107230(n), A108044(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134505

/-- `A107230(n)/gcd(A107230(n), A108044(n))` -/
def P6935622930957667742.Spec : Prop :=
  ∀ n, P6935622930957667742.a n = (A134505 (n + 1) : ℚ)

end A134505

/-! ## A134505.P1506634495046412204

`A028310(A168561(n))`
-/

namespace A134505.P1506634495046412204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A168561 n).toNat

end

end A134505.P1506634495046412204

namespace A134505

/-- `A028310(A168561(n))` -/
def P1506634495046412204.Spec : Prop :=
  ∀ n, P1506634495046412204.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P6931708556591245919

`A028310(A135222(n)-1)`
-/

namespace A134505.P6931708556591245919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A135222 n - 1).toNat

end

end A134505.P6931708556591245919

namespace A134505

/-- `A028310(A135222(n)-1)` -/
def P6931708556591245919.Spec : Prop :=
  ∀ n, P6931708556591245919.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P12034135091677358317

`A000463(A131324(n))`
-/

namespace A134505.P12034135091677358317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131324 n).toNat

end

end A134505.P12034135091677358317

namespace A134505

/-- `A000463(A131324(n))` -/
def P12034135091677358317.Spec : Prop :=
  ∀ n, P12034135091677358317.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P18003374790634703860

`A008620(A131325(n))`
-/

namespace A134505.P18003374790634703860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131325 n).toNat

end

end A134505.P18003374790634703860

namespace A134505

/-- `A008620(A131325(n))` -/
def P18003374790634703860.Spec : Prop :=
  ∀ n, P18003374790634703860.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P15184330106749244401

`A086161(A131325(n)-1)`
-/

namespace A134505.P15184330106749244401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A131325 n - 1).toNat

end

end A134505.P15184330106749244401

namespace A134505

/-- `A086161(A131325(n)-1)` -/
def P15184330106749244401.Spec : Prop :=
  ∀ n, P15184330106749244401.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P12530200871264810102

`A008621(A131327(n))`
-/

namespace A134505.P12530200871264810102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A131327 n).toNat

end

end A134505.P12530200871264810102

namespace A134505

/-- `A008621(A131327(n))` -/
def P12530200871264810102.Spec : Prop :=
  ∀ n, P12530200871264810102.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P15318786781810869725

`A008624(A131327(n)-1)`
-/

namespace A134505.P15318786781810869725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A131327 n - 1).toNat

end

end A134505.P15318786781810869725

namespace A134505

/-- `A008624(A131327(n)-1)` -/
def P15318786781810869725.Spec : Prop :=
  ∀ n, P15318786781810869725.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P12768341337171640118

`A059169(A131327(n)+2)`
-/

namespace A134505.P12768341337171640118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A131327 n + 2).toNat

end

end A134505.P12768341337171640118

namespace A134505

/-- `A059169(A131327(n)+2)` -/
def P12768341337171640118.Spec : Prop :=
  ∀ n, P12768341337171640118.a n = A134505 (n + 1)

end A134505

/-! ## A134505.P9118369013694578444

`A167269(A056943(n+1))`
-/

namespace A134505.P9118369013694578444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167269 (A056943 (n + 1)).toNat

end

end A134505.P9118369013694578444

namespace A134505

/-- `A167269(A056943(n+1))` -/
def P9118369013694578444.Spec : Prop :=
  ∀ n, P9118369013694578444.a n = A134505 (n + 1)

end A134505

/-!
# A134506: Number of 2 X 2 singular integer matrices with elements from {1,...,n}.

The programs for A134506, there is no canonical definition to state claims against.
-/

/-! ## A134506.P3179933160980722140

`A059306(n)-(2*n+1)²`
-/

namespace A134506.P3179933160980722140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n - ((2 * n + 1) ^ 2 : ℤ)

end

end A134506.P3179933160980722140

/-! ## A134506.P9247952960618134939

`abs(A016754(n)-A059306(n))`
-/

namespace A134506.P9247952960618134939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016754 n - A059306 n|

end

end A134506.P9247952960618134939

/-! ## A134506.P10515283825031778124

`A210371(n)-A210372(n)-(2*n+1)²`
-/

namespace A134506.P10515283825031778124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210371 n - A210372 n - ((2 * n + 1) ^ 2 : ℤ)

end

end A134506.P10515283825031778124

/-! ## A134506.P9610041742045523528

`2*A210371(n)-A210369(n)-(2*n+1)²`
-/

namespace A134506.P9610041742045523528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210371 n - A210369 n - ((2 * n + 1) ^ 2 : ℤ)

end

end A134506.P9610041742045523528

/-! ## A134506.P16592656710627025941

`∑[A016813(A209295(n))]-A016754(n)`
-/

namespace A134506.P16592656710627025941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A209295 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A016754 n

end

end A134506.P16592656710627025941

/-! ## A134506.P818302536467103950

`(n^4)%A211056(round(acot(n)+n))`
-/

namespace A134506.P818302536467103950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 4 : ℤ) (A211056 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A134506.P818302536467103950

/-! ## A134506.P2976570273884659835

`n²²-A211056(A028310(n))`
-/

namespace A134506.P2976570273884659835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A211056 (A028310 n).toNat

end

end A134506.P2976570273884659835

/-! ## A134506.P2635500487912148520

`A000583(n)%A211056(A233583(n+1))`
-/

namespace A134506.P2635500487912148520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A211056 (A233583 (n + 1)).toNat)

end

end A134506.P2635500487912148520

/-! ## A134506.P11666061308901455355

`A209994(n)-A209979(n)`
-/

namespace A134506.P11666061308901455355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - A209979 n

end

end A134506.P11666061308901455355

/-! ## A134506.P10615282505059708584

`A209994(n)-2*A196227(n)`
-/

namespace A134506.P10615282505059708584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209994 n - 2 * A196227 n

end

end A134506.P10615282505059708584

/-! ## A134506.P4025851598840551682

`A209992(n)-A196227(n)`
-/

namespace A134506.P4025851598840551682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n - A196227 n

end

end A134506.P4025851598840551682

/-! ## A134506.P4088480111320119967

`A209992(n)-2*A209978(n)`
-/

namespace A134506.P4088480111320119967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n - 2 * A209978 n

end

end A134506.P4088480111320119967

/-! ## A134506.P6021532122066736535

`2*A209992(n)-A209994(n)`
-/

namespace A134506.P6021532122066736535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209992 n - A209994 n

end

end A134506.P6021532122066736535

/-! ## A134506.P1075372682125656102

`A209992(n)-A005843(A209978(n))`
-/

namespace A134506.P1075372682125656102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209992 n - A005843 (A209978 n).toNat

end

end A134506.P1075372682125656102

/-!
# A134507: Number of rectangles in a pyramid built with squares. The squares counted in A092498 are excluded.

The programs for A134507, the canonical program `A134507.P7317365896397524393` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134507 has offset 1).

The definition of A134507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134507.P7317365896397524393

`∑[∑[∑[∑[floor(a(n-3))]]]]` with `a(0)=0, a(1)=4, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134507

/-- `∑[∑[∑[∑[floor(a(n-3))]]]]` -/
def P7317365896397524393.Spec : Prop :=
  ∀ n, (P7317365896397524393.a n : ℤ) = A134507 (n + 1)

theorem P7317365896397524393.correct : P7317365896397524393.Spec := by
  intro n
  simp only [A134507, Nat.add_sub_cancel]

end A134507

/-! ## A134507.P17958358939348376178

`∑[∑[floor((2*n+1)*(3*n+1)/3)]]`
-/

namespace A134507.P17958358939348376178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) * (3 * n + 1) : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134507.P17958358939348376178

namespace A134507

/-- `∑[∑[floor((2*n+1)*(3*n+1)/3)]]` -/
def P17958358939348376178.Spec : Prop :=
  ∀ n, P17958358939348376178.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P5568490743072555483

`A002417(n+1)-∑[∑[floor(4*(n+1)/3)]]`
-/

namespace A134507.P5568490743072555483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n + 1 : ℚ) / 3)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134507.P5568490743072555483

namespace A134507

/-- `A002417(n+1)-∑[∑[floor(4*(n+1)/3)]]` -/
def P5568490743072555483.Spec : Prop :=
  ∀ n, P5568490743072555483.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P15640191493572442698

`A060999(n)+A004320(n)`
-/

namespace A134507.P15640191493572442698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 n + A004320 n

end

end A134507.P15640191493572442698

namespace A134507

/-- `A060999(n)+A004320(n)` -/
def P15640191493572442698.Spec : Prop :=
  ∀ n, P15640191493572442698.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P2027856053738373196

`A002624(2*n)-A000601(2*n)`
-/

namespace A134507.P2027856053738373196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (2 * n) - A000601 (2 * n)

end

end A134507.P2027856053738373196

namespace A134507

/-- `A002624(2*n)-A000601(2*n)` -/
def P2027856053738373196.Spec : Prop :=
  ∀ n, P2027856053738373196.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P9968199529852829934

`n*A000292(n+1)-A026810(2*n+1)`
-/

namespace A134507.P9968199529852829934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000292 (n + 1) - A026810 (2 * n + 1)

end

end A134507.P9968199529852829934

namespace A134507

/-- `n*A000292(n+1)-A026810(2*n+1)` -/
def P9968199529852829934.Spec : Prop :=
  ∀ n, P9968199529852829934.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P14952493253384657320

`n*A000292(n+1)-A059291(2*n+1)`
-/

namespace A134507.P14952493253384657320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000292 (n + 1) - A059291 (2 * n + 1)

end

end A134507.P14952493253384657320

namespace A134507

/-- `n*A000292(n+1)-A059291(2*n+1)` -/
def P14952493253384657320.Spec : Prop :=
  ∀ n, P14952493253384657320.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P18184667478237180103

`n*A008804(2*n)-A026810(2*n+1)`
-/

namespace A134507.P18184667478237180103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008804 (2 * n) - A026810 (2 * n + 1)

end

end A134507.P18184667478237180103

namespace A134507

/-- `n*A008804(2*n)-A026810(2*n+1)` -/
def P18184667478237180103.Spec : Prop :=
  ∀ n, P18184667478237180103.a n = A134507 (n + 1)

end A134507

/-! ## A134507.P14762468098608008524

`n*A005232(2*n+1)-A026810(2*n+1)`
-/

namespace A134507.P14762468098608008524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005232 (2 * n + 1) - A026810 (2 * n + 1)

end

end A134507.P14762468098608008524

namespace A134507

/-- `n*A005232(2*n+1)-A026810(2*n+1)` -/
def P14762468098608008524.Spec : Prop :=
  ∀ n, P14762468098608008524.a n = A134507 (n + 1)

end A134507

/-!
# A134508: Row sums of triangle A134507.

The programs for A134508, the canonical program `A134508.P9511887136975010526` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134508 has offset 1).

The definition of A134508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134508.P9511887136975010526

`A000045(n)+n-1+a(n-2)+a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134508

/-- `A000045(n)+n-1+a(n-2)+a(n-1)` -/
def P9511887136975010526.Spec : Prop :=
  ∀ n, P9511887136975010526.a n = A134508 (n + 1)

theorem P9511887136975010526.correct : P9511887136975010526.Spec := by
  intro n
  simp only [A134508, Nat.add_sub_cancel]

end A134508

/-! ## A134508.P12502050028754644025

`A104161(n)+A055244(n)`
-/

namespace A134508.P12502050028754644025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n + A055244 n

end

end A134508.P12502050028754644025

namespace A134508

/-- `A104161(n)+A055244(n)` -/
def P12502050028754644025.Spec : Prop :=
  ∀ n, P12502050028754644025.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P9862709357431389157

`A006478(n)+∑[A001595(n)]`
-/

namespace A134508.P9862709357431389157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134508.P9862709357431389157

namespace A134508

/-- `A006478(n)+∑[A001595(n)]` -/
def P9862709357431389157.Spec : Prop :=
  ∀ n, P9862709357431389157.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P5908101058310506769

`A104161(n+1)+A006478(n)`
-/

namespace A134508.P5908101058310506769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 (n + 1) + A006478 n

end

end A134508.P5908101058310506769

namespace A134508

/-- `A104161(n+1)+A006478(n)` -/
def P5908101058310506769.Spec : Prop :=
  ∀ n, P5908101058310506769.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P14762557035847609886

`A006478(n)+∑[∑[A006355(n)]]`
-/

namespace A134508.P14762557035847609886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134508.P14762557035847609886

namespace A134508

/-- `A006478(n)+∑[∑[A006355(n)]]` -/
def P14762557035847609886.Spec : Prop :=
  ∀ n, P14762557035847609886.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P8546581949566455785

`∑[A208354(n)+A000071(n+1)]`
-/

namespace A134508.P8546581949566455785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n + A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134508.P8546581949566455785

namespace A134508

/-- `∑[A208354(n)+A000071(n+1)]` -/
def P8546581949566455785.Spec : Prop :=
  ∀ n, P8546581949566455785.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P3259125577417339170

`A029907(n+1)+∑[A000071(n+1)]`
-/

namespace A134508.P3259125577417339170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134508.P3259125577417339170

namespace A134508

/-- `A029907(n+1)+∑[A000071(n+1)]` -/
def P3259125577417339170.Spec : Prop :=
  ∀ n, P3259125577417339170.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P10868361775821812972

`∑[A001595(n)]+A055244(n)-A001595(n)`
-/

namespace A134508.P10868361775821812972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A055244 n - A001595 n)

end

end A134508.P10868361775821812972

namespace A134508

/-- `∑[A001595(n)]+A055244(n)-A001595(n)` -/
def P10868361775821812972.Spec : Prop :=
  ∀ n, P10868361775821812972.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P2922677906158787964

`record[Δ[A239342(n+1)]-n]`
-/

namespace A134508.P2922677906158787964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134508.P2922677906158787964

namespace A134508

/-- `record[Δ[A239342(n+1)]-n]` -/
def P2922677906158787964.Spec : Prop :=
  ∀ n, P2922677906158787964.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P5496545562665201798

`Δ[A239342(n+3)]-(n+2)`
-/

namespace A134508.P5496545562665201798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A134508.P5496545562665201798

namespace A134508

/-- `Δ[A239342(n+3)]-(n+2)` -/
def P5496545562665201798.Spec : Prop :=
  ∀ n, P5496545562665201798.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P10502405593287874695

`A000045(n+1)+A113684(n)-A006478(n+1)`
-/

namespace A134508.P10502405593287874695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A113684 n - A006478 (n + 1))

end

end A134508.P10502405593287874695

namespace A134508

/-- `A000045(n+1)+A113684(n)-A006478(n+1)` -/
def P10502405593287874695.Spec : Prop :=
  ∀ n, P10502405593287874695.a n = A134508 (n + 1)

end A134508

/-! ## A134508.P1885190851198138590

`A029907(n+1)+A113684(n+1)-A004798(n+1)`
-/

namespace A134508.P1885190851198138590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) + (A113684 (n + 1) - A004798 (n + 1))

end

end A134508.P1885190851198138590

namespace A134508

/-- `A029907(n+1)+A113684(n+1)-A004798(n+1)` -/
def P1885190851198138590.Spec : Prop :=
  ∀ n, P1885190851198138590.a n = A134508 (n + 1)

end A134508

/-!
# A134509: Triangular numbers remaining after arranging positive terms of A000217 in a triangle and removing an infinite number of "^"-shaped layers as described below.

The programs for A134509, there is no canonical definition to state claims against.
-/

/-! ## A134509.P4902824890929119794

`A147849(A001841(n+4))`
-/

namespace A134509.P4902824890929119794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147849 (A001841 (n + 4)).toNat

end

end A134509.P4902824890929119794

/-! ## A134509.P7789068630045686842

`A147849(A141224(n+2)+1)`
-/

namespace A134509.P7789068630045686842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147849 (A141224 (n + 2) + 1).toNat

end

end A134509.P7789068630045686842

/-! ## A134509.P4919677276072649943

`A000217(eq[A185037(n), A303913(n)])`
-/

namespace A134509.P4919677276072649943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A134509.P4919677276072649943

/-!
# A134510: A112552 * A128174.

The programs for A134510, there is no canonical definition to state claims against.
-/

/-! ## A134510.P17720902251652878795

`A054450(comp[∑[n]])`
-/

namespace A134510.P17720902251652878795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134510.P17720902251652878795

/-! ## A134510.P5975248375690273454

`A099573(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A134510.P5975248375690273454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A134510.P5975248375690273454

/-! ## A134510.P11286566311629885903

`A099573(A099375(n)+n)`
-/

namespace A134510.P11286566311629885903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A099375 n + (n : ℤ)).toNat

end

end A134510.P11286566311629885903

/-! ## A134510.P2940452499652637235

`A099573(A061579(comp[∑[n]]))`
-/

namespace A134510.P2940452499652637235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A134510.P2940452499652637235

/-! ## A134510.P789534283441664279

`∑{d}[A054450(A014132(n+1)), A000010(#)]`
-/

namespace A134510.P789534283441664279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A134510.P789534283441664279

/-! ## A134510.P278278320300483011

`∏{d}[A054450(A014132(n+1)), A014963(#)]`
-/

namespace A134510.P278278320300483011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A134510.P278278320300483011

/-! ## A134510.P17395297611973877481

`A007318(∑[n])*A054450(A014132(n+1))`
-/

namespace A134510.P17395297611973877481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A054450 (A014132 (n + 1)).toNat

end

end A134510.P17395297611973877481

/-! ## A134510.P16343847543774177231

`A054450(A014132(n+1))/A007318(∑[n+1])`
-/

namespace A134510.P16343847543774177231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054450 (A014132 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A134510.P16343847543774177231

/-! ## A134510.P14880517765402615066

`A099573(A380649(n+1))`
-/

namespace A134510.P14880517765402615066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A380649 (n + 1)).toNat

end

end A134510.P14880517765402615066

/-!
# A134511: abs(A049310) * A128174 provided both arrays are read with offset (n,k) = (0,0).

The programs for A134511, there is no canonical definition to state claims against.
-/

/-! ## A134511.P15256111429068082983

`lcm(A054450(n), A369736(n))`
-/

namespace A134511.P15256111429068082983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054450 n) (A369736 n)

end

end A134511.P15256111429068082983

/-! ## A134511.P7635141969791221801

`A054450(n)*A128174(n+1)`
-/

namespace A134511.P7635141969791221801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 n * A128174 (n + 1)

end

end A134511.P7635141969791221801

/-! ## A134511.P9971966851864684791

`A038792(A057028(n+1))*A128174(n+1)`
-/

namespace A134511.P9971966851864684791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A057028 (n + 1)).toNat * A128174 (n + 1)

end

end A134511.P9971966851864684791

/-! ## A134511.P7722283581763402374

`A099573(A061579(n))*A128174(n+1)`
-/

namespace A134511.P7722283581763402374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A061579 n).toNat * A128174 (n + 1)

end

end A134511.P7722283581763402374

/-! ## A134511.P16076703233034134431

`A038792(A209293(n+1))*A128174(n+1)`
-/

namespace A134511.P16076703233034134431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038792 (A209293 (n + 1)).toNat * A128174 (n + 1)

end

end A134511.P16076703233034134431

/-! ## A134511.P337579370090154170

`A059841(A151890(n))*A099573(A061579(n))`
-/

namespace A134511.P337579370090154170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A151890 n).toNat * A099573 (A061579 n).toNat

end

end A134511.P337579370090154170

/-! ## A134511.P9711406885142741285

`A000035(A101493(n))*A099573(A061579(n))`
-/

namespace A134511.P9711406885142741285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A101493 n).toNat * A099573 (A061579 n).toNat

end

end A134511.P9711406885142741285

/-! ## A134511.P10174231397908550911

`A010873(A165447(n+2))*A099573(A061579(n))`
-/

namespace A134511.P10174231397908550911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A165447 (n + 2)).toNat * A099573 (A061579 n).toNat

end

end A134511.P10174231397908550911

/-! ## A134511.P14495309740906190688

`A010052(A130321(n))*A099573(A061579(n))`
-/

namespace A134511.P14495309740906190688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A130321 n).toNat * A099573 (A061579 n).toNat

end

end A134511.P14495309740906190688

/-!
# A134512: Row sums of triangle A134511.

The programs for A134512, the canonical program `A134512.P14449246097379148271` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134512 has offset 0).

The definition of A134512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134512.P14449246097379148271

`A291241(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A134512

/-- `A291241(n-1)+a(n-2)` -/
def P14449246097379148271.Spec : Prop :=
  ∀ n, P14449246097379148271.a n = A134512 n

theorem P14449246097379148271.correct : P14449246097379148271.Spec := by
  intro n
  simp only [A134512]

end A134512

/-! ## A134512.P14900299280103812075

`A129722(n)+∑[A212804(n)]`
-/

namespace A134512.P14900299280103812075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134512.P14900299280103812075

namespace A134512

/-- `A129722(n)+∑[A212804(n)]` -/
def P14900299280103812075.Spec : Prop :=
  ∀ n, P14900299280103812075.a n = A134512 n

end A134512

/-! ## A134512.P5207341468669392011

`A129722(n)+A000045(n+1)`
-/

namespace A134512.P5207341468669392011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + A000045 (n + 1)

end

end A134512.P5207341468669392011

namespace A134512

/-- `A129722(n)+A000045(n+1)` -/
def P5207341468669392011.Spec : Prop :=
  ∀ n, P5207341468669392011.a n = A134512 n

end A134512

/-! ## A134512.P12945783905904389428

`A212804(n+2)+A129722(n)`
-/

namespace A134512.P12945783905904389428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A129722 n

end

end A134512.P12945783905904389428

namespace A134512

/-- `A212804(n+2)+A129722(n)` -/
def P12945783905904389428.Spec : Prop :=
  ∀ n, P12945783905904389428.a n = A134512 n

end A134512

/-! ## A134512.P12726151415950952469

`A129722(n)+Δ[A000071(n+2)]`
-/

namespace A134512.P12726151415950952469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + (f1 (n + 1) - f1 n)

end

end A134512.P12726151415950952469

namespace A134512

/-- `A129722(n)+Δ[A000071(n+2)]` -/
def P12726151415950952469.Spec : Prop :=
  ∀ n, P12726151415950952469.a n = A134512 n

end A134512

/-! ## A134512.P11178668834902680643

`A000071(n+1)+A129722(n)+1`
-/

namespace A134512.P11178668834902680643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A129722 n + 1)

end

end A134512.P11178668834902680643

namespace A134512

/-- `A000071(n+1)+A129722(n)+1` -/
def P11178668834902680643.Spec : Prop :=
  ∀ n, P11178668834902680643.a n = A134512 n

end A134512

/-! ## A134512.P16097338705505891477

`A129722(n)+Δ[A053602(2*n+1)]`
-/

namespace A134512.P16097338705505891477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + (f1 (n + 1) - f1 n)

end

end A134512.P16097338705505891477

namespace A134512

/-- `A129722(n)+Δ[A053602(2*n+1)]` -/
def P16097338705505891477.Spec : Prop :=
  ∀ n, P16097338705505891477.a n = A134512 n

end A134512

/-! ## A134512.P8648580098105356732

`A129722(n)+A053602(Δ[A002378(n)])`
-/

namespace A134512.P8648580098105356732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + A053602 (f1 (n + 1) - f1 n).toNat

end

end A134512.P8648580098105356732

namespace A134512

/-- `A129722(n)+A053602(Δ[A002378(n)])` -/
def P8648580098105356732.Spec : Prop :=
  ∀ n, P8648580098105356732.a n = A134512 n

end A134512

/-! ## A134512.P15247859184517462887

`A129722(n)+A053602(Δ[A014206(n)])`
-/

namespace A134512.P15247859184517462887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + A053602 (f1 (n + 1) - f1 n).toNat

end

end A134512.P15247859184517462887

namespace A134512

/-- `A129722(n)+A053602(Δ[A014206(n)])` -/
def P15247859184517462887.Spec : Prop :=
  ∀ n, P15247859184517462887.a n = A134512 n

end A134512

/-! ## A134512.P6291042683779441099

`A129722(n)+A053602(Δ[A027691(n)])`
-/

namespace A134512.P6291042683779441099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + A053602 (f1 (n + 1) - f1 n).toNat

end

end A134512.P6291042683779441099

namespace A134512

/-- `A129722(n)+A053602(Δ[A027691(n)])` -/
def P6291042683779441099.Spec : Prop :=
  ∀ n, P6291042683779441099.a n = A134512 n

end A134512

/-! ## A134512.P10025568646468339180

`A239342(n+2)-A291241(n)`
-/

namespace A134512.P10025568646468339180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (n + 2) - A291241 n

end

end A134512.P10025568646468339180

namespace A134512

/-- `A239342(n+2)-A291241(n)` -/
def P10025568646468339180.Spec : Prop :=
  ∀ n, P10025568646468339180.a n = A134512 n

end A134512

/-! ## A134512.P8983746636984003372

`A128620(n)-A001629(n)`
-/

namespace A134512.P8983746636984003372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128620 n - A001629 n

end

end A134512.P8983746636984003372

namespace A134512

/-- `A128620(n)-A001629(n)` -/
def P8983746636984003372.Spec : Prop :=
  ∀ n, P8983746636984003372.a n = A134512 n

end A134512

/-! ## A134512.P16654229042806952156

`A129722(n)+A091533(∑[n])`
-/

namespace A134512.P16654229042806952156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + A091533 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134512.P16654229042806952156

namespace A134512

/-- `A129722(n)+A091533(∑[n])` -/
def P16654229042806952156.Spec : Prop :=
  ∀ n, P16654229042806952156.a n = A134512 n

end A134512

/-!
# A134513: Triangle read by rows: T(n, k) = binomial(ceiling((n+k)/2), floor((n-k)/2)).

The programs for A134513, the canonical program `A134513.P11345042164523319292` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134513 has offset 0).

The definition of A134513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134513.P4472951305267484248

`gcd(Δ[A049310(n)], A049310(n))`
-/

namespace A134513.P4472951305267484248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A049310 n)

end

end A134513.P4472951305267484248

namespace A134513

/-- `gcd(Δ[A049310(n)], A049310(n))` -/
def P4472951305267484248.Spec : Prop :=
  ∀ n, (P4472951305267484248.a n : ℤ) = A134513 n

end A134513

/-! ## A134513.P17072559007168578808

`gcd(Δ[A168561(n)], A168561(n))`
-/

namespace A134513.P17072559007168578808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A168561 n)

end

end A134513.P17072559007168578808

namespace A134513

/-- `gcd(Δ[A168561(n)], A168561(n))` -/
def P17072559007168578808.Spec : Prop :=
  ∀ n, (P17072559007168578808.a n : ℤ) = A134513 n

end A134513

/-! ## A134513.P12492833740961637184

`A046854(A128174(n+2)+n)`
-/

namespace A134513.P12492833740961637184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A128174 (n + 2) + (n : ℤ)).toNat

end

end A134513.P12492833740961637184

namespace A134513

/-- `A046854(A128174(n+2)+n)` -/
def P12492833740961637184.Spec : Prop :=
  ∀ n, P12492833740961637184.a n = A134513 n

end A134513

/-! ## A134513.P3603757242790109232

`A168561(A128174(n+2)+n)`
-/

namespace A134513.P3603757242790109232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (A128174 (n + 2) + (n : ℤ)).toNat

end

end A134513.P3603757242790109232

namespace A134513

/-- `A168561(A128174(n+2)+n)` -/
def P3603757242790109232.Spec : Prop :=
  ∀ n, P3603757242790109232.a n = A134513 n

end A134513

/-! ## A134513.P6404116561895330777

`gcd(abs(A049310(n)), A049310(n+1))`
-/

namespace A134513.P6404116561895330777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A049310 n| (A049310 (n + 1))

end

end A134513.P6404116561895330777

namespace A134513

/-- `gcd(abs(A049310(n)), A049310(n+1))` -/
def P6404116561895330777.Spec : Prop :=
  ∀ n, (P6404116561895330777.a n : ℤ) = A134513 n

end A134513

/-! ## A134513.P11345042164523319292

`A134505(n+1)*A134505(n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134513

/-- `A134505(n+1)*A134505(n+2)` -/
def P11345042164523319292.Spec : Prop :=
  ∀ n, P11345042164523319292.a n = A134513 n

theorem P11345042164523319292.correct : P11345042164523319292.Spec := by
  intro n
  simp only [A134513]

end A134513

/-! ## A134513.P11227385986700853650

`A134505(n+2)+A131324(n)-A134505(n+1)`
-/

namespace A134513.P11227385986700853650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134505 (n + 2) + (A131324 n - A134505 (n + 1))

end

end A134513.P11227385986700853650

namespace A134513

/-- `A134505(n+2)+A131324(n)-A134505(n+1)` -/
def P11227385986700853650.Spec : Prop :=
  ∀ n, P11227385986700853650.a n = A134513 n

end A134513

/-! ## A134513.P11738173387273008529

`A059674(A375779(n+1))`
-/

namespace A134513.P11738173387273008529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A375779 (n + 1)).toNat

end

end A134513.P11738173387273008529

namespace A134513

/-- `A059674(A375779(n+1))` -/
def P11738173387273008529.Spec : Prop :=
  ∀ n, P11738173387273008529.a n = A134513 n

end A134513

/-! ## A134513.P13697297086352751383

`A206474(comp[∑[n]])`
-/

namespace A134513.P13697297086352751383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206474 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134513.P13697297086352751383

namespace A134513

/-- `A206474(comp[∑[n]])` -/
def P13697297086352751383.Spec : Prop :=
  ∀ n, P13697297086352751383.a n = A134513 n

end A134513

/-! ## A134513.P13060689005564592928

`abs(A185331(∑[A035214(n)]))`
-/

namespace A134513.P13060689005564592928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A134513.P13060689005564592928

namespace A134513

/-- `abs(A185331(∑[A035214(n)]))` -/
def P13060689005564592928.Spec : Prop :=
  ∀ n, P13060689005564592928.a n = A134513 n

end A134513

/-! ## A134513.P8569596792371785782

`A168561(A000007(A168561(n))+n)`
-/

namespace A134513.P8569596792371785782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (A000007 (A168561 n).toNat + (n : ℤ)).toNat

end

end A134513.P8569596792371785782

namespace A134513

/-- `A168561(A000007(A168561(n))+n)` -/
def P8569596792371785782.Spec : Prop :=
  ∀ n, P8569596792371785782.a n = A134513 n

end A134513

/-! ## A134513.P964170331582354639

`A028310(abs(Δ[A135222(n)]))`
-/

namespace A134513.P964170331582354639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |f1 (n + 1) - f1 n|.toNat

end

end A134513.P964170331582354639

namespace A134513

/-- `A028310(abs(Δ[A135222(n)]))` -/
def P964170331582354639.Spec : Prop :=
  ∀ n, P964170331582354639.a n = A134513 n

end A134513

/-! ## A134513.P2892377150993937278

`A028310(abs(Δ[A168561(n)]))`
-/

namespace A134513.P2892377150993937278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 |f1 (n + 1) - f1 n|.toNat

end

end A134513.P2892377150993937278

namespace A134513

/-- `A028310(abs(Δ[A168561(n)]))` -/
def P2892377150993937278.Spec : Prop :=
  ∀ n, P2892377150993937278.a n = A134513 n

end A134513

/-! ## A134513.P5420584205716025024

`A086161(abs(Δ[A131325(n)]))`
-/

namespace A134513.P5420584205716025024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 |f1 (n + 1) - f1 n|.toNat

end

end A134513.P5420584205716025024

namespace A134513

/-- `A086161(abs(Δ[A131325(n)]))` -/
def P5420584205716025024.Spec : Prop :=
  ∀ n, P5420584205716025024.a n = A134513 n

end A134513

/-!
# A134514: List of pairs (n,m) with n < m such that the decimal expansion of m is a cyclic shift of that of n and m^2 is a cyclic shift of n^2.

The programs for A134514, there is no canonical definition to state claims against.
-/

/-! ## A134514.P7926127308027770414

`record[A065031(6*n+19)]+log2(gcd(2, n))`
-/

namespace A134514.P7926127308027770414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (6 * n + 19)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A134514.P7926127308027770414

/-! ## A134514.P16176821606557952956

`record[A065031(A052217(n+2))]`
-/

namespace A134514.P16176821606557952956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065031 (A052217 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134514.P16176821606557952956

/-!
# A134515: Third column (k=2) of triangle A134832 (circular succession numbers).

The programs for A134515, the canonical program `A134515.P387095092634577795` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134515 has offset 0).

The definition of A134515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134515.P387095092634577795

`(n+2)*(n+1)/2*A000757(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134515

/-- `(n+2)*(n+1)/2*A000757(n)` -/
def P387095092634577795.Spec : Prop :=
  ∀ n, P387095092634577795.a n = (A134515 n : ℚ)

end A134515

/-! ## A134515.P17916485386516073179

`A134832(∑[n+2]+3)`
-/

namespace A134515.P17916485386516073179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A134515.P17916485386516073179

namespace A134515

/-- `A134832(∑[n+2]+3)` -/
def P17916485386516073179.Spec : Prop :=
  ∀ n, P17916485386516073179.a n = A134515 n

end A134515

/-! ## A134515.P14253149754186399301

`(n+2)/2*A135799(n)`
-/

namespace A134515.P14253149754186399301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A135799 n : ℚ)

end

end A134515.P14253149754186399301

namespace A134515

/-- `(n+2)/2*A135799(n)` -/
def P14253149754186399301.Spec : Prop :=
  ∀ n, P14253149754186399301.a n = (A134515 n : ℚ)

end A134515

/-! ## A134515.P16903132651780171508

`A000757(n)*A179865(n+2)`
-/

namespace A134515.P16903132651780171508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A179865 (n + 2)

end

end A134515.P16903132651780171508

namespace A134515

/-- `A000757(n)*A179865(n+2)` -/
def P16903132651780171508.Spec : Prop :=
  ∀ n, P16903132651780171508.a n = A134515 n

end A134515

/-! ## A134515.P120944357087537390

`abs(Δ[A000292(n)]*A000757(n))`
-/

namespace A134515.P120944357087537390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000757 n|

end

end A134515.P120944357087537390

namespace A134515

/-- `abs(Δ[A000292(n)]*A000757(n))` -/
def P120944357087537390.Spec : Prop :=
  ∀ n, P120944357087537390.a n = A134515 n

end A134515

/-! ## A134515.P2845904213417342637

`A000757(n)*A080513(n*(n+3))`
-/

namespace A134515.P2845904213417342637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A080513 (n * (n + 3))

end

end A134515.P2845904213417342637

namespace A134515

/-- `A000757(n)*A080513(n*(n+3))` -/
def P2845904213417342637.Spec : Prop :=
  ∀ n, P2845904213417342637.a n = A134515 n

end A134515

/-! ## A134515.P9055401823868928253

`abs((A133263(n+1)-2)*A000757(n))`
-/

namespace A134515.P9055401823868928253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A133263 (n + 1) - 2) * A000757 n|

end

end A134515.P9055401823868928253

namespace A134515

/-- `abs((A133263(n+1)-2)*A000757(n))` -/
def P9055401823868928253.Spec : Prop :=
  ∀ n, P9055401823868928253.a n = A134515 n

end A134515

/-! ## A134515.P2948166209893871356

`A000757(n)*A001057((n+1)²+n)`
-/

namespace A134515.P2948166209893871356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A001057 ((n + 1) ^ 2 + n)

end

end A134515.P2948166209893871356

namespace A134515

/-- `A000757(n)*A001057((n+1)²+n)` -/
def P2948166209893871356.Spec : Prop :=
  ∀ n, P2948166209893871356.a n = A134515 n

end A134515

/-! ## A134515.P5329890352474872822

`(A033999(n)+A002741(n))*∑[n+1]`
-/

namespace A134515.P5329890352474872822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A002741 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A134515.P5329890352474872822

namespace A134515

/-- `(A033999(n)+A002741(n))*∑[n+1]` -/
def P5329890352474872822.Spec : Prop :=
  ∀ n, P5329890352474872822.a n = A134515 n

end A134515

/-! ## A134515.P1686667114875864777

`A000217(n+1)*A134832(C(n+1, 2))`
-/

namespace A134515.P1686667114875864777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A134832 (Nat.choose (n + 1) 2)

end

end A134515.P1686667114875864777

namespace A134515

/-- `A000217(n+1)*A134832(C(n+1, 2))` -/
def P1686667114875864777.Spec : Prop :=
  ∀ n, P1686667114875864777.a n = A134515 n

end A134515

/-!
# A134516: Numbers that are divisible by 2*(sum of their digits).

The programs for A134516, the canonical program `A134516.P11675418983147709240` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134516 has offset 1).

The definition of A134516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134516.P11675418983147709240

`lt[A007953(n), gcd(n, A169805(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134516

/-- `lt[A007953(n), gcd(n, A169805(n))]` -/
def P11675418983147709240.Spec : Prop :=
  ∀ n, (P11675418983147709240.a n : ℤ) = A134516 (n + 1)

theorem P11675418983147709240.correct : P11675418983147709240.Spec := by
  intro n
  simp only [A134516, Nat.add_sub_cancel]

end A134516

/-! ## A134516.P5943844508730738648

`eq[lcm(n, A169805(n)), A028310(n)]`
-/

namespace A134516.P5943844508730738648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A169805 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134516.P5943844508730738648

namespace A134516

/-- `eq[lcm(n, A169805(n)), A028310(n)]` -/
def P5943844508730738648.Spec : Prop :=
  ∀ n, (P5943844508730738648.a n : ℤ) = A134516 (n + 1)

end A134516

/-! ## A134516.P9022902764990004933

`lt[lcm(A001281(n), A007953(n)), n]`
-/

namespace A134516.P9022902764990004933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001281 n) (A007953 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134516.P9022902764990004933

namespace A134516

/-- `lt[lcm(A001281(n), A007953(n)), n]` -/
def P9022902764990004933.Spec : Prop :=
  ∀ n, (P9022902764990004933.a n : ℤ) = A134516 (n + 1)

end A134516

/-! ## A134516.P9308923432100937359

`lt[A262906((n+1)%A169805(n+1)), 1]+1`
-/

namespace A134516.P9308923432100937359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262906 (Int.tmod (n + 1 : ℤ) (A169805 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A134516.P9308923432100937359

namespace A134516

/-- `lt[A262906((n+1)%A169805(n+1)), 1]+1` -/
def P9308923432100937359.Spec : Prop :=
  ∀ n, (P9308923432100937359.a n : ℤ) = A134516 (n + 1)

end A134516

/-! ## A134516.P12146319284407792858

`A357769(A045918(n))`
-/

namespace A134516.P12146319284407792858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357769 (A045918 n).toNat

end

end A134516.P12146319284407792858

namespace A134516

/-- `A357769(A045918(n))` -/
def P12146319284407792858.Spec : Prop :=
  ∀ n, P12146319284407792858.a n = A134516 (n + 1)

end A134516

/-!
# A134517: Primes of the form 24*k - 1.

The programs for A134517, the canonical program `A134517.P14780992275921397288` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134517 has offset 1).

The definition of A134517 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131210, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134517.P14780992275921397288

`A183010(A131210(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134517

/-- `A183010(A131210(n+1))` -/
def P14780992275921397288.Spec : Prop :=
  ∀ n, P14780992275921397288.a n = A134517 (n + 1)

theorem P14780992275921397288.correct : P14780992275921397288.Spec := by
  intro n
  simp only [A134517, Nat.add_sub_cancel]

end A134517

/-! ## A134517.P16897536658918661064

`p?[24*n-1]`
-/

namespace A134517.P16897536658918661064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134517.P16897536658918661064

namespace A134517

/-- `p?[24*n-1]` -/
def P16897536658918661064.Spec : Prop :=
  ∀ n, P16897536658918661064.a n = A134517 (n + 1)

end A134517

/-! ## A134517.P2626283119569692582

`or(1, p?[a(n-1)+24])` with `a(0)=23`
-/

namespace A134517.P2626283119569692582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A134517.P2626283119569692582

namespace A134517

/-- `or(1, p?[a(n-1)+24])` -/
def P2626283119569692582.Spec : Prop :=
  ∀ n, (P2626283119569692582.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P13235752800152446524

`∏{d}[p?[a(n-1)+24], #]` with `a(0)=23`
-/

namespace A134517.P13235752800152446524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A134517.P13235752800152446524

namespace A134517

/-- `∏{d}[p?[a(n-1)+24], #]` -/
def P13235752800152446524.Spec : Prop :=
  ∀ n, (P13235752800152446524.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P1299092690995064855

`∑{p}[p?[a(n-1)+24], #]` with `a(0)=23`
-/

namespace A134517.P1299092690995064855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A134517.P1299092690995064855

namespace A134517

/-- `∑{p}[p?[a(n-1)+24], #]` -/
def P1299092690995064855.Spec : Prop :=
  ∀ n, (P1299092690995064855.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P6990995813979776210

`∩[A007522(n+1), A141123(n+1)]`
-/

namespace A134517.P6990995813979776210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P6990995813979776210

namespace A134517

/-- `∩[A007522(n+1), A141123(n+1)]` -/
def P6990995813979776210.Spec : Prop :=
  ∀ n, (P6990995813979776210.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P9882211474236730064

`∩[A068231(n+1), A183010(n)]`
-/

namespace A134517.P9882211474236730064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P9882211474236730064

namespace A134517

/-- `∩[A068231(n+1), A183010(n)]` -/
def P9882211474236730064.Spec : Prop :=
  ∀ n, (P9882211474236730064.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P5156144097209145244

`∩[A089199(n+1), A183010(n)]`
-/

namespace A134517.P5156144097209145244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P5156144097209145244

namespace A134517

/-- `∩[A089199(n+1), A183010(n)]` -/
def P5156144097209145244.Spec : Prop :=
  ∀ n, (P5156144097209145244.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P10237837785243868734

`∩[A001132(n+1), A183010(n)]`
-/

namespace A134517.P10237837785243868734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P10237837785243868734

namespace A134517

/-- `∩[A001132(n+1), A183010(n)]` -/
def P10237837785243868734.Spec : Prop :=
  ∀ n, (P10237837785243868734.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P9874636637589826987

`∩[A045355(n+1), A183010(n)]`
-/

namespace A134517.P9874636637589826987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P9874636637589826987

namespace A134517

/-- `∩[A045355(n+1), A183010(n)]` -/
def P9874636637589826987.Spec : Prop :=
  ∀ n, (P9874636637589826987.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P15444843022163439807

`∩[A002145(n+1), A183010(n)]`
-/

namespace A134517.P15444843022163439807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P15444843022163439807

namespace A134517

/-- `∩[A002145(n+1), A183010(n)]` -/
def P15444843022163439807.Spec : Prop :=
  ∀ n, (P15444843022163439807.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P11657890176849515782

`∩[A045309(n+1), A183010(n)]`
-/

namespace A134517.P11657890176849515782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P11657890176849515782

namespace A134517

/-- `∩[A045309(n+1), A183010(n)]` -/
def P11657890176849515782.Spec : Prop :=
  ∀ n, (P11657890176849515782.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P1566278837035937090

`∩[A045326(n+1), A183010(n)]`
-/

namespace A134517.P1566278837035937090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P1566278837035937090

namespace A134517

/-- `∩[A045326(n+1), A183010(n)]` -/
def P1566278837035937090.Spec : Prop :=
  ∀ n, (P1566278837035937090.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P13506505545141200942

`∩[A049098(n+1), A183010(n)]`
-/

namespace A134517.P13506505545141200942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P13506505545141200942

namespace A134517

/-- `∩[A049098(n+1), A183010(n)]` -/
def P13506505545141200942.Spec : Prop :=
  ∀ n, (P13506505545141200942.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P9511088541975367941

`∩[A164319(n+1), A183010(n)]`
-/

namespace A134517.P9511088541975367941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P9511088541975367941

namespace A134517

/-- `∩[A164319(n+1), A183010(n)]` -/
def P9511088541975367941.Spec : Prop :=
  ∀ n, (P9511088541975367941.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P16891567823099760510

`∩[A040087(n+1), A183010(n)]`
-/

namespace A134517.P16891567823099760510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P16891567823099760510

namespace A134517

/-- `∩[A040087(n+1), A183010(n)]` -/
def P16891567823099760510.Spec : Prop :=
  ∀ n, (P16891567823099760510.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P11888238803150427239

`∩[A140409(n+1), A183010(n)]`
-/

namespace A134517.P11888238803150427239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P11888238803150427239

namespace A134517

/-- `∩[A140409(n+1), A183010(n)]` -/
def P11888238803150427239.Spec : Prop :=
  ∀ n, (P11888238803150427239.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P10042932988516482160

`∩[A216734(n+1), A183010(n)]`
-/

namespace A134517.P10042932988516482160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P10042932988516482160

namespace A134517

/-- `∩[A216734(n+1), A183010(n)]` -/
def P10042932988516482160.Spec : Prop :=
  ∀ n, (P10042932988516482160.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P6437917377458472603

`∩[A068231(n+1), A216734(n+1)]`
-/

namespace A134517.P6437917377458472603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P6437917377458472603

namespace A134517

/-- `∩[A068231(n+1), A216734(n+1)]` -/
def P6437917377458472603.Spec : Prop :=
  ∀ n, (P6437917377458472603.a n : ℤ) = A134517 (n + 1)

end A134517

/-! ## A134517.P10304361756985025522

`∩[A141123(n+1), A216734(n+1)]`
-/

namespace A134517.P10304361756985025522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134517.P10304361756985025522

namespace A134517

/-- `∩[A141123(n+1), A216734(n+1)]` -/
def P10304361756985025522.Spec : Prop :=
  ∀ n, (P10304361756985025522.a n : ℤ) = A134517 (n + 1)

end A134517

/-!
# A134518: Least k such that the cyclotomic polynomial Phi(k,x) contains n or -n as a coefficient, where k is restricted to be the product of 3 distinct prime numbers.

The programs for A134518, there is no canonical definition to state claims against.
-/

/-! ## A134518.P14125580596086938899

`A007304(A278571(n+3-A013595(n+3)))`
-/

namespace A134518.P14125580596086938899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (A278571 ((n + 3 : ℤ) - A013595 (n + 3)).toNat).toNat

end

end A134518.P14125580596086938899

/-! ## A134518.P12460850339733535973

`A007304(A278571((n+2)*A278567(n+1)))`
-/

namespace A134518.P12460850339733535973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (A278571 ((n + 2 : ℤ) * A278567 (n + 1)).toNat).toNat

end

end A134518.P12460850339733535973

/-!
# A134519: Numbers remaining when the natural numbers (A000027) are arranged into a triangle and only the beginning and end terms of each row are retained.

The programs for A134519, the canonical program `A134519.P17365772906487918562` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134519 has offset 1).

The definition of A134519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134519.P17365772906487918562

`∑[gcd(n, floor(n/2))]+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134519

/-- `∑[gcd(n, floor(n/2))]+1` -/
def P17365772906487918562.Spec : Prop :=
  ∀ n, (P17365772906487918562.a n : ℤ) = A134519 (n + 1)

theorem P17365772906487918562.correct : P17365772906487918562.Spec := by
  intro n
  simp only [A134519, Nat.add_sub_cancel]

end A134519

/-! ## A134519.P18191512582528970955

`∪[∑[n+1], ∑[n]+1]`
-/

namespace A134519.P18191512582528970955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A134519.P18191512582528970955

namespace A134519

/-- `∪[∑[n+1], ∑[n]+1]` -/
def P18191512582528970955.Spec : Prop :=
  ∀ n, (P18191512582528970955.a n : ℤ) = A134519 (n + 1)

end A134519

/-! ## A134519.P7258950732921825995

`C(floor(n/2), 2)+1+n`
-/

namespace A134519.P7258950732921825995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2 + 1 + n

end

end A134519.P7258950732921825995

namespace A134519

/-- `C(floor(n/2), 2)+1+n` -/
def P7258950732921825995.Spec : Prop :=
  ∀ n, (P7258950732921825995.a n : ℤ) = A134519 (n + 1)

end A134519

/-! ## A134519.P3838111100800015021

`∑[gcd(n², ceil(abs((1-n)/2)))]`
-/

namespace A134519.P3838111100800015021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P3838111100800015021

namespace A134519

/-- `∑[gcd(n², ceil(abs((1-n)/2)))]` -/
def P3838111100800015021.Spec : Prop :=
  ∀ n, (P3838111100800015021.a n : ℤ) = A134519 (n + 1)

end A134519

/-! ## A134519.P14435186630038673888

`∑[(n/2)^∑[(-1)^n]]+1`
-/

namespace A134519.P14435186630038673888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134519.P14435186630038673888

namespace A134519

/-- `∑[(n/2)^∑[(-1)^n]]+1` -/
def P14435186630038673888.Spec : Prop :=
  ∀ n, P14435186630038673888.a n = (A134519 (n + 1) : ℚ)

end A134519

/-! ## A134519.P1742125911051941615

`∑[gcd(1-n, n%2)+1]/2`
-/

namespace A134519.P1742125911051941615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A134519.P1742125911051941615

namespace A134519

/-- `∑[gcd(1-n, n%2)+1]/2` -/
def P1742125911051941615.Spec : Prop :=
  ∀ n, P1742125911051941615.a n = (A134519 (n + 1) : ℚ)

end A134519

/-! ## A134519.P9912313515969723829

`∑[floor(n/(a(n-1)+1))]` with `a(0)=1, a(1)=1`
-/

namespace A134519.P9912313515969723829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P9912313515969723829

namespace A134519

/-- `∑[floor(n/(a(n-1)+1))]` -/
def P9912313515969723829.Spec : Prop :=
  ∀ n, P9912313515969723829.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P3797932358406439034

`∑[floor(n/(2*a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A134519.P3797932358406439034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(n : ℚ) / (2 * f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P3797932358406439034

namespace A134519

/-- `∑[floor(n/(2*a(n-1)))]` -/
def P3797932358406439034.Spec : Prop :=
  ∀ n, P3797932358406439034.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P12051773177552198623

`∑[floor(n/2)/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A134519.P12051773177552198623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (⌊(n : ℚ) / 2⌋ : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P12051773177552198623

namespace A134519

/-- `∑[floor(n/2)/a(n-1)]` -/
def P12051773177552198623.Spec : Prop :=
  ∀ n, P12051773177552198623.a n = (A134519 (n + 1) : ℚ)

end A134519

/-! ## A134519.P10425923999923915298

`floor(a(n-2)+n/2+1)` with `a(0)=1, a(1)=2`
-/

namespace A134519.P10425923999923915298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 2 + 1)⌋

end

end A134519.P10425923999923915298

namespace A134519

/-- `floor(a(n-2)+n/2+1)` -/
def P10425923999923915298.Spec : Prop :=
  ∀ n, P10425923999923915298.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P14813041677457509472

`ceil(a(n-2)+(n+1)/2)` with `a(0)=1, a(1)=2`
-/

namespace A134519.P14813041677457509472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 2⌉

end

end A134519.P14813041677457509472

namespace A134519

/-- `ceil(a(n-2)+(n+1)/2)` -/
def P14813041677457509472.Spec : Prop :=
  ∀ n, P14813041677457509472.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P5830081759516920999

`round(a(n-2)+(n+1)/2)` with `a(0)=1, a(1)=2`
-/

namespace A134519.P5830081759516920999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (n + 1 : ℚ) / 2)

end

end A134519.P5830081759516920999

namespace A134519

/-- `round(a(n-2)+(n+1)/2)` -/
def P5830081759516920999.Spec : Prop :=
  ∀ n, P5830081759516920999.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P11722662239311887080

`round((∑[gcd(n+1, or(1, n))]+1)/2)`
-/

namespace A134519.P11722662239311887080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2)

end

end A134519.P11722662239311887080

namespace A134519

/-- `round((∑[gcd(n+1, or(1, n))]+1)/2)` -/
def P11722662239311887080.Spec : Prop :=
  ∀ n, P11722662239311887080.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P2451302837877797663

`∑[∑[char[2*n]]-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A134519.P2451302837877797663
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P2451302837877797663

namespace A134519

/-- `∑[∑[char[2*n]]-a(n-1)]` -/
def P2451302837877797663.Spec : Prop :=
  ∀ n, P2451302837877797663.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P11949971853956117909

`A082742(n+1)/2`
-/

namespace A134519.P11949971853956117909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082742 (n + 1) : ℚ) / 2

end

end A134519.P11949971853956117909

namespace A134519

/-- `A082742(n+1)/2` -/
def P11949971853956117909.Spec : Prop :=
  ∀ n, P11949971853956117909.a n = (A134519 (n + 1) : ℚ)

end A134519

/-! ## A134519.P825447955504895218

`(A264754(n)+1)/2`
-/

namespace A134519.P825447955504895218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264754 n + 1 : ℚ) / 2

end

end A134519.P825447955504895218

namespace A134519

/-- `(A264754(n)+1)/2` -/
def P825447955504895218.Spec : Prop :=
  ∀ n, P825447955504895218.a n = (A134519 (n + 1) : ℚ)

end A134519

/-! ## A134519.P9291429763639004180

`∑[A028310(A142150(n))]`
-/

namespace A134519.P9291429763639004180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P9291429763639004180

namespace A134519

/-- `∑[A028310(A142150(n))]` -/
def P9291429763639004180.Spec : Prop :=
  ∀ n, P9291429763639004180.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P8235840720190800565

`ceil(A130404(n+2)/2)`
-/

namespace A134519.P8235840720190800565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130404 (n + 2) : ℚ) / 2⌉

end

end A134519.P8235840720190800565

namespace A134519

/-- `ceil(A130404(n+2)/2)` -/
def P8235840720190800565.Spec : Prop :=
  ∀ n, P8235840720190800565.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P7696998863141453325

`∑[A152271(A014681(n))]`
-/

namespace A134519.P7696998863141453325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134519.P7696998863141453325

namespace A134519

/-- `∑[A152271(A014681(n))]` -/
def P7696998863141453325.Spec : Prop :=
  ∀ n, P7696998863141453325.a n = A134519 (n + 1)

end A134519

/-! ## A134519.P9526756876739054289

`A055802(n+4)`
-/

namespace A134519.P9526756876739054289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (n + 4)

end

end A134519.P9526756876739054289

namespace A134519

/-- `A055802(n+4)` -/
def P9526756876739054289.Spec : Prop :=
  ∀ n, P9526756876739054289.a n = A134519 (n + 1)

end A134519

/-!
# A134520: Triangle read by rows: A007318 + A128174 - A000012 as infinite lower triangular matrices.

The programs for A134520, the canonical program `A134520.P2309234469278234575` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134520 has offset 0).

The definition of A134520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134520.P9092121624473024643

`A028326(n)-A134521(n)`
-/

namespace A134520.P9092121624473024643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A134521 n

end

end A134520.P9092121624473024643

namespace A134520

/-- `A028326(n)-A134521(n)` -/
def P9092121624473024643.Spec : Prop :=
  ∀ n, P9092121624473024643.a n = A134520 n

end A134520

/-! ## A134520.P2309234469278234575

`A128174(n+1)+A014473(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134520

/-- `A128174(n+1)+A014473(n)` -/
def P2309234469278234575.Spec : Prop :=
  ∀ n, P2309234469278234575.a n = A134520 n

theorem P2309234469278234575.correct : P2309234469278234575.Spec := by
  intro n
  simp only [A134520]

end A134520

/-! ## A134520.P10093379507470387384

`2*A007318(n)-A134521(n)`
-/

namespace A134520.P10093379507470387384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A134521 n

end

end A134520.P10093379507470387384

namespace A134520

/-- `2*A007318(n)-A134521(n)` -/
def P10093379507470387384.Spec : Prop :=
  ∀ n, P10093379507470387384.a n = A134520 n

end A134520

/-! ## A134520.P2594996489141712145

`A007318(n)-and(1, A025581(n))`
-/

namespace A134520.P2594996489141712145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.land 1 (A025581 n)

end

end A134520.P2594996489141712145

namespace A134520

/-- `A007318(n)-and(1, A025581(n))` -/
def P2594996489141712145.Spec : Prop :=
  ∀ n, P2594996489141712145.a n = A134520 n

end A134520

/-! ## A134520.P13262873650024996413

`A007318(n)-and(1, A051933(n))`
-/

namespace A134520.P13262873650024996413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.land 1 (A051933 n)

end

end A134520.P13262873650024996413

namespace A134520

/-- `A007318(n)-and(1, A051933(n))` -/
def P13262873650024996413.Spec : Prop :=
  ∀ n, P13262873650024996413.a n = A134520 n

end A134520

/-! ## A134520.P8789654690540789991

`A128174(n+1)+A007318(n)-1`
-/

namespace A134520.P8789654690540789991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + (A007318 n - 1)

end

end A134520.P8789654690540789991

namespace A134520

/-- `A128174(n+1)+A007318(n)-1` -/
def P8789654690540789991.Spec : Prop :=
  ∀ n, P8789654690540789991.a n = A134520 n

end A134520

/-! ## A134520.P10009508703766458464

`A014473(n)+2-A131406(n+1)`
-/

namespace A134520.P10009508703766458464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (2 - A131406 (n + 1))

end

end A134520.P10009508703766458464

namespace A134520

/-- `A014473(n)+2-A131406(n+1)` -/
def P10009508703766458464.Spec : Prop :=
  ∀ n, P10009508703766458464.a n = A134520 n

end A134520

/-! ## A134520.P3005346620110265751

`A128174(n+1)+A131087(n)-A134521(n)`
-/

namespace A134520.P3005346620110265751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + (A131087 n - A134521 n)

end

end A134520.P3005346620110265751

namespace A134520

/-- `A128174(n+1)+A131087(n)-A134521(n)` -/
def P3005346620110265751.Spec : Prop :=
  ∀ n, P3005346620110265751.a n = A134520 n

end A134520

/-! ## A134520.P14107573669095897814

`A128174(n+1)+A131830(n)-A131821(n+1)`
-/

namespace A134520.P14107573669095897814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + (A131830 n - A131821 (n + 1))

end

end A134520.P14107573669095897814

namespace A134520

/-- `A128174(n+1)+A131830(n)-A131821(n+1)` -/
def P14107573669095897814.Spec : Prop :=
  ∀ n, P14107573669095897814.a n = A134520 n

end A134520

/-! ## A134520.P6544958615967353969

`A007318(n)-A059841(A144650(n+1))`
-/

namespace A134520.P6544958615967353969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A059841 (A144650 (n + 1)).toNat

end

end A134520.P6544958615967353969

namespace A134520

/-- `A007318(n)-A059841(A144650(n+1))` -/
def P6544958615967353969.Spec : Prop :=
  ∀ n, P6544958615967353969.a n = A134520 n

end A134520

/-! ## A134520.P4874241899987769372

`A007318(n)-and(1, A246892(n+1))`
-/

namespace A134520.P4874241899987769372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.land 1 (A246892 (n + 1))

end

end A134520.P4874241899987769372

namespace A134520

/-- `A007318(n)-and(1, A246892(n+1))` -/
def P4874241899987769372.Spec : Prop :=
  ∀ n, P4874241899987769372.a n = A134520 n

end A134520

/-! ## A134520.P9296551984355561399

`A007318(n)-and(1, A249359(n+1))`
-/

namespace A134520.P9296551984355561399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.land 1 (A249359 (n + 1))

end

end A134520.P9296551984355561399

namespace A134520

/-- `A007318(n)-and(1, A249359(n+1))` -/
def P9296551984355561399.Spec : Prop :=
  ∀ n, P9296551984355561399.a n = A134520 n

end A134520

/-! ## A134520.P567772032697548460

`A007318(n)-and(1, A250167(n+1))`
-/

namespace A134520.P567772032697548460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.land 1 (A250167 (n + 1))

end

end A134520.P567772032697548460

namespace A134520

/-- `A007318(n)-and(1, A250167(n+1))` -/
def P567772032697548460.Spec : Prop :=
  ∀ n, P567772032697548460.a n = A134520 n

end A134520

/-! ## A134520.P14420632775937731696

`A007318(n)-A000007(A114525(n))`
-/

namespace A134520.P14420632775937731696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A000007 (A114525 n).toNat

end

end A134520.P14420632775937731696

namespace A134520

/-- `A007318(n)-A000007(A114525(n))` -/
def P14420632775937731696.Spec : Prop :=
  ∀ n, P14420632775937731696.a n = A134520 n

end A134520

/-!
# A134521: Triangle read by rows: T(n,k) = binomial(n,k) + (n + k) mod 2.

The programs for A134521, the canonical program `A134521.P5434930508267671466` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134521 has offset 0).

The definition of A134521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134521.P3686788113356017798

`(A131086(n)+1)/2`
-/

namespace A134521.P3686788113356017798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131086 n + 1 : ℚ) / 2

end

end A134521.P3686788113356017798

namespace A134521

/-- `(A131086(n)+1)/2` -/
def P3686788113356017798.Spec : Prop :=
  ∀ n, P3686788113356017798.a n = (A134521 n : ℚ)

end A134521

/-! ## A134521.P5434930508267671466

`A131087(n)-A014473(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134521

/-- `A131087(n)-A014473(n)` -/
def P5434930508267671466.Spec : Prop :=
  ∀ n, P5434930508267671466.a n = A134521 n

theorem P5434930508267671466.correct : P5434930508267671466.Spec := by
  intro n
  simp only [A134521]

end A134521

/-! ## A134521.P15284127427160884897

`A028326(n)-A134520(n)`
-/

namespace A134521.P15284127427160884897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A134520 n

end

end A134521.P15284127427160884897

namespace A134521

/-- `A028326(n)-A134520(n)` -/
def P15284127427160884897.Spec : Prop :=
  ∀ n, P15284127427160884897.a n = A134521 n

end A134521

/-! ## A134521.P11308625755411447938

`A131406(n+1)+A014473(n)`
-/

namespace A134521.P11308625755411447938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131406 (n + 1) + A014473 n

end

end A134521.P11308625755411447938

namespace A134521

/-- `A131406(n+1)+A014473(n)` -/
def P11308625755411447938.Spec : Prop :=
  ∀ n, P11308625755411447938.a n = A134521 n

end A134521

/-! ## A134521.P5371285747133416461

`A131087(n)+1-A007318(n)`
-/

namespace A134521.P5371285747133416461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131087 n + (1 - A007318 n)

end

end A134521.P5371285747133416461

namespace A134521

/-- `A131087(n)+1-A007318(n)` -/
def P5371285747133416461.Spec : Prop :=
  ∀ n, P5371285747133416461.a n = A134521 n

end A134521

/-! ## A134521.P12598828057682157150

`2*A007318(n)-A134520(n)`
-/

namespace A134521.P12598828057682157150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A134520 n

end

end A134521.P12598828057682157150

namespace A134521

/-- `2*A007318(n)-A134520(n)` -/
def P12598828057682157150.Spec : Prop :=
  ∀ n, P12598828057682157150.a n = A134521 n

end A134521

/-! ## A134521.P2282756101685731077

`A007318(n)+A025581(n)%2`
-/

namespace A134521.P2282756101685731077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A025581 n) 2

end

end A134521.P2282756101685731077

namespace A134521

/-- `A007318(n)+A025581(n)%2` -/
def P2282756101685731077.Spec : Prop :=
  ∀ n, P2282756101685731077.a n = A134521 n

end A134521

/-! ## A134521.P9964064287227989027

`A007318(n)+and(1, A051933(n))`
-/

namespace A134521.P9964064287227989027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.land 1 (A051933 n)

end

end A134521.P9964064287227989027

namespace A134521

/-- `A007318(n)+and(1, A051933(n))` -/
def P9964064287227989027.Spec : Prop :=
  ∀ n, P9964064287227989027.a n = A134521 n

end A134521

/-! ## A134521.P16493194232757611221

`1-A128174(n+1)+A007318(n)`
-/

namespace A134521.P16493194232757611221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A128174 (n + 1) + A007318 n

end

end A134521.P16493194232757611221

namespace A134521

/-- `1-A128174(n+1)+A007318(n)` -/
def P16493194232757611221.Spec : Prop :=
  ∀ n, P16493194232757611221.a n = A134521 n

end A134521

/-! ## A134521.P3082030569188934881

`A014473(n)+2-A128174(n+1)`
-/

namespace A134521.P3082030569188934881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (2 - A128174 (n + 1))

end

end A134521.P3082030569188934881

namespace A134521

/-- `A014473(n)+2-A128174(n+1)` -/
def P3082030569188934881.Spec : Prop :=
  ∀ n, P3082030569188934881.a n = A134521 n

end A134521

/-! ## A134521.P10374808572252563912

`A007318(n)+log2(gcd(2, A004736(n+1)))`
-/

namespace A134521.P10374808572252563912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℝ) + Real.logb 2 (Int.gcd 2 (A004736 (n + 1)) : ℝ)

end

end A134521.P10374808572252563912

namespace A134521

/-- `A007318(n)+log2(gcd(2, A004736(n+1)))` -/
def P10374808572252563912.Spec : Prop :=
  ∀ n, P10374808572252563912.a n = (A134521 n : ℝ)

end A134521

/-! ## A134521.P13142366890580337500

`A128174(n+1)+A131087(n)-A134520(n)`
-/

namespace A134521.P13142366890580337500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) + (A131087 n - A134520 n)

end

end A134521.P13142366890580337500

namespace A134521

/-- `A128174(n+1)+A131087(n)-A134520(n)` -/
def P13142366890580337500.Spec : Prop :=
  ∀ n, P13142366890580337500.a n = A134521 n

end A134521

/-! ## A134521.P17001694095764553801

`A130123((n+1)*A128174(n+1))+A007318(n)`
-/

namespace A134521.P17001694095764553801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 ((n + 1 : ℤ) * A128174 (n + 1)).toNat + A007318 n

end

end A134521.P17001694095764553801

namespace A134521

/-- `A130123((n+1)*A128174(n+1))+A007318(n)` -/
def P17001694095764553801.Spec : Prop :=
  ∀ n, P17001694095764553801.a n = A134521 n

end A134521

/-! ## A134521.P7357207308638394039

`A103919(A119467(n)/A007318(n))+A007318(n)`
-/

namespace A134521.P7357207308638394039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (SequenceMachineLib.roundAway ((A119467 n : ℚ) / (A007318 n : ℚ))).toNat + A007318 n

end

end A134521.P7357207308638394039

namespace A134521

/-- `A103919(A119467(n)/A007318(n))+A007318(n)` -/
def P7357207308638394039.Spec : Prop :=
  ∀ n, P7357207308638394039.a n = A134521 n

end A134521

/-! ## A134521.P7242017351448414595

`A119467(A119467(n)/A007318(n))+A007318(n)`
-/

namespace A134521.P7242017351448414595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (SequenceMachineLib.roundAway ((A119467 n : ℚ) / (A007318 n : ℚ))).toNat + A007318 n

end

end A134521.P7242017351448414595

namespace A134521

/-- `A119467(A119467(n)/A007318(n))+A007318(n)` -/
def P7242017351448414595.Spec : Prop :=
  ∀ n, P7242017351448414595.a n = A134521 n

end A134521

/-! ## A134521.P17963676407225638572

`A168561(A168561(n)/A046854(n))+A007318(n)`
-/

namespace A134521.P17963676407225638572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 (SequenceMachineLib.roundAway ((A168561 n : ℚ) / (A046854 n : ℚ))).toNat + A007318 n

end

end A134521.P17963676407225638572

namespace A134521

/-- `A168561(A168561(n)/A046854(n))+A007318(n)` -/
def P17963676407225638572.Spec : Prop :=
  ∀ n, P17963676407225638572.a n = A134521 n

end A134521

/-! ## A134521.P15417225975466054386

`A007318(n)+A132440(n)^A067147(n)`
-/

namespace A134521.P15417225975466054386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) + (A132440 n : ℚ) ^ (A067147 n : ℤ)

end

end A134521.P15417225975466054386

namespace A134521

/-- `A007318(n)+A132440(n)^A067147(n)` -/
def P15417225975466054386.Spec : Prop :=
  ∀ n, P15417225975466054386.a n = (A134521 n : ℚ)

end A134521

/-! ## A134521.P2328923497643097578

`A059841(A004736(n+1))+A176348(n)/A176346(n)`
-/

namespace A134521.P2328923497643097578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059841 (A004736 (n + 1)).toNat : ℚ) + (A176348 n : ℚ) / (A176346 n : ℚ)

end

end A134521.P2328923497643097578

namespace A134521

/-- `A059841(A004736(n+1))+A176348(n)/A176346(n)` -/
def P2328923497643097578.Spec : Prop :=
  ∀ n, P2328923497643097578.a n = (A134521 n : ℚ)

end A134521

/-! ## A134521.P13858738077871129456

`A007318(n)+A225750(n)%2`
-/

namespace A134521.P13858738077871129456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A225750 n) 2

end

end A134521.P13858738077871129456

namespace A134521

/-- `A007318(n)+A225750(n)%2` -/
def P13858738077871129456.Spec : Prop :=
  ∀ n, P13858738077871129456.a n = A134521 n

end A134521

/-! ## A134521.P13747388002492489012

`A059841(A120070(n+2))+A176348(n)/A176346(n)`
-/

namespace A134521.P13747388002492489012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059841 (A120070 (n + 2)).toNat : ℚ) + (A176348 n : ℚ) / (A176346 n : ℚ)

end

end A134521.P13747388002492489012

namespace A134521

/-- `A059841(A120070(n+2))+A176348(n)/A176346(n)` -/
def P13747388002492489012.Spec : Prop :=
  ∀ n, P13747388002492489012.a n = (A134521 n : ℚ)

end A134521

/-!
# A134522: a(n) = 2^n + ceiling(n/2).

The programs for A134522, the canonical program `A134522.P16091984295908453179` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134522 has offset 0).

The definition of A134522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+ceil(n/2)` (program `A134522.P16091984295908453179`, by `A134522.P16091984295908453179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134522.P16091984295908453179

`2^n+ceil(n/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134522

/-- `2^n+ceil(n/2)` -/
def P16091984295908453179.Spec : Prop :=
  ∀ n, P16091984295908453179.a n = A134522 n

theorem P16091984295908453179.correct : P16091984295908453179.Spec := by
  intro n
  simp only [A134522]

end A134522

/-! ## A134522.P17052538910362684453

`or(2^n, ceil(n/2))`
-/

namespace A134522.P17052538910362684453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌈(n : ℚ) / 2⌉

end

end A134522.P17052538910362684453

namespace A134522

/-- `or(2^n, ceil(n/2))` -/
def P17052538910362684453.Spec : Prop :=
  ∀ n, P17052538910362684453.a n = A134522 n

end A134522

/-! ## A134522.P13623417227912718120

`xor(2^n, ceil(n/2))`
-/

namespace A134522.P13623417227912718120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) ⌈(n : ℚ) / 2⌉

end

end A134522.P13623417227912718120

namespace A134522

/-- `xor(2^n, ceil(n/2))` -/
def P13623417227912718120.Spec : Prop :=
  ∀ n, P13623417227912718120.a n = A134522 n

end A134522

/-! ## A134522.P8923514083433442973

`round(A000079(n)+n/2)`
-/

namespace A134522.P8923514083433442973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℚ) + (n : ℚ) / 2)

end

end A134522.P8923514083433442973

namespace A134522

/-- `round(A000079(n)+n/2)` -/
def P8923514083433442973.Spec : Prop :=
  ∀ n, P8923514083433442973.a n = A134522 n

end A134522

/-! ## A134522.P12524513852811943383

`∑[A011782(n)+and(1, n)]`
-/

namespace A134522.P12524513852811943383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134522.P12524513852811943383

namespace A134522

/-- `∑[A011782(n)+and(1, n)]` -/
def P12524513852811943383.Spec : Prop :=
  ∀ n, P12524513852811943383.a n = A134522 n

end A134522

/-! ## A134522.P16408203673818210050

`round(or(n, 2^(n+1))/2)`
-/

namespace A134522.P16408203673818210050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor n (2 ^ (n + 1)) : ℚ) / 2)

end

end A134522.P16408203673818210050

namespace A134522

/-- `round(or(n, 2^(n+1))/2)` -/
def P16408203673818210050.Spec : Prop :=
  ∀ n, P16408203673818210050.a n = A134522 n

end A134522

/-! ## A134522.P13799303836630049325

`round(xor(n, 2^(n+1))/2)`
-/

namespace A134522.P13799303836630049325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (2 ^ (n + 1)) : ℚ) / 2)

end

end A134522.P13799303836630049325

namespace A134522

/-- `round(xor(n, 2^(n+1))/2)` -/
def P13799303836630049325.Spec : Prop :=
  ∀ n, P13799303836630049325.a n = A134522 n

end A134522

/-! ## A134522.P5325998866783752073

`floor(or(n+1, 2^(n+1))/2)`
-/

namespace A134522.P5325998866783752073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor (n + 1) (2 ^ (n + 1)) : ℚ) / 2⌋

end

end A134522.P5325998866783752073

namespace A134522

/-- `floor(or(n+1, 2^(n+1))/2)` -/
def P5325998866783752073.Spec : Prop :=
  ∀ n, P5325998866783752073.a n = A134522 n

end A134522

/-! ## A134522.P10253736839505070588

`floor(xor(n+1, 2^(n+1))/2)`
-/

namespace A134522.P10253736839505070588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor (n + 1) (2 ^ (n + 1)) : ℚ) / 2⌋

end

end A134522.P10253736839505070588

namespace A134522

/-- `floor(xor(n+1, 2^(n+1))/2)` -/
def P10253736839505070588.Spec : Prop :=
  ∀ n, P10253736839505070588.a n = A134522 n

end A134522

/-! ## A134522.P3691687510375991568

`(A052531(n+1)+n)/2`
-/

namespace A134522.P3691687510375991568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052531 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A134522.P3691687510375991568

namespace A134522

/-- `(A052531(n+1)+n)/2` -/
def P3691687510375991568.Spec : Prop :=
  ∀ n, P3691687510375991568.a n = (A134522 n : ℚ)

end A134522

/-! ## A134522.P12872587912833120398

`(A051049(n+1)+n+1)/2`
-/

namespace A134522.P12872587912833120398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051049 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A134522.P12872587912833120398

namespace A134522

/-- `(A051049(n+1)+n+1)/2` -/
def P12872587912833120398.Spec : Prop :=
  ∀ n, P12872587912833120398.a n = (A134522 n : ℚ)

end A134522

/-! ## A134522.P10776856880046537794

`∪[A221130(n+1), A158879(n)]`
-/

namespace A134522.P10776856880046537794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158879 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A134522.P10776856880046537794

namespace A134522

/-- `∪[A221130(n+1), A158879(n)]` -/
def P10776856880046537794.Spec : Prop :=
  ∀ n, (P10776856880046537794.a n : ℤ) = A134522 n

end A134522

/-! ## A134522.P14169839334051985250

`A129143(A080827(n+1))`
-/

namespace A134522.P14169839334051985250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129143 (A080827 (n + 1)).toNat

end

end A134522.P14169839334051985250

namespace A134522

/-- `A129143(A080827(n+1))` -/
def P14169839334051985250.Spec : Prop :=
  ∀ n, P14169839334051985250.a n = A134522 n

end A134522

/-! ## A134522.P9111896218080668046

`A129143(A099392(n+2))`
-/

namespace A134522.P9111896218080668046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129143 (A099392 (n + 2)).toNat

end

end A134522.P9111896218080668046

namespace A134522

/-- `A129143(A099392(n+2))` -/
def P9111896218080668046.Spec : Prop :=
  ∀ n, P9111896218080668046.a n = A134522 n

end A134522

/-!
# A134523: Triangle, read by rows, where column k of T = column 0 of matrix power T^{(k+1)(k+2)/2} for k>=0, with T(n,0)=1 for n>=0.

The programs for A134523, there is no canonical definition to state claims against.
-/

/-! ## A134523.P8709920689971870679

`A360674(A369288(n+1))`
-/

namespace A134523.P8709920689971870679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360674 (A369288 (n + 1)).toNat

end

end A134523.P8709920689971870679

/-! ## A134523.P11795468871619694917

`A256106(3^A208510(n+1))`
-/

namespace A134523.P11795468871619694917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256106 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A208510 (n + 1) : ℤ))).toNat

end

end A134523.P11795468871619694917

/-! ## A134523.P12578344543133911710

`∑{d}[A330490(n+1), A058226(#)]`
-/

namespace A134523.P12578344543133911710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A058226 d

end

end A134523.P12578344543133911710

/-! ## A134523.P1567477591237592825

`A344962(A173917(n))/A287214(n)`
-/

namespace A134523.P1567477591237592825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344962 (A173917 n).toNat : ℚ) / (A287214 n : ℚ)

end

end A134523.P1567477591237592825

/-!
# A134524: Column 1 of triangle T=A134523, also equals column 0 of the matrix power T^3, where column k of T = column 0 of matrix power T^{(k+1)(k+2)/2} for k>=0.

The programs for A134524, there is no canonical definition to state claims against.
-/

/-! ## A134524.P15872252840395202336

`record[ratio[A134523(n)]]`
-/

namespace A134524.P15872252840395202336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134524.P15872252840395202336

/-! ## A134524.P16237253692524543387

`A134523(∑[n+1]+1)`
-/

namespace A134524.P16237253692524543387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134524.P16237253692524543387

/-! ## A134524.P1621702641858677548

`record[Δ[A134523(n+2)]+1]`
-/

namespace A134524.P1621702641858677548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134524.P1621702641858677548

/-! ## A134524.P11184571937925872662

`record[A134523(A077028(n))]`
-/

namespace A134524.P11184571937925872662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (A077028 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134524.P11184571937925872662

/-! ## A134524.P13862744393767217050

`record[A134523(∑[A057979(n)])]`
-/

namespace A134524.P13862744393767217050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134524.P13862744393767217050

/-!
# A134525: Column 2 of triangle T=A134523, also equals column 0 of the matrix power T^6, where column k of T = column 0 of matrix power T^{(k+1)(k+2)/2} for k>=0.

The programs for A134525, there is no canonical definition to state claims against.
-/

/-! ## A134525.P6852115197689686349

`A134523(∑[n+2]+3)`
-/

namespace A134525.P6852115197689686349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A134525.P6852115197689686349

/-! ## A134525.P5153738355366178315

`record[A134523(comp[A000124(n)])]`
-/

namespace A134525.P5153738355366178315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134525.P5153738355366178315

/-! ## A134525.P12471350596463834908

`record[A134523(comp[A109822(n+1)])]`
-/

namespace A134525.P12471350596463834908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109822 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134525.P12471350596463834908

/-! ## A134525.P6142372256224582570

`record[A134523(comp[A134519(n+1)])]`
-/

namespace A134525.P6142372256224582570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134525.P6142372256224582570

/-!
# A134526: Column 3 of triangle T=A134523, also equals column 0 of the matrix power T^10, where column k of T = column 0 of matrix power T^{(k+1)(k+2)/2} for k>=0.

The programs for A134526, there is no canonical definition to state claims against.
-/

/-! ## A134526.P16416618687814640694

`A134523(A167614(n+2))`
-/

namespace A134526.P16416618687814640694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (A167614 (n + 2)).toNat

end

end A134526.P16416618687814640694

/-! ## A134526.P10663184334627100652

`A134523(A141214(n)+6)`
-/

namespace A134526.P10663184334627100652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (A141214 n + 6).toNat

end

end A134526.P10663184334627100652

/-! ## A134526.P11913304586135431840

`A134523(A052905(n)+8)`
-/

namespace A134526.P11913304586135431840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134523 (A052905 n + 8).toNat

end

end A134526.P11913304586135431840

/-!
# A134527: G.f. A(x) satisfies: A(x) = Sum_{n>=0} [x*A(x)]^(2^n-1).

The programs for A134527, there is no canonical definition to state claims against.
-/

/-! ## A134527.P289296607087601413

`A073266((n+1)²+n²)/(n+1)`
-/

namespace A134527.P289296607087601413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073266 ((n + 1) ^ 2 + n ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A134527.P289296607087601413

/-! ## A134527.P13947022027997636487

`A073265(∑[9*n-2]+3)/(n+1)`
-/

namespace A134527.P13947022027997636487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073265 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat : ℚ) / (n + 1 : ℚ)

end

end A134527.P13947022027997636487

/-! ## A134527.P7300194153420892904

`A256133(round(sqrt(A057693(n))))`
-/

namespace A134527.P7300194153420892904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (SequenceMachineLib.roundAway (Real.sqrt (A057693 n : ℝ))).toNat

end

end A134527.P7300194153420892904

/-! ## A134527.P55392273815478011

`A257639(A094433(n)+A020119(n))`
-/

namespace A134527.P55392273815478011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A094433 n + A020119 n).toNat

end

end A134527.P55392273815478011

/-! ## A134527.P9584788535952101791

`A290995(n)+A256133(A214083(n+1))`
-/

namespace A134527.P9584788535952101791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290995 n + A256133 (A214083 (n + 1)).toNat

end

end A134527.P9584788535952101791

/-!
# A134528: G.f. A(x) satisfies: 1 = Sum_{n>=0} A(x)^(n+1)*x^n/2^(n*(n-1)/2) where A(x) = Sum_{n>=0} a(n)*x^n/2^(n*(n-1)/2).

The programs for A134528, there is no canonical definition to state claims against.
-/

/-! ## A134528.P16489971595476853959

`(-1)^n*A194417(A218261(n))`
-/

namespace A134528.P16489971595476853959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A194417 (A218261 n).toNat

end

end A134528.P16489971595476853959

/-!
# A134530: Matrix log of triangle A111636, where A111636(n,k) = (2^k)^(n-k)*C(n,k) for n>=k>=0.

The programs for A134530, there is no canonical definition to state claims against.
-/

/-! ## A134530.P5453071121742410849

`A111636(n)*A134531(A025581(n))`
-/

namespace A134530.P5453071121742410849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111636 n * A134531 (A025581 n).toNat

end

end A134530.P5453071121742410849

/-! ## A134530.P7423641186675623822

`A028326(n)/2*2^A004247(n)*A134531(A025581(n))`
-/

namespace A134530.P7423641186675623822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (2 : ℚ) ^ (A004247 n : ℤ) * (A134531 (A025581 n).toNat : ℚ)

end

end A134530.P7423641186675623822

/-!
# A134531: G.f.: Sum_{n>=0} a(n)*x^n/(n!*2^(n*(n-1)/2)) = log( Sum_{n>=0} x^n/(n!*2^(n*(n-1)/2)) ).

The programs for A134531, there is no canonical definition to state claims against.
-/

/-! ## A134531.P4066126753794757097

`A219765(∑[n]+1)`
-/

namespace A134531.P4066126753794757097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A134531.P4066126753794757097

/-! ## A134531.P3594034320850194941

`A134530(∑[n])`
-/

namespace A134531.P3594034320850194941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134531.P3594034320850194941

/-! ## A134531.P2067977636986985186

`A134530(A000217(n))+char[9]`
-/

namespace A134531.P2067977636986985186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134530 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134531.P2067977636986985186

/-! ## A134531.P16449238509465368398

`A134530(C(n+1, 2))%A134526(n)`
-/

namespace A134531.P16449238509465368398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134530 (Nat.choose (n + 1) 2)) (A134526 n)

end

end A134531.P16449238509465368398

/-! ## A134531.P3015111757565897454

`A134530((n²+n)/2)%A134503(n)`
-/

namespace A134531.P3015111757565897454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134530 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A134503 n)

end

end A134531.P3015111757565897454

/-!
# A134532: Numbers k such that the sum of the digits of 5^k is prime.

The programs for A134532, there is no canonical definition to state claims against.
-/

/-! ## A134532.P2802174865958787341

`eq[0, A005171(A066001(n))]`
-/

namespace A134532.P2802174865958787341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A066001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134532.P2802174865958787341

/-! ## A134532.P16786472444045789081

`lt[A000720(2*(n+2)), A020639(A066001(n))]`
-/

namespace A134532.P16786472444045789081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134532.P16786472444045789081

/-! ## A134532.P10302756798015941440

`eq[A001222(A066001(n)), A329684(n+2)]`
-/

namespace A134532.P10302756798015941440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134532.P10302756798015941440

/-! ## A134532.P5862168270739565416

`eq[A057427(n), A074206(A066001(n))]`
-/

namespace A134532.P5862168270739565416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A066001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134532.P5862168270739565416

/-! ## A134532.P15243116302835288937

`eq[A001222(A066001(n)), A057427(2*(n+2))]`
-/

namespace A134532.P15243116302835288937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134532.P15243116302835288937

/-! ## A134532.P16970020110028452528

`lt[A098294(2*n+1), A020639(A066001(n))]`
-/

namespace A134532.P16970020110028452528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134532.P16970020110028452528

/-! ## A134532.P12311091859519927061

`lt[A001370(n), A014963(A066001(n))]`
-/

namespace A134532.P12311091859519927061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134532.P12311091859519927061

/-! ## A134532.P1204700615061900455

`eq[1, A107279(A066001(n+1))]+1`
-/

namespace A134532.P1204700615061900455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A066001 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A134532.P1204700615061900455

/-! ## A134532.P13416451604276587399

`eq[A016035(2*A066001(n)), A066001(n)]`
-/

namespace A134532.P13416451604276587399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (2 * A066001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134532.P13416451604276587399

/-!
# A134533: Numbers n such that the sum of the digits of 7^n is prime.

The programs for A134533, the canonical program `A134533.P10425508017488399224` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134533 has offset 1).

The definition of A134533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134533.P10425508017488399224

`eq[0, A005171(A066003(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134533

/-- `eq[0, A005171(A066003(n))]` -/
def P10425508017488399224.Spec : Prop :=
  ∀ n, (P10425508017488399224.a n : ℤ) = A134533 (n + 1)

theorem P10425508017488399224.correct : P10425508017488399224.Spec := by
  intro n
  simp only [A134533, Nat.add_sub_cancel]

end A134533

/-! ## A134533.P11296214302829878916

`eq[A001222(A066003(n)), A054977(n)]`
-/

namespace A134533.P11296214302829878916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134533.P11296214302829878916

namespace A134533

/-- `eq[A001222(A066003(n)), A054977(n)]` -/
def P11296214302829878916.Spec : Prop :=
  ∀ n, (P11296214302829878916.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P4453010425792655712

`lt[A175527(n), A020639(A066003(n))²]`
-/

namespace A134533.P4453010425792655712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066003 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134533.P4453010425792655712

namespace A134533

/-- `lt[A175527(n), A020639(A066003(n))²]` -/
def P4453010425792655712.Spec : Prop :=
  ∀ n, (P4453010425792655712.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P3525333824517552115

`eq[A001222(A066003(n)), A059841(2*(n+1))]`
-/

namespace A134533.P3525333824517552115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134533.P3525333824517552115

namespace A134533

/-- `eq[A001222(A066003(n)), A059841(2*(n+1))]` -/
def P3525333824517552115.Spec : Prop :=
  ∀ n, (P3525333824517552115.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P1659898304304473900

`eq[A039653(A225091(n)), A066003(n)]`
-/

namespace A134533.P1659898304304473900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A225091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134533.P1659898304304473900

namespace A134533

/-- `eq[A039653(A225091(n)), A066003(n)]` -/
def P1659898304304473900.Spec : Prop :=
  ∀ n, (P1659898304304473900.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P16096006496278434048

`eq[A000007(n), A016035(A066003(n))]`
-/

namespace A134533.P16096006496278434048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134533.P16096006496278434048

namespace A134533

/-- `eq[A000007(n), A016035(A066003(n))]` -/
def P16096006496278434048.Spec : Prop :=
  ∀ n, (P16096006496278434048.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P2762073147057843538

`lt[A003991(n+1), A014963(A066003(n))]`
-/

namespace A134533.P2762073147057843538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134533.P2762073147057843538

namespace A134533

/-- `lt[A003991(n+1), A014963(A066003(n))]` -/
def P2762073147057843538.Spec : Prop :=
  ∀ n, (P2762073147057843538.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P16277182658403716404

`lt[A065475(n+1), A014963(A066003(n))]`
-/

namespace A134533.P16277182658403716404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134533.P16277182658403716404

namespace A134533

/-- `lt[A065475(n+1), A014963(A066003(n))]` -/
def P16277182658403716404.Spec : Prop :=
  ∀ n, (P16277182658403716404.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P2931044267871795885

`lt[A036234(n+2), A014963(A066003(n))]`
-/

namespace A134533.P2931044267871795885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134533.P2931044267871795885

namespace A134533

/-- `lt[A036234(n+2), A014963(A066003(n))]` -/
def P2931044267871795885.Spec : Prop :=
  ∀ n, (P2931044267871795885.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P11787059946289286197

`record[A000027(n+1)-A001065(A066003(n))]`
-/

namespace A134533.P11787059946289286197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A001065 (A066003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134533.P11787059946289286197

namespace A134533

/-- `record[A000027(n+1)-A001065(A066003(n))]` -/
def P11787059946289286197.Spec : Prop :=
  ∀ n, P11787059946289286197.a n = A134533 (n + 1)

end A134533

/-! ## A134533.P14031685574308804129

`eq[2, A070824(2*A066003(n))]`
-/

namespace A134533.P14031685574308804129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * A066003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134533.P14031685574308804129

namespace A134533

/-- `eq[2, A070824(2*A066003(n))]` -/
def P14031685574308804129.Spec : Prop :=
  ∀ n, (P14031685574308804129.a n : ℤ) = A134533 (n + 1)

end A134533

/-! ## A134533.P1382200650851385910

`eq[A016035(2*A066003(n)), A066003(n)]`
-/

namespace A134533.P1382200650851385910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (2 * A066003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134533.P1382200650851385910

namespace A134533

/-- `eq[A016035(2*A066003(n)), A066003(n)]` -/
def P1382200650851385910.Spec : Prop :=
  ∀ n, (P1382200650851385910.a n : ℤ) = A134533 (n + 1)

end A134533

/-!
# A134534: Numbers n such that the sum of the digits of 11^n is prime.

The programs for A134534, there is no canonical definition to state claims against.
-/

/-! ## A134534.P6645063598853518802

`eq[0, A005171(A066005(n))]`
-/

namespace A134534.P6645063598853518802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A066005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134534.P6645063598853518802

/-! ## A134534.P2537133950499853549

`lt[A010051(2*(n+1)), A010051(A066005(n))]`
-/

namespace A134534.P2537133950499853549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A066005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134534.P2537133950499853549

/-! ## A134534.P11543824365258541633

`eq[A052126(A066005(n)), A057427(n)]`
-/

namespace A134534.P11543824365258541633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A066005 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134534.P11543824365258541633

/-! ## A134534.P8847555062078470758

`lt[A101113(A066005(n)), A113311(n)]`
-/

namespace A134534.P8847555062078470758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101113 (A066005 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134534.P8847555062078470758

/-! ## A134534.P14972841883428774937

`lt[A032742(A066005(n)), A101113(n+1)]`
-/

namespace A134534.P14972841883428774937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A066005 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134534.P14972841883428774937

/-! ## A134534.P6180717502150020462

`eq[2, A052126(2*A066005(n))]`
-/

namespace A134534.P6180717502150020462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * A066005 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134534.P6180717502150020462

/-!
# A134535: Numbers n such that the sum of the digits of 13^n is prime.

The programs for A134535, there is no canonical definition to state claims against.
-/

/-! ## A134535.P17445969204403043012

`eq[0, A005171(A175527(n))]`
-/

namespace A134535.P17445969204403043012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A134535.P17445969204403043012

/-! ## A134535.P3521655351150368083

`lt[A004166(n), A020639(A175527(n))]`
-/

namespace A134535.P3521655351150368083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P3521655351150368083

/-! ## A134535.P16315133519364956719

`lt[A066002(n), A006530(A175527(n))]`
-/

namespace A134535.P16315133519364956719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P16315133519364956719

/-! ## A134535.P12028790741217936466

`lt[A066003(n), A020639(A175527(n))]`
-/

namespace A134535.P12028790741217936466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P12028790741217936466

/-! ## A134535.P10757944894073287184

`lt[A020639(n+1)+n, A020639(A175527(n))]`
-/

namespace A134535.P10757944894073287184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P10757944894073287184

/-! ## A134535.P2058155981930297645

`eq[A000007(n), A016035(A175527(n))]`
-/

namespace A134535.P2058155981930297645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134535.P2058155981930297645

/-! ## A134535.P6052181822433843273

`lt[A000027(n+1), A014963(A175527(n))]`
-/

namespace A134535.P6052181822433843273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P6052181822433843273

/-! ## A134535.P3370837365752992274

`lt[A059893(n+1), A014963(A175527(n))]`
-/

namespace A134535.P3370837365752992274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P3370837365752992274

/-! ## A134535.P5691206789554963225

`lt[A059894(n+1), A014963(A175527(n))]`
-/

namespace A134535.P5691206789554963225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P5691206789554963225

/-! ## A134535.P5084263738671367834

`lt[A175498(n+1), A014963(A175527(n))]`
-/

namespace A134535.P5084263738671367834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P5084263738671367834

/-! ## A134535.P13966413094685075829

`lt[A175553(n+1), A014963(A175527(n))]`
-/

namespace A134535.P13966413094685075829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P13966413094685075829

/-! ## A134535.P3478057626337060542

`lt[A207790(n+1), A014963(A175527(n))]`
-/

namespace A134535.P3478057626337060542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A175527 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A134535.P3478057626337060542

/-! ## A134535.P12540606474323564712

`eq[A016035(2*A175527(n)), A175527(n)]`
-/

namespace A134535.P12540606474323564712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (2 * A175527 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A134535.P12540606474323564712

/-!
# A134536: a(n) = gcd(c(n), c(2n)), where c(n) is the n-th composite positive integer.

The programs for A134536, the canonical program `A134536.P8076309341585828443` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134536 has offset 1).

The definition of A134536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134536.P12547154017855415072

`gcd(A002808(n+1), A099862(n+1))`
-/

namespace A134536.P12547154017855415072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (n + 1)) (A099862 (n + 1))

end

end A134536.P12547154017855415072

namespace A134536

/-- `gcd(A002808(n+1), A099862(n+1))` -/
def P12547154017855415072.Spec : Prop :=
  ∀ n, (P12547154017855415072.a n : ℤ) = A134536 (n + 1)

end A134536

/-! ## A134536.P8076309341585828443

`gcd(Δ[A053767(n)], A002808(2*(n+1)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134536

/-- `gcd(Δ[A053767(n)], A002808(2*(n+1)))` -/
def P8076309341585828443.Spec : Prop :=
  ∀ n, (P8076309341585828443.a n : ℤ) = A134536 (n + 1)

theorem P8076309341585828443.correct : P8076309341585828443.Spec := by
  intro n
  simp only [A134536, Nat.add_sub_cancel]

end A134536

/-! ## A134536.P3655671807077761163

`gcd(A002808(2*n+2), A018252(n+2))`
-/

namespace A134536.P3655671807077761163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (2 * n + 2)) (A018252 (n + 2))

end

end A134536.P3655671807077761163

namespace A134536

/-- `gcd(A002808(2*n+2), A018252(n+2))` -/
def P3655671807077761163.Spec : Prop :=
  ∀ n, (P3655671807077761163.a n : ℤ) = A134536 (n + 1)

end A134536

/-! ## A134536.P8655226980266661699

`gcd(A067747(2*(n+1)), A067747(4*(n+1)))`
-/

namespace A134536.P8655226980266661699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067747 (2 * (n + 1))) (A067747 (4 * (n + 1)))

end

end A134536.P8655226980266661699

namespace A134536

/-- `gcd(A067747(2*(n+1)), A067747(4*(n+1)))` -/
def P8655226980266661699.Spec : Prop :=
  ∀ n, (P8655226980266661699.a n : ℤ) = A134536 (n + 1)

end A134536

/-! ## A134536.P14853964038635120469

`gcd(A002808(A000027(n+1)), A141468(2*n+4))`
-/

namespace A134536.P14853964038635120469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002808 (A000027 (n + 1)).toNat) (A141468 (2 * n + 4))

end

end A134536.P14853964038635120469

namespace A134536

/-- `gcd(A002808(A000027(n+1)), A141468(2*n+4))` -/
def P14853964038635120469.Spec : Prop :=
  ∀ n, (P14853964038635120469.a n : ℤ) = A134536 (n + 1)

end A134536

/-!
# A134537: Squares appearing in A062064: a(n) = A062064(n) + A062064(n+1).

The programs for A134537, there is no canonical definition to state claims against.
-/

/-! ## A134537.P1706725707694862358

`A062064(n+1)+A062064(n+2)`
-/

namespace A134537.P1706725707694862358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062064 (n + 1) + A062064 (n + 2)

end

end A134537.P1706725707694862358

/-! ## A134537.P4020634941122704318

`A131696(n+1)²`
-/

namespace A134537.P4020634941122704318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131696 (n + 1) ^ 2

end

end A134537.P4020634941122704318

/-! ## A134537.P13951565816670684759

`A131696(2*(n+1)-(n+1))^2`
-/

namespace A134537.P13951565816670684759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131696 (2 * (n + 1) - (n + 1)) ^ 2

end

end A134537.P13951565816670684759

/-! ## A134537.P15327634306571708039

`A131696(A000027(n+1))*A131696(n+1)`
-/

namespace A134537.P15327634306571708039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131696 (A000027 (n + 1)).toNat * A131696 (n + 1)

end

end A134537.P15327634306571708039

/-! ## A134537.P13628501604187085837

`(A131696(n+1)%Δ[A062066(n+1)])^2`
-/

namespace A134537.P13628501604187085837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131696 (n + 1)) (f1 (n + 1) - f1 n) ^ 2

end

end A134537.P13628501604187085837

/-! ## A134537.P5484784101192615271

`A131696(n+1)*A131696((n+1)%A000070(n+1))`
-/

namespace A134537.P5484784101192615271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131696 (n + 1) * A131696 (Int.tmod (n + 1 : ℤ) (A000070 (n + 1))).toNat

end

end A134537.P5484784101192615271

/-!
# A134538: a(n) = 5*n^2 - 1.

The programs for A134538, the canonical program `A134538.P15510375278590473236` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134538 has offset 1).

The definition of A134538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134538.P15510375278590473236

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=19, a(2)=44`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134538

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15510375278590473236.Spec : Prop :=
  ∀ n, P15510375278590473236.a n = A134538 (n + 1)

theorem P15510375278590473236.correct : P15510375278590473236.Spec := by
  intro n
  simp only [A134538, Nat.add_sub_cancel]

end A134538

/-! ## A134538.P2082491740549767163

`5*(n+1)²-1`
-/

namespace A134538.P2082491740549767163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) ^ 2 : ℤ) - 1

end

end A134538.P2082491740549767163

namespace A134538

/-- `5*(n+1)²-1` -/
def P2082491740549767163.Spec : Prop :=
  ∀ n, P2082491740549767163.a n = A134538 (n + 1)

end A134538

/-! ## A134538.P17495125699435646348

`∑[a(n-1)+10]` with `a(0)=4, a(1)=15`
-/

namespace A134538.P17495125699435646348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 15] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134538.P17495125699435646348

namespace A134538

/-- `∑[a(n-1)+10]` -/
def P17495125699435646348.Spec : Prop :=
  ∀ n, (P17495125699435646348.a n : ℤ) = A134538 (n + 1)

end A134538

/-! ## A134538.P1100133966451711386

`record[5*(1-n)²-1]`
-/

namespace A134538.P1100133966451711386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (1 - (n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134538.P1100133966451711386

namespace A134538

/-- `record[5*(1-n)²-1]` -/
def P1100133966451711386.Spec : Prop :=
  ∀ n, P1100133966451711386.a n = A134538 (n + 1)

end A134538

/-! ## A134538.P16285762569577659870

`xor(-1, -5*(n+1)²)`
-/

namespace A134538.P16285762569577659870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(5 * (n + 1) ^ 2 : ℤ))

end

end A134538.P16285762569577659870

namespace A134538

/-- `xor(-1, -5*(n+1)²)` -/
def P16285762569577659870.Spec : Prop :=
  ∀ n, P16285762569577659870.a n = A134538 (n + 1)

end A134538

/-! ## A134538.P7568778356728277258

`abs(1-∑[5*or(1, 2*n)])`
-/

namespace A134538.P7568778356728277258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.lor 1 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A134538.P7568778356728277258

namespace A134538

/-- `abs(1-∑[5*or(1, 2*n)])` -/
def P7568778356728277258.Spec : Prop :=
  ∀ n, P7568778356728277258.a n = A134538 (n + 1)

end A134538

/-! ## A134538.P17703460717107846397

`abs(a(n-1)+5*(2*n+1))` with `a(0)=4`
-/

namespace A134538.P17703460717107846397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134538.P17703460717107846397

namespace A134538

/-- `abs(a(n-1)+5*(2*n+1))` -/
def P17703460717107846397.Spec : Prop :=
  ∀ n, (P17703460717107846397.a n : ℤ) = A134538 (n + 1)

end A134538

/-! ## A134538.P13924313133638039464

`floor(a(n-1)+5*(2*n+1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A134538.P13924313133638039464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134538.P13924313133638039464

namespace A134538

/-- `floor(a(n-1)+5*(2*n+1))` -/
def P13924313133638039464.Spec : Prop :=
  ∀ n, (P13924313133638039464.a n : ℤ) = A134538 (n + 1)

end A134538

/-! ## A134538.P342103728759482002

`∑[(2*n+1)*(5-C(2, n+2))]`
-/

namespace A134538.P342103728759482002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (5 - (Nat.choose 2 (n + 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134538.P342103728759482002

namespace A134538

/-- `∑[(2*n+1)*(5-C(2, n+2))]` -/
def P342103728759482002.Spec : Prop :=
  ∀ n, P342103728759482002.a n = A134538 (n + 1)

end A134538

/-! ## A134538.P8685555470156387248

`ceil(a(n-1)+5*(2*n+1))` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A134538.P8685555470156387248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134538.P8685555470156387248

namespace A134538

/-- `ceil(a(n-1)+5*(2*n+1))` -/
def P8685555470156387248.Spec : Prop :=
  ∀ n, (P8685555470156387248.a n : ℤ) = A134538 (n + 1)

end A134538

/-! ## A134538.P11771629123913336282

`round(a(n-1)+5*(2*n+1))` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A134538.P11771629123913336282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134538.P11771629123913336282

namespace A134538

/-- `round(a(n-1)+5*(2*n+1))` -/
def P11771629123913336282.Spec : Prop :=
  ∀ n, (P11771629123913336282.a n : ℤ) = A134538 (n + 1)

end A134538

/-! ## A134538.P18429829576015309202

`5*(a(n-1)/5+2*n+1)` with `a(0)=4`
-/

namespace A134538.P18429829576015309202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  5 * (a (n - 1) / 5 + (2 * n + 1 : ℚ))

end

end A134538.P18429829576015309202

namespace A134538

/-- `5*(a(n-1)/5+2*n+1)` -/
def P18429829576015309202.Spec : Prop :=
  ∀ n, P18429829576015309202.a n = (A134538 (n + 1) : ℚ)

end A134538

/-! ## A134538.P15087810809496652455

`A158446(n+1)/5`
-/

namespace A134538.P15087810809496652455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158446 (n + 1) : ℚ) / 5

end

end A134538.P15087810809496652455

namespace A134538

/-- `A158446(n+1)/5` -/
def P15087810809496652455.Spec : Prop :=
  ∀ n, P15087810809496652455.a n = (A134538 (n + 1) : ℚ)

end A134538

/-! ## A134538.P18170422018479175314

`floor(A157919(n+1)/10)`
-/

namespace A134538.P18170422018479175314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157919 (n + 1) : ℚ) / 10⌋

end

end A134538.P18170422018479175314

namespace A134538

/-- `floor(A157919(n+1)/10)` -/
def P18170422018479175314.Spec : Prop :=
  ∀ n, P18170422018479175314.a n = A134538 (n + 1)

end A134538

/-! ## A134538.P4922405385693408675

`(A158447(n+1)-1)/2`
-/

namespace A134538.P4922405385693408675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158447 (n + 1) - 1 : ℚ) / 2

end

end A134538.P4922405385693408675

namespace A134538

/-- `(A158447(n+1)-1)/2` -/
def P4922405385693408675.Spec : Prop :=
  ∀ n, P4922405385693408675.a n = (A134538 (n + 1) : ℚ)

end A134538

/-! ## A134538.P14754443777834615897

`(A158187(n+1)-3)/2`
-/

namespace A134538.P14754443777834615897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158187 (n + 1) - 3 : ℚ) / 2

end

end A134538.P14754443777834615897

namespace A134538

/-- `(A158187(n+1)-3)/2` -/
def P14754443777834615897.Spec : Prop :=
  ∀ n, P14754443777834615897.a n = (A134538 (n + 1) : ℚ)

end A134538

/-! ## A134538.P906896245695055357

`(A158491(n+1)-3)/4`
-/

namespace A134538.P906896245695055357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158491 (n + 1) - 3 : ℚ) / 4

end

end A134538.P906896245695055357

namespace A134538

/-- `(A158491(n+1)-3)/4` -/
def P906896245695055357.Spec : Prop :=
  ∀ n, P906896245695055357.a n = (A134538 (n + 1) : ℚ)

end A134538

/-! ## A134538.P9515282087233563458

`abs(1-∑[A008592(n)+5])`
-/

namespace A134538.P9515282087233563458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A134538.P9515282087233563458

namespace A134538

/-- `abs(1-∑[A008592(n)+5])` -/
def P9515282087233563458.Spec : Prop :=
  ∀ n, P9515282087233563458.a n = A134538 (n + 1)

end A134538

/-!
# A134540: Triangle read by rows: T(n,k) = Sum_{d|n, d>=k} moebius(n/d).

The programs for A134540, the canonical program `A134540.P11855111430007588773` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134540 has offset 1).

The definition of A134540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134540.P11855111430007588773

`a(n-1)-A054525(n)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134540

/-- `a(n-1)-A054525(n)` -/
def P11855111430007588773.Spec : Prop :=
  ∀ n, P11855111430007588773.a n = A134540 (n + 1)

theorem P11855111430007588773.correct : P11855111430007588773.Spec := by
  intro n
  simp only [A134540, Nat.add_sub_cancel]

end A134540

/-! ## A134540.P7301900226261753517

`2-∑[A054525(A028310(n))]`
-/

namespace A134540.P7301900226261753517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134540.P7301900226261753517

namespace A134540

/-- `2-∑[A054525(A028310(n))]` -/
def P7301900226261753517.Spec : Prop :=
  ∀ n, P7301900226261753517.a n = A134540 (n + 1)

end A134540

/-! ## A134540.P9866601669725146711

`∑[-A054525(A000038(n)+n)]`
-/

namespace A134540.P9866601669725146711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A054525 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134540.P9866601669725146711

namespace A134540

/-- `∑[-A054525(A000038(n)+n)]` -/
def P9866601669725146711.Spec : Prop :=
  ∀ n, P9866601669725146711.a n = A134540 (n + 1)

end A134540

/-! ## A134540.P1439750479502858905

`A054525(n+1)-∑[A054525(n+1)]+1`
-/

namespace A134540.P1439750479502858905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A134540.P1439750479502858905

namespace A134540

/-- `A054525(n+1)-∑[A054525(n+1)]+1` -/
def P1439750479502858905.Spec : Prop :=
  ∀ n, P1439750479502858905.a n = A134540 (n + 1)

end A134540

/-! ## A134540.P10663483404530024870

`A128189(A185870(n+1))`
-/

namespace A134540.P10663483404530024870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128189 (A185870 (n + 1)).toNat

end

end A134540.P10663483404530024870

namespace A134540

/-- `A128189(A185870(n+1))` -/
def P10663483404530024870.Spec : Prop :=
  ∀ n, P10663483404530024870.a n = A134540 (n + 1)

end A134540

/-! ## A134540.P17526317469180355250

`A008683(6*A140704(n+1))`
-/

namespace A134540.P17526317469180355250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * A140704 (n + 1)).toNat

end

end A134540.P17526317469180355250

namespace A134540

/-- `A008683(6*A140704(n+1))` -/
def P17526317469180355250.Spec : Prop :=
  ∀ n, P17526317469180355250.a n = A134540 (n + 1)

end A134540

/-! ## A134540.P7017128788010215773

`A008683(∏{d}[A140704(n+1), #])`
-/

namespace A134540.P7017128788010215773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A134540.P7017128788010215773

namespace A134540

/-- `A008683(∏{d}[A140704(n+1), #])` -/
def P7017128788010215773.Spec : Prop :=
  ∀ n, P7017128788010215773.a n = A134540 (n + 1)

end A134540

/-!
# A134541: Triangle read by rows: T(n,k) = A002321(floor(n/k)).

The programs for A134541, the canonical program `A134541.P5445259971452207357` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134541 has offset 1).

The definition of A134541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134541.P16751487108873461715

`A002321(A010766(n+1))`
-/

namespace A134541.P16751487108873461715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A010766 (n + 1)).toNat

end

end A134541.P16751487108873461715

namespace A134541

/-- `A002321(A010766(n+1))` -/
def P16751487108873461715.Spec : Prop :=
  ∀ n, P16751487108873461715.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P5445259971452207357

`A002321(ceil(ratio[A074909(n)]))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A134541

/-- `A002321(ceil(ratio[A074909(n)]))` -/
def P5445259971452207357.Spec : Prop :=
  ∀ n, P5445259971452207357.a n = A134541 (n + 1)

theorem P5445259971452207357.correct : P5445259971452207357.Spec := by
  intro n
  simp only [A134541, Nat.add_sub_cancel]

end A134541

/-! ## A134541.P10392262768146082552

`A002321(ceil(ratio[A181971(n)]))`
-/

namespace A134541.P10392262768146082552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A134541.P10392262768146082552

namespace A134541

/-- `A002321(ceil(ratio[A181971(n)]))` -/
def P10392262768146082552.Spec : Prop :=
  ∀ n, P10392262768146082552.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P6022257987966359589

`A002321(A050206(n+2)-1)`
-/

namespace A134541.P6022257987966359589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A050206 (n + 2) - 1).toNat

end

end A134541.P6022257987966359589

namespace A134541

/-- `A002321(A050206(n+2)-1)` -/
def P6022257987966359589.Spec : Prop :=
  ∀ n, P6022257987966359589.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P4320094095336153008

`A143446(n+1)/A059268(n)`
-/

namespace A134541.P4320094095336153008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143446 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A134541.P4320094095336153008

namespace A134541

/-- `A143446(n+1)/A059268(n)` -/
def P4320094095336153008.Spec : Prop :=
  ∀ n, P4320094095336153008.a n = (A134541 (n + 1) : ℚ)

end A134541

/-! ## A134541.P13604493356684032045

`A002321(floor(sqrt(A085383(n+1))))`
-/

namespace A134541.P13604493356684032045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (Int.sqrt (A085383 (n + 1))).toNat

end

end A134541.P13604493356684032045

namespace A134541

/-- `A002321(floor(sqrt(A085383(n+1))))` -/
def P13604493356684032045.Spec : Prop :=
  ∀ n, P13604493356684032045.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P7840292307310368828

`A002321(ceil(ratio[A029656(n+1)]))`
-/

namespace A134541.P7840292307310368828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A134541.P7840292307310368828

namespace A134541

/-- `A002321(ceil(ratio[A029656(n+1)]))` -/
def P7840292307310368828.Spec : Prop :=
  ∀ n, P7840292307310368828.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P9550360647749047643

`A002321(A234575(n+1)-A048158(n+1))`
-/

namespace A134541.P9550360647749047643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A234575 (n + 1) - A048158 (n + 1)).toNat

end

end A134541.P9550360647749047643

namespace A134541

/-- `A002321(A234575(n+1)-A048158(n+1))` -/
def P9550360647749047643.Spec : Prop :=
  ∀ n, P9550360647749047643.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P14405889177504189942

`A002321(A123229(n+1)/A002260(n+1))`
-/

namespace A134541.P14405889177504189942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway ((A123229 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ))).toNat

end

end A134541.P14405889177504189942

namespace A134541

/-- `A002321(A123229(n+1)/A002260(n+1))` -/
def P14405889177504189942.Spec : Prop :=
  ∀ n, P14405889177504189942.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P18223048229502328185

`A002321(A204143(n+1)/A010783(n+1))`
-/

namespace A134541.P18223048229502328185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.roundAway ((A204143 (n + 1) : ℚ) / (A010783 (n + 1) : ℚ))).toNat

end

end A134541.P18223048229502328185

namespace A134541

/-- `A002321(A204143(n+1)/A010783(n+1))` -/
def P18223048229502328185.Spec : Prop :=
  ∀ n, P18223048229502328185.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P4853461212181982027

`A002321(floor(A002024(n+1)/A002260(n+1)))`
-/

namespace A134541.P4853461212181982027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌊(A002024 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌋.toNat

end

end A134541.P4853461212181982027

namespace A134541

/-- `A002321(floor(A002024(n+1)/A002260(n+1)))` -/
def P4853461212181982027.Spec : Prop :=
  ∀ n, P4853461212181982027.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P8223269229960536442

`A002321(ceil(A004736(n+1)/A002260(n+1)))`
-/

namespace A134541.P8223269229960536442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌈(A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)⌉.toNat

end

end A134541.P8223269229960536442

namespace A134541

/-- `A002321(ceil(A004736(n+1)/A002260(n+1)))` -/
def P8223269229960536442.Spec : Prop :=
  ∀ n, P8223269229960536442.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P6217987594073121013

`A002321(ceil(A134231(n+1)/A134226(n+1)))`
-/

namespace A134541.P6217987594073121013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌈(A134231 (n + 1) : ℚ) / (A134226 (n + 1) : ℚ)⌉.toNat

end

end A134541.P6217987594073121013

namespace A134541

/-- `A002321(ceil(A134231(n+1)/A134226(n+1)))` -/
def P6217987594073121013.Spec : Prop :=
  ∀ n, P6217987594073121013.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P5170086012213662418

`A002321(ceil(ratio[A029635(n)]))`
-/

namespace A134541.P5170086012213662418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A134541.P5170086012213662418

namespace A134541

/-- `A002321(ceil(ratio[A029635(n)]))` -/
def P5170086012213662418.Spec : Prop :=
  ∀ n, P5170086012213662418.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P1748677393175157377

`A100198(ceil(ratio[A029635(n)]))+1`
-/

namespace A134541.P1748677393175157377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat + 1

end

end A134541.P1748677393175157377

namespace A134541

/-- `A100198(ceil(ratio[A029635(n)]))+1` -/
def P1748677393175157377.Spec : Prop :=
  ∀ n, P1748677393175157377.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P14942182151496719069

`A100198(floor(sqrt(A085383(n+1))))+1`
-/

namespace A134541.P14942182151496719069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (Int.sqrt (A085383 (n + 1))).toNat + 1

end

end A134541.P14942182151496719069

namespace A134541

/-- `A100198(floor(sqrt(A085383(n+1))))+1` -/
def P14942182151496719069.Spec : Prop :=
  ∀ n, P14942182151496719069.a n = A134541 (n + 1)

end A134541

/-! ## A134541.P102758932775827732

`A100198(ceil(ratio[A029656(n+1)]))+1`
-/

namespace A134541.P102758932775827732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat + 1

end

end A134541.P102758932775827732

namespace A134541

/-- `A100198(ceil(ratio[A029656(n+1)]))+1` -/
def P102758932775827732.Spec : Prop :=
  ∀ n, P102758932775827732.a n = A134541 (n + 1)

end A134541

/-!
# A134542: Triangle read by rows: T(n,k) = Sum_{i=k..n} A134541(n,i).

The programs for A134542, there is no canonical definition to state claims against.
-/

/-! ## A134542.P11268392034389953987

`gcd(Δ[A134543(n+1)], A066667(n))`
-/

namespace A134542.P11268392034389953987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A066667 n)

end

end A134542.P11268392034389953987

/-! ## A134542.P15302934971842808334

`A000120(A004273(A172119(n))%A090057(n+1))`
-/

namespace A134542.P15302934971842808334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A004273 (A172119 n).toNat) (A090057 (n + 1))).toNat

end

end A134542.P15302934971842808334

/-! ## A134542.P17715410972907662321

`A004218(lcm(7, A349933(n)))`
-/

namespace A134542.P17715410972907662321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (Int.lcm 7 (A349933 n))

end

end A134542.P17715410972907662321

/-! ## A134542.P13301123746449685618

`A001227(A027421(n)^A319453(n))`
-/

namespace A134542.P13301123746449685618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway ((A027421 n : ℚ) ^ (A319453 n : ℤ))).toNat

end

end A134542.P13301123746449685618

/-! ## A134542.P6478008444599252350

`A321862(A092905(n)%A055693(n+1))`
-/

namespace A134542.P6478008444599252350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321862 (Int.tmod (A092905 n) (A055693 (n + 1))).toNat

end

end A134542.P6478008444599252350

/-!
# A134543: Triangle read by rows: T(n,k) = Sum_{i=k..n} (i+1-k)*A134541(n,i).

The programs for A134543, there is no canonical definition to state claims against.
-/

/-! ## A134543.P15524135570370308272

`A299230(A341725(n))+A000035(A018795(n))`
-/

namespace A134543.P15524135570370308272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (A341725 n).toNat + A000035 (A018795 n).toNat

end

end A134543.P15524135570370308272

/-! ## A134543.P2755529360603331163

`A108582(A027466(n))`
-/

namespace A134543.P2755529360603331163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A027466 n).toNat

end

end A134543.P2755529360603331163

/-! ## A134543.P1947431595240084074

`A082892(A336988(n+1))`
-/

namespace A134543.P1947431595240084074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082892 (A336988 (n + 1)).toNat

end

end A134543.P1947431595240084074

/-! ## A134543.P2618625006052454459

`A351700(A318945(n+2))`
-/

namespace A134543.P2618625006052454459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351700 (A318945 (n + 2)).toNat

end

end A134543.P2618625006052454459

/-! ## A134543.P8731443696956162736

`A108582(A143498(n+3))`
-/

namespace A134543.P8731443696956162736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A143498 (n + 3)).toNat

end

end A134543.P8731443696956162736

/-!
# A134544: Triangle read by rows: T(n,k) = Sum_{d|n, d>=k} k.

The programs for A134544, there is no canonical definition to state claims against.
-/

/-! ## A134544.P12067311368828846777

`A127093(n+1)+A134559(n+2)-A134545(n+2)`
-/

namespace A134544.P12067311368828846777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + (A134559 (n + 2) - A134545 (n + 2))

end

end A134544.P12067311368828846777

/-! ## A134544.P7645431302764008816

`(1-C(∑[char[∑[n]]], 2)+n)*A135539(n+1)`
-/

namespace A134544.P7645431302764008816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A135539 (n + 1)

end

end A134544.P7645431302764008816

/-! ## A134544.P18043142865564700883

`A002260(n+1)*A135539(n+1)`
-/

namespace A134544.P18043142865564700883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A135539 (n + 1)

end

end A134544.P18043142865564700883

/-! ## A134544.P2369043603136729965

`(A002262(n)+1)*A135539(n+1)`
-/

namespace A134544.P2369043603136729965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A135539 (n + 1)

end

end A134544.P2369043603136729965

/-! ## A134544.P10339254372660832607

`sqrt(A133819(n+1))*A135539(n+1)`
-/

namespace A134544.P10339254372660832607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A135539 (n + 1) : ℝ)

end

end A134544.P10339254372660832607

/-! ## A134544.P591453147803309883

`A135539(n+1)/A007318(n)*A103406(n)`
-/

namespace A134544.P591453147803309883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135539 (n + 1) : ℚ) / (A007318 n : ℚ) * (A103406 n : ℚ)

end

end A134544.P591453147803309883

/-! ## A134544.P15326381535215751871

`A134559(n+1)+A135539(n+1)-A134545(n+1)`
-/

namespace A134544.P15326381535215751871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134559 (n + 1) + (A135539 (n + 1) - A134545 (n + 1))

end

end A134544.P15326381535215751871

/-! ## A134544.P4958837418378985037

`A002260(n+1)*A072528(A056537(n+1))`
-/

namespace A134544.P4958837418378985037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A072528 (A056537 (n + 1)).toNat

end

end A134544.P4958837418378985037

/-! ## A134544.P8892569399833787768

`A057555(2*n+1)*A135539(n+1)`
-/

namespace A134544.P8892569399833787768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A135539 (n + 1)

end

end A134544.P8892569399833787768

/-! ## A134544.P3174887291237011178

`A000005(A059268(n))*A135539(n+1)`
-/

namespace A134544.P3174887291237011178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A135539 (n + 1)

end

end A134544.P3174887291237011178

/-!
# A134545: Triangle read by rows: T(n,k) = Sum_{i=k..n} (i+1-k)*A051731(n,i).

The programs for A134545, there is no canonical definition to state claims against.
-/

/-! ## A134545.P15661253897574766873

`gcd(A001488(A000070(2*(n+1))), A079517(n))`
-/

namespace A134545.P15661253897574766873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001488 ((A000070 (2 * (n + 1))).toNat + 10)) (A079517 n)

end

end A134545.P15661253897574766873

/-!
# A134546: Triangle read by rows: T(n, k) = Sum_{j=0..n} floor(j / k).

The programs for A134546, there is no canonical definition to state claims against.
-/

/-! ## A134546.P17535346704151549222

`A127739(n+1)-A198787(A014132(n+1))`
-/

namespace A134546.P17535346704151549222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) - A198787 (A014132 (n + 1)).toNat

end

end A134546.P17535346704151549222

/-! ## A134546.P1708778684635995526

`A338993(comp[∑[n]]+1)/2`
-/

namespace A134546.P1708778684635995526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 2

end

end A134546.P1708778684635995526

/-! ## A134546.P6225586277689697691

`ceil(A338993(A002024(n+1)+n+2)/2)`
-/

namespace A134546.P6225586277689697691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338993 (A002024 (n + 1) + (n : ℤ) + 2).toNat : ℚ) / 2⌉

end

end A134546.P6225586277689697691

/-! ## A134546.P6191651980658863640

`ceil(A087644(n+3)/A014682(A071223(n+2)))`
-/

namespace A134546.P6191651980658863640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087644 (n + 3) : ℚ) / (A014682 (A071223 (n + 2)).toNat : ℚ)⌉

end

end A134546.P6191651980658863640

/-!
# A134547: a(n) = 5*n^2 + 20*n + 4.

The programs for A134547, the canonical program `A134547.P1332986589587468121` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134547 has offset 1).

The definition of A134547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134547.P1332986589587468121

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=29, a(1)=64, a(2)=109`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134547

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1332986589587468121.Spec : Prop :=
  ∀ n, P1332986589587468121.a n = A134547 (n + 1)

theorem P1332986589587468121.correct : P1332986589587468121.Spec := by
  intro n
  simp only [A134547, Nat.add_sub_cancel]

end A134547

/-! ## A134547.P15617320974944036344

`5*(n+3)²-16`
-/

namespace A134547.P15617320974944036344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 3) ^ 2 : ℤ) - 16

end

end A134547.P15617320974944036344

namespace A134547

/-- `5*(n+3)²-16` -/
def P15617320974944036344.Spec : Prop :=
  ∀ n, P15617320974944036344.a n = A134547 (n + 1)

end A134547

/-! ## A134547.P1829156463577412761

`∑[a(n-1)+10]` with `a(0)=29, a(1)=35`
-/

namespace A134547.P1829156463577412761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [29, 35] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134547.P1829156463577412761

namespace A134547

/-- `∑[a(n-1)+10]` -/
def P1829156463577412761.Spec : Prop :=
  ∀ n, (P1829156463577412761.a n : ℤ) = A134547 (n + 1)

end A134547

/-! ## A134547.P10173834575745074360

`abs(lcm(5, 3-(n+3)²)-1)`
-/

namespace A134547.P10173834575745074360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm 5 (3 - ((n + 3) ^ 2 : ℤ)) : ℤ) - 1|

end

end A134547.P10173834575745074360

namespace A134547

/-- `abs(lcm(5, 3-(n+3)²)-1)` -/
def P10173834575745074360.Spec : Prop :=
  ∀ n, P10173834575745074360.a n = A134547 (n + 1)

end A134547

/-! ## A134547.P17231498119807344385

`∑[A160912(n+1)+28]`
-/

namespace A134547.P17231498119807344385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134547.P17231498119807344385

namespace A134547

/-- `∑[A160912(n+1)+28]` -/
def P17231498119807344385.Spec : Prop :=
  ∀ n, P17231498119807344385.a n = A134547 (n + 1)

end A134547

/-! ## A134547.P10658460829495259409

`(A154590(2*(n+1))+A152811(n+2))/2`
-/

namespace A134547.P10658460829495259409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154590 (2 * (n + 1)) + A152811 (n + 2) : ℚ) / 2

end

end A134547.P10658460829495259409

namespace A134547

/-- `(A154590(2*(n+1))+A152811(n+2))/2` -/
def P10658460829495259409.Spec : Prop :=
  ∀ n, P10658460829495259409.a n = (A134547 (n + 1) : ℚ)

end A134547

/-! ## A134547.P16572669775658943602

`Δ[A045944(2*n+1)+A007587(n)]`
-/

namespace A134547.P16572669775658943602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 (2 * n + 1) + A007587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134547.P16572669775658943602

namespace A134547

/-- `Δ[A045944(2*n+1)+A007587(n)]` -/
def P16572669775658943602.Spec : Prop :=
  ∀ n, P16572669775658943602.a n = A134547 (n + 1)

end A134547

/-! ## A134547.P4006134119275938428

`record[A162316(A162306(n+1))+3]`
-/

namespace A134547.P4006134119275938428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162316 (A162306 (n + 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134547.P4006134119275938428

namespace A134547

/-- `record[A162316(A162306(n+1))+3]` -/
def P4006134119275938428.Spec : Prop :=
  ∀ n, P4006134119275938428.a n = A134547 (n + 1)

end A134547

/-! ## A134547.P7804647429366189177

`A000027(A162316(n+1)+3)`
-/

namespace A134547.P7804647429366189177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A162316 (n + 1) + 3).toNat

end

end A134547.P7804647429366189177

namespace A134547

/-- `A000027(A162316(n+1)+3)` -/
def P7804647429366189177.Spec : Prop :=
  ∀ n, P7804647429366189177.a n = A134547 (n + 1)

end A134547

/-! ## A134547.P1804066375085136087

`A016897((n+3)²-4)`
-/

namespace A134547.P1804066375085136087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 ((n + 3) ^ 2 - 4)

end

end A134547.P1804066375085136087

namespace A134547

/-- `A016897((n+3)²-4)` -/
def P1804066375085136087.Spec : Prop :=
  ∀ n, P1804066375085136087.a n = A134547 (n + 1)

end A134547

/-!
# A134548: a(1)=1, a(n) = 2 + maximal digit of Sum_{j=1..n-1} a(j).

The programs for A134548, the canonical program `A134548.P12181077314065941392` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134548 has offset 1).

The definition of A134548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1051 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134548.P12181077314065941392

`Δ[A095815(a(n-1))+A036453(n+1)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134548

/-- `Δ[A095815(a(n-1))+A036453(n+1)]` -/
def P12181077314065941392.Spec : Prop :=
  ∀ n, P12181077314065941392.a n = A134548 (n + 1)

theorem P12181077314065941392.correct : P12181077314065941392.Spec := by
  intro n
  simp only [A134548, Nat.add_sub_cancel]

end A134548

/-!
# A134554: Concatenate the terms of three copies of the Fibonacci sequence.

The programs for A134554, there is no canonical definition to state claims against.
-/

/-! ## A134554.P16953828885170671801

`37*A001414(A010098(n))`
-/

namespace A134554.P16953828885170671801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * A001414 (A010098 n).toNat

end

end A134554.P16953828885170671801

/-! ## A134554.P17076872473913335359

`A000045(n)*A265688(A249909(n))`
-/

namespace A134554.P17076872473913335359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A265688 (A249909 n).toNat

end

end A134554.P17076872473913335359

/-!
# A134555: Values of n for which there is no optimal-length continued fraction expansion for sqrt(n) which is also symmetric (palindromic).

The programs for A134555, there is no canonical definition to state claims against.
-/

/-! ## A134555.P1409358962049387436

`A031414(A031403(n+1)^A060361(n))`
-/

namespace A134555.P1409358962049387436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031414 (SequenceMachineLib.roundAway ((A031403 (n + 1) : ℚ) ^ (A060361 n : ℤ))).toNat

end

end A134555.P1409358962049387436

/-! ## A134555.P12384186333299436217

`A031414(C(A031403(n+1), A060361(n)))`
-/

namespace A134555.P12384186333299436217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031414 (Nat.choose (A031403 (n + 1)).toNat (A060361 n).toNat)

end

end A134555.P12384186333299436217

/-! ## A134555.P9366483575735034878

`A031414(A060361(n)²*A031403(n+1))`
-/

namespace A134555.P9366483575735034878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031414 (A060361 n ^ 2 * A031403 (n + 1)).toNat

end

end A134555.P9366483575735034878

/-! ## A134555.P1644918533908057669

`A031414(A031403(n+1)%A031400(n+4))`
-/

namespace A134555.P1644918533908057669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031414 (Int.tmod (A031403 (n + 1)) (A031400 (n + 4))).toNat

end

end A134555.P1644918533908057669

/-!
# A134557: Triangle multiplicatively decoded from A039716, the factorials of the prime numbers, read by rows.

The programs for A134557, there is no canonical definition to state claims against.
-/

/-! ## A134557.P3804133227078287553

`A071956(2*(n+1))`
-/

namespace A134557.P3804133227078287553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071956 (2 * (n + 1))

end

end A134557.P3804133227078287553

/-! ## A134557.P13322047632380386115

`A071956(A004277(n+1))%(n+2)`
-/

namespace A134557.P13322047632380386115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071956 (A004277 (n + 1)).toNat) (n + 2 : ℤ)

end

end A134557.P13322047632380386115

/-! ## A134557.P12152799523825443311

`val(A005145(n+1)!, A037126(n+1))`
-/

namespace A134557.P12152799523825443311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A005145 (n + 1)).toNat) (A037126 (n + 1)).toNat

end

end A134557.P12152799523825443311

/-! ## A134557.P10689939399185703750

`A071956(A004277(n+1))/A007318(∑[n])`
-/

namespace A134557.P10689939399185703750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071956 (A004277 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A134557.P10689939399185703750

/-! ## A134557.P2818106881932181355

`A071956(A004277(n+1))+val(A040600(n), 3)`
-/

namespace A134557.P2818106881932181355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071956 (A004277 (n + 1)).toNat + (SequenceMachineLib.valuation (A040600 n).toNat 3 : ℤ)

end

end A134557.P2818106881932181355

/-! ## A134557.P10792363065335598441

`A071956(A004277(n+1))+val(A023238(n+1), 3)`
-/

namespace A134557.P10792363065335598441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071956 (A004277 (n + 1)).toNat + (SequenceMachineLib.valuation (A023238 (n + 1)).toNat 3 : ℤ)

end

end A134557.P10792363065335598441

/-! ## A134557.P7092781059125499045

`A071956(A004277(n+1))+val(A256837(n+1), 3)`
-/

namespace A134557.P7092781059125499045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071956 (A004277 (n + 1)).toNat + (SequenceMachineLib.valuation (A256837 (n + 1)).toNat 3 : ℤ)

end

end A134557.P7092781059125499045

/-! ## A134557.P16408936980059405240

`A071956(A004277(n+1))+val(A287550(n+1), 3)`
-/

namespace A134557.P16408936980059405240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071956 (A004277 (n + 1)).toNat + (SequenceMachineLib.valuation (A287550 (n + 1)).toNat 3 : ℤ)

end

end A134557.P16408936980059405240

/-! ## A134557.P1781325792457297827

`A267142(A007913(n+1))+A071956(A004277(n+1))`
-/

namespace A134557.P1781325792457297827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A007913 (n + 1)).toNat + A071956 (A004277 (n + 1)).toNat

end

end A134557.P1781325792457297827

/-! ## A134557.P3827365925230676006

`A267142(A020639(n+1))+A071956(A004277(n+1))`
-/

namespace A134557.P3827365925230676006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A020639 (n + 1)).toNat + A071956 (A004277 (n + 1)).toNat

end

end A134557.P3827365925230676006

/-!
# A134558: Array read by antidiagonals, a(n,k) = gamma(n+1,k)*e^k, where gamma(n,k) is the upper incomplete gamma function and e is the exponential constant 2.71828...

The programs for A134558, there is no canonical definition to state claims against.
-/

/-! ## A134558.P1878984635634667439

`A080955(∑[2*n]%comp[∑[n]])`
-/

namespace A134558.P1878984635634667439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A134558.P1878984635634667439

/-! ## A134558.P11156762559771622634

`A080955(∑[char[∑[n]]]²-(n+1))`
-/

namespace A134558.P11156762559771622634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A134558.P11156762559771622634

/-! ## A134558.P14979271029145633026

`A089258(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A134558.P14979271029145633026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A134558.P14979271029145633026

/-! ## A134558.P6208483776944325126

`A089258(A380649(n+1))`
-/

namespace A134558.P6208483776944325126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (A380649 (n + 1)).toNat

end

end A134558.P6208483776944325126

/-! ## A134558.P13813681823577054267

`A089258(A099375(n)+n)`
-/

namespace A134558.P13813681823577054267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (A099375 n + (n : ℤ)).toNat

end

end A134558.P13813681823577054267

/-! ## A134558.P10609992180368043173

`A089258(A061579(comp[∑[n]]))`
-/

namespace A134558.P10609992180368043173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A134558.P10609992180368043173

/-! ## A134558.P6943821666469884344

`A089258(A038722(comp[∑[n]])-2)`
-/

namespace A134558.P6943821666469884344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (A038722 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2).toNat

end

end A134558.P6943821666469884344

/-! ## A134558.P8836985806113615374

`A089258(2*A025581(n)+1+n)`
-/

namespace A134558.P8836985806113615374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089258 (2 * A025581 n + 1 + (n : ℤ)).toNat

end

end A134558.P8836985806113615374

/-!
# A134559: Triangle read by rows: T(n,k) is the sum of the divisors of n that are >= k.

The programs for A134559, there is no canonical definition to state claims against.
-/

/-! ## A134559.P7423827806089134999

`A209281(A070933(n)+A003152(n+1))`
-/

namespace A134559.P7423827806089134999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (A070933 n + A003152 (n + 1)).toNat

end

end A134559.P7423827806089134999

/-!
# A134560: Triangle A051731 * A127775 (as infinite lower triangular matrices).

The programs for A134560, the canonical program `A134560.P13872332646358761664` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134560 has offset 1).

The definition of A134560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134560.P17436523520068306057

`floor((2*n+1)*(A176079(n+1)+1)/(n+1))`
-/

namespace A134560.P17436523520068306057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℤ) * (A176079 (n + 1) + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A134560.P17436523520068306057

namespace A134560

/-- `floor((2*n+1)*(A176079(n+1)+1)/(n+1))` -/
def P17436523520068306057.Spec : Prop :=
  ∀ n, P17436523520068306057.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P813962636081728868

`A004273(A127093(n+1))`
-/

namespace A134560.P813962636081728868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A127093 (n + 1)).toNat

end

end A134560.P813962636081728868

namespace A134560

/-- `A004273(A127093(n+1))` -/
def P813962636081728868.Spec : Prop :=
  ∀ n, P813962636081728868.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P183503569526313521

`A004273(A176079(n+1)+1)`
-/

namespace A134560.P183503569526313521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A176079 (n + 1) + 1).toNat

end

end A134560.P183503569526313521

namespace A134560

/-- `A004273(A176079(n+1)+1)` -/
def P183503569526313521.Spec : Prop :=
  ∀ n, P183503569526313521.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P13872332646358761664

`A014681(2*A127093(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134560

/-- `A014681(2*A127093(n+1))` -/
def P13872332646358761664.Spec : Prop :=
  ∀ n, P13872332646358761664.a n = A134560 (n + 1)

theorem P13872332646358761664.correct : P13872332646358761664.Spec := by
  intro n
  simp only [A134560, Nat.add_sub_cancel]

end A134560

/-! ## A134560.P9722153487312371877

`A051731(n+1)*A158405(n+1)`
-/

namespace A134560.P9722153487312371877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A158405 (n + 1)

end

end A134560.P9722153487312371877

namespace A134560

/-- `A051731(n+1)*A158405(n+1)` -/
def P9722153487312371877.Spec : Prop :=
  ∀ n, P9722153487312371877.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P15867195698902660085

`and(A130888(n+1), A158405(n+1))`
-/

namespace A134560.P15867195698902660085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A158405 (n + 1))

end

end A134560.P15867195698902660085

namespace A134560

/-- `and(A130888(n+1), A158405(n+1))` -/
def P15867195698902660085.Spec : Prop :=
  ∀ n, P15867195698902660085.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P6924549855077813378

`2*A127093(n+1)-A051731(n+1)`
-/

namespace A134560.P6924549855077813378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127093 (n + 1) - A051731 (n + 1)

end

end A134560.P6924549855077813378

namespace A134560

/-- `2*A127093(n+1)-A051731(n+1)` -/
def P6924549855077813378.Spec : Prop :=
  ∀ n, P6924549855077813378.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P14149309040019668067

`2*A129234(n+1)-A143315(n+1)`
-/

namespace A134560.P14149309040019668067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129234 (n + 1) - A143315 (n + 1)

end

end A134560.P14149309040019668067

namespace A134560

/-- `2*A129234(n+1)-A143315(n+1)` -/
def P14149309040019668067.Spec : Prop :=
  ∀ n, P14149309040019668067.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P13762039924570293086

`A014681(2*A002260(n+1)*A051731(n+1))`
-/

namespace A134560.P13762039924570293086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * (A002260 (n + 1) * A051731 (n + 1))).toNat

end

end A134560.P13762039924570293086

namespace A134560

/-- `A014681(2*A002260(n+1)*A051731(n+1))` -/
def P13762039924570293086.Spec : Prop :=
  ∀ n, P13762039924570293086.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P2622975413343155819

`A014681(2*A127651(n+1)/A123229(n+1))`
-/

namespace A134560.P2622975413343155819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway (2 * ((A127651 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ)))).toNat

end

end A134560.P2622975413343155819

namespace A134560

/-- `A014681(2*A127651(n+1)/A123229(n+1))` -/
def P2622975413343155819.Spec : Prop :=
  ∀ n, P2622975413343155819.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P2415861798789970513

`(A050873(n+1)+A002262(n))*A051731(n+1)`
-/

namespace A134560.P2415861798789970513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) + A002262 n) * A051731 (n + 1)

end

end A134560.P2415861798789970513

namespace A134560

/-- `(A050873(n+1)+A002262(n))*A051731(n+1)` -/
def P2415861798789970513.Spec : Prop :=
  ∀ n, P2415861798789970513.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P11121732172830265383

`A014681(2*A127651(n+1)/(A003057(n+2)-1))`
-/

namespace A134560.P11121732172830265383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway (2 * ((A127651 (n + 1) : ℚ) / (A003057 (n + 2) - 1 : ℚ)))).toNat

end

end A134560.P11121732172830265383

namespace A134560

/-- `A014681(2*A127651(n+1)/(A003057(n+2)-1))` -/
def P11121732172830265383.Spec : Prop :=
  ∀ n, P11121732172830265383.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P9796164629743717098

`A307662(n+1)+A176079(n+1)`
-/

namespace A134560.P9796164629743717098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307662 (n + 1) + A176079 (n + 1)

end

end A134560.P9796164629743717098

namespace A134560

/-- `A307662(n+1)+A176079(n+1)` -/
def P9796164629743717098.Spec : Prop :=
  ∀ n, P9796164629743717098.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P5843945552713971580

`A127093(n+1)+A307662(n+1)-1`
-/

namespace A134560.P5843945552713971580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) + (A307662 (n + 1) - 1)

end

end A134560.P5843945552713971580

namespace A134560

/-- `A127093(n+1)+A307662(n+1)-1` -/
def P5843945552713971580.Spec : Prop :=
  ∀ n, P5843945552713971580.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P5237022595297769850

`A000267(A127093(n+1)²)-1`
-/

namespace A134560.P5237022595297769850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A127093 (n + 1) ^ 2).toNat - 1

end

end A134560.P5237022595297769850

namespace A134560

/-- `A000267(A127093(n+1)²)-1` -/
def P5237022595297769850.Spec : Prop :=
  ∀ n, P5237022595297769850.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P5979339757770956645

`A055086(A134575(n+1))`
-/

namespace A134560.P5979339757770956645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A134575 (n + 1)).toNat

end

end A134560.P5979339757770956645

namespace A134560

/-- `A055086(A134575(n+1))` -/
def P5979339757770956645.Spec : Prop :=
  ∀ n, P5979339757770956645.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P3740533039302715529

`A055086(A127093(n+1)²)`
-/

namespace A134560.P3740533039302715529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A127093 (n + 1) ^ 2).toNat

end

end A134560.P3740533039302715529

namespace A134560

/-- `A055086(A127093(n+1)²)` -/
def P3740533039302715529.Spec : Prop :=
  ∀ n, P3740533039302715529.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P9727167264998291151

`A055086(A127093(n+1)*A127093(n+1))`
-/

namespace A134560.P9727167264998291151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A127093 (n + 1) * A127093 (n + 1)).toNat

end

end A134560.P9727167264998291151

namespace A134560

/-- `A055086(A127093(n+1)*A127093(n+1))` -/
def P9727167264998291151.Spec : Prop :=
  ∀ n, P9727167264998291151.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P16797297656392434001

`A003056(2*A127093(n+1)²)`
-/

namespace A134560.P16797297656392434001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A127093 (n + 1) ^ 2).toNat

end

end A134560.P16797297656392434001

namespace A134560

/-- `A003056(2*A127093(n+1)²)` -/
def P16797297656392434001.Spec : Prop :=
  ∀ n, P16797297656392434001.a n = A134560 (n + 1)

end A134560

/-! ## A134560.P9474565863765770405

`∑{d}[A143425(n+1), A006530(#)]`
-/

namespace A134560.P9474565863765770405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A134560.P9474565863765770405

namespace A134560

/-- `∑{d}[A143425(n+1), A006530(#)]` -/
def P9474565863765770405.Spec : Prop :=
  ∀ n, P9474565863765770405.a n = A134560 (n + 1)

end A134560

/-!
# A134561: Array T by antidiagonals: T(n,k) = k-th number whose Zeckendorf representation has exactly n terms.

The programs for A134561, there is no canonical definition to state claims against.
-/

/-! ## A134561.P6417331997141874322

`A048680(A067576(n+1))`
-/

namespace A134561.P6417331997141874322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A067576 (n + 1)).toNat

end

end A134561.P6417331997141874322

/-!
# A134562: Array T by antidiagonals: T(n,k) = k-th number whose formal base-3 representation has exactly n terms. ("Formal" means that all the nonzero coefficients are 1's.).

The programs for A134562, there is no canonical definition to state claims against.
-/

/-! ## A134562.P14034986112905765301

`A325984(A067576(n+1))`
-/

namespace A134562.P14034986112905765301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (A067576 (n + 1)).toNat

end

end A134562.P14034986112905765301

/-!
# A134565: Expansion of reversion of (x - 2*x^2) / (1 - x)^3.

The programs for A134565, the canonical program `A134565.P8199638910073155165` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134565 has offset 1).

The definition of A134565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134565.P8199638910073155165

`(-1)^n*A047749(ceil(sqrt(∑[2*n])))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A134565

/-- `(-1)^n*A047749(ceil(sqrt(∑[2*n])))` -/
def P8199638910073155165.Spec : Prop :=
  ∀ n, P8199638910073155165.a n = A134565 (n + 1)

theorem P8199638910073155165.correct : P8199638910073155165.Spec := by
  intro n
  simp only [A134565, Nat.add_sub_cancel]

end A134565

/-! ## A134565.P6182601694038510596

`A047749(n+1)/A033999(n)`
-/

namespace A134565.P6182601694038510596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047749 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A134565.P6182601694038510596

namespace A134565

/-- `A047749(n+1)/A033999(n)` -/
def P6182601694038510596.Spec : Prop :=
  ∀ n, P6182601694038510596.a n = (A134565 (n + 1) : ℚ)

end A134565

/-! ## A134565.P6784345847482950520

`A116637(n+1)/(2-A010673(n)²)`
-/

namespace A134565.P6784345847482950520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (n + 1) : ℚ) / (2 - A010673 n ^ 2 : ℚ)

end

end A134565.P6784345847482950520

namespace A134565

/-- `A116637(n+1)/(2-A010673(n)²)` -/
def P6784345847482950520.Spec : Prop :=
  ∀ n, P6784345847482950520.a n = (A134565 (n + 1) : ℚ)

end A134565

/-! ## A134565.P2975006122037308847

`A047749(n+1)/A099363(n)*A208355(n)`
-/

namespace A134565.P2975006122037308847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047749 (n + 1) : ℚ) / (A099363 n : ℚ) * (A208355 n : ℚ)

end

end A134565.P2975006122037308847

namespace A134565

/-- `A047749(n+1)/A099363(n)*A208355(n)` -/
def P2975006122037308847.Spec : Prop :=
  ∀ n, P2975006122037308847.a n = (A134565 (n + 1) : ℚ)

end A134565

/-! ## A134565.P15601280474778444214

`A099576(n)/∑[A157142(n)]`
-/

namespace A134565.P15601280474778444214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099576 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A134565.P15601280474778444214

namespace A134565

/-- `A099576(n)/∑[A157142(n)]` -/
def P15601280474778444214.Spec : Prop :=
  ∀ n, P15601280474778444214.a n = (A134565 (n + 1) : ℚ)

end A134565

/-! ## A134565.P11735340243892048697

`A099576(n)/Δ[A001057(n)]`
-/

namespace A134565.P11735340243892048697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099576 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A134565.P11735340243892048697

namespace A134565

/-- `A099576(n)/Δ[A001057(n)]` -/
def P11735340243892048697.Spec : Prop :=
  ∀ n, P11735340243892048697.a n = (A134565 (n + 1) : ℚ)

end A134565

/-! ## A134565.P16732854142250616190

`A099576(n)/A053122(∑[n])`
-/

namespace A134565.P16732854142250616190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099576 n : ℚ) / (A053122 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A134565.P16732854142250616190

namespace A134565

/-- `A099576(n)/A053122(∑[n])` -/
def P16732854142250616190.Spec : Prop :=
  ∀ n, P16732854142250616190.a n = (A134565 (n + 1) : ℚ)

end A134565

/-!
# A134566: a(n) = least m such that {-m*tau} > {n*tau}, where { } denotes fractional part and tau = (1 + sqrt(5))/2.

The programs for A134566, the canonical program `A134566.P16325399016545697471` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134566 has offset 1).

The definition of A134566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134566.P15815409989696444090

`A139764(comp[floor(ϕ*n)]-n)`
-/

namespace A134566.P15815409989696444090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A134566.P15815409989696444090

namespace A134566

/-- `A139764(comp[floor(ϕ*n)]-n)` -/
def P15815409989696444090.Spec : Prop :=
  ∀ n, P15815409989696444090.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P8714096925888678275

`A268361(A048297(n)+1)`
-/

namespace A134566.P8714096925888678275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A048297 n + 1).toNat

end

end A134566.P8714096925888678275

namespace A134566

/-- `A268361(A048297(n)+1)` -/
def P8714096925888678275.Spec : Prop :=
  ∀ n, P8714096925888678275.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P7675957867901789162

`A268361(A277335(n)+2)`
-/

namespace A134566.P7675957867901789162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A277335 n + 2).toNat

end

end A134566.P7675957867901789162

namespace A134566

/-- `A268361(A277335(n)+2)` -/
def P7675957867901789162.Spec : Prop :=
  ∀ n, P7675957867901789162.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P1648409344059916080

`A000045(A035614(floor(ϕ*floor((n+1)*ϕ²))+1))`
-/

namespace A134566.P1648409344059916080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035614 (⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ)⌋ + 1).toNat).toNat

end

end A134566.P1648409344059916080

namespace A134566

/-- `A000045(A035614(floor(ϕ*floor((n+1)*ϕ²))+1))` -/
def P1648409344059916080.Spec : Prop :=
  ∀ n, P1648409344059916080.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P6306629833311393497

`A238684(A035612(ceil(n-3-ϕ*xor(n, -1))+4))`
-/

namespace A134566.P6306629833311393497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238684 (A035612 (⌈((n : ℤ) - 3 : ℝ) - Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉ + 4).toNat).toNat

end

end A134566.P6306629833311393497

namespace A134566

/-- `A238684(A035612(ceil(n-3-ϕ*xor(n, -1))+4))` -/
def P6306629833311393497.Spec : Prop :=
  ∀ n, P6306629833311393497.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P10235028308226242297

`A000045(A141310(A035614(n)+2))`
-/

namespace A134566.P10235028308226242297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A141310 (A035614 n + 2).toNat).toNat

end

end A134566.P10235028308226242297

namespace A134566

/-- `A000045(A141310(A035614(n)+2))` -/
def P10235028308226242297.Spec : Prop :=
  ∀ n, P10235028308226242297.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P16325399016545697471

`A000045(A085058(record[A048724(n)+1]))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134566

/-- `A000045(A085058(record[A048724(n)+1]))` -/
def P16325399016545697471.Spec : Prop :=
  ∀ n, P16325399016545697471.a n = A134566 (n + 1)

theorem P16325399016545697471.correct : P16325399016545697471.Spec := by
  intro n
  simp only [A134566, Nat.add_sub_cancel]

end A134566

/-! ## A134566.P3094125405014636969

`A000045(A035612(A001950(n+1)+1))`
-/

namespace A134566.P3094125405014636969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035612 (A001950 (n + 1) + 1).toNat).toNat

end

end A134566.P3094125405014636969

namespace A134566

/-- `A000045(A035612(A001950(n+1)+1))` -/
def P3094125405014636969.Spec : Prop :=
  ∀ n, P3094125405014636969.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P3126073502819925679

`A000045(A035614(A001950(n+1))+1)`
-/

namespace A134566.P3126073502819925679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035614 (A001950 (n + 1)).toNat + 1).toNat

end

end A134566.P3126073502819925679

namespace A134566

/-- `A000045(A035614(A001950(n+1))+1)` -/
def P3126073502819925679.Spec : Prop :=
  ∀ n, P3126073502819925679.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P12622240742549893080

`A000045(A035614(A000201(n+1))+2)`
-/

namespace A134566.P12622240742549893080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035614 (A000201 (n + 1)).toNat + 2).toNat

end

end A134566.P12622240742549893080

namespace A134566

/-- `A000045(A035614(A000201(n+1))+2)` -/
def P12622240742549893080.Spec : Prop :=
  ∀ n, P12622240742549893080.a n = A134566 (n + 1)

end A134566

/-! ## A134566.P7878524621684538744

`A022290(A129761(A022342(A022342(n+2))))`
-/

namespace A134566.P7878524621684538744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A129761 (A022342 (A022342 (n + 2)).toNat).toNat).toNat

end

end A134566.P7878524621684538744

namespace A134566

/-- `A022290(A129761(A022342(A022342(n+2))))` -/
def P7878524621684538744.Spec : Prop :=
  ∀ n, P7878524621684538744.a n = A134566 (n + 1)

end A134566

/-!
# A134567: a(n) = least m such that {-m*tau} < {n*tau}, where { } denotes fractional part and tau = (1 + sqrt(5))/2.

The programs for A134567, the canonical program `A134567.P10821418209061694962` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134567 has offset 1).

The definition of A134567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134567.P2731340976335252870

`A139764(floor(ϕ*(n+1)))`
-/

namespace A134567.P2731340976335252870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

end

end A134567.P2731340976335252870

namespace A134567

/-- `A139764(floor(ϕ*(n+1)))` -/
def P2731340976335252870.Spec : Prop :=
  ∀ n, P2731340976335252870.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P10821418209061694962

`A000045(val(record[xor(n, 2*n)+1], 2)+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134567

/-- `A000045(val(record[xor(n, 2*n)+1], 2)+2)` -/
def P10821418209061694962.Spec : Prop :=
  ∀ n, P10821418209061694962.a n = A134567 (n + 1)

theorem P10821418209061694962.correct : P10821418209061694962.Spec := by
  intro n
  simp only [A134567, Nat.add_sub_cancel]

end A134567

/-! ## A134567.P17385081648689673436

`A268361(A048297(n))`
-/

namespace A134567.P17385081648689673436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A048297 n).toNat

end

end A134567.P17385081648689673436

namespace A134567

/-- `A268361(A048297(n))` -/
def P17385081648689673436.Spec : Prop :=
  ∀ n, P17385081648689673436.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P9690916454237002688

`A329130(A139764(n+1))`
-/

namespace A134567.P9690916454237002688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 (A139764 (n + 1)).toNat

end

end A134567.P9690916454237002688

namespace A134567

/-- `A329130(A139764(n+1))` -/
def P9690916454237002688.Spec : Prop :=
  ∀ n, P9690916454237002688.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P8204015319081609221

`A268361(A277335(n)+1)`
-/

namespace A134567.P8204015319081609221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A277335 n + 1).toNat

end

end A134567.P8204015319081609221

namespace A134567

/-- `A268361(A277335(n)+1)` -/
def P8204015319081609221.Spec : Prop :=
  ∀ n, P8204015319081609221.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P3585033774372446212

`A000045(val(A048297(n), 2)+2)`
-/

namespace A134567.P3585033774372446212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A048297 n).toNat 2 + 2)

end

end A134567.P3585033774372446212

namespace A134567

/-- `A000045(val(A048297(n), 2)+2)` -/
def P3585033774372446212.Spec : Prop :=
  ∀ n, P3585033774372446212.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P3044896559575152205

`filter[A139764(n+1), A078588(#)]`
-/

namespace A134567.P3044896559575152205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078588 (f1 j).toNat = 1) n)

end

end A134567.P3044896559575152205

namespace A134567

/-- `filter[A139764(n+1), A078588(#)]` -/
def P3044896559575152205.Spec : Prop :=
  ∀ n, P3044896559575152205.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P5193721236631351989

`filter[A139764(n+1), A096270(#)]`
-/

namespace A134567.P5193721236631351989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A134567.P5193721236631351989

namespace A134567

/-- `filter[A139764(n+1), A096270(#)]` -/
def P5193721236631351989.Spec : Prop :=
  ∀ n, P5193721236631351989.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P5536326587476505763

`filter[A139764(n+1), A114986(#)]`
-/

namespace A134567.P5536326587476505763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114986 (f1 j).toNat = 1) n)

end

end A134567.P5536326587476505763

namespace A134567

/-- `filter[A139764(n+1), A114986(#)]` -/
def P5536326587476505763.Spec : Prop :=
  ∀ n, P5536326587476505763.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P11836367511764489226

`filter[A139764(n+1), A187948(#)]`
-/

namespace A134567.P11836367511764489226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187948 (f1 j).toNat = 1) n)

end

end A134567.P11836367511764489226

namespace A134567

/-- `filter[A139764(n+1), A187948(#)]` -/
def P11836367511764489226.Spec : Prop :=
  ∀ n, P11836367511764489226.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P10956408545570076195

`filter[A139764(n+1), A187950(#)]`
-/

namespace A134567.P10956408545570076195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187950 (f1 j).toNat = 1) n)

end

end A134567.P10956408545570076195

namespace A134567

/-- `filter[A139764(n+1), A187950(#)]` -/
def P10956408545570076195.Spec : Prop :=
  ∀ n, P10956408545570076195.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P15869955365591419870

`filter[A139764(n+1), A188433(#)]`
-/

namespace A134567.P15869955365591419870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188433 (f1 j).toNat = 1) n)

end

end A134567.P15869955365591419870

namespace A134567

/-- `filter[A139764(n+1), A188433(#)]` -/
def P15869955365591419870.Spec : Prop :=
  ∀ n, P15869955365591419870.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P5108542704255869683

`filter[A139764(n+1), A188467(#)]`
-/

namespace A134567.P5108542704255869683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A134567.P5108542704255869683

namespace A134567

/-- `filter[A139764(n+1), A188467(#)]` -/
def P5108542704255869683.Spec : Prop :=
  ∀ n, P5108542704255869683.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P1866812542014474934

`A000045(A035612(comp[floor(ϕ*n)]))`
-/

namespace A134567.P1866812542014474934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A134567.P1866812542014474934

namespace A134567

/-- `A000045(A035612(comp[floor(ϕ*n)]))` -/
def P1866812542014474934.Spec : Prop :=
  ∀ n, P1866812542014474934.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P9740533021058341021

`or(char[1], A139764(A000201(n+1)))`
-/

namespace A134567.P9740533021058341021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A139764 (A000201 (n + 1)).toNat)

end

end A134567.P9740533021058341021

namespace A134567

/-- `or(char[1], A139764(A000201(n+1)))` -/
def P9740533021058341021.Spec : Prop :=
  ∀ n, P9740533021058341021.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P16552058239420328920

`A000045(A085058(record[xor(n, 2*n)]))`
-/

namespace A134567.P16552058239420328920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A134567.P16552058239420328920

namespace A134567

/-- `A000045(A085058(record[xor(n, 2*n)]))` -/
def P16552058239420328920.Spec : Prop :=
  ∀ n, P16552058239420328920.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P4553539009838589475

`A000045(A035614(2*floor(ϕ*(n+1))+n))`
-/

namespace A134567.P4553539009838589475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035614 (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)).toNat).toNat

end

end A134567.P4553539009838589475

namespace A134567

/-- `A000045(A035614(2*floor(ϕ*(n+1))+n))` -/
def P4553539009838589475.Spec : Prop :=
  ∀ n, P4553539009838589475.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P997743582709626034

`A000045(A085058(A277335(n)))`
-/

namespace A134567.P997743582709626034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 (A277335 n).toNat).toNat

end

end A134567.P997743582709626034

namespace A134567

/-- `A000045(A085058(A277335(n)))` -/
def P997743582709626034.Spec : Prop :=
  ∀ n, P997743582709626034.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P9633431376912000402

`A000045(A085058(record[A048724(n)]))`
-/

namespace A134567.P9633431376912000402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A134567.P9633431376912000402

namespace A134567

/-- `A000045(A085058(record[A048724(n)]))` -/
def P9633431376912000402.Spec : Prop :=
  ∀ n, P9633431376912000402.a n = A134567 (n + 1)

end A134567

/-! ## A134567.P5842376592747561321

`A022290(A129761(A003622(n+1)))`
-/

namespace A134567.P5842376592747561321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A129761 (A003622 (n + 1)).toNat).toNat

end

end A134567.P5842376592747561321

namespace A134567

/-- `A022290(A129761(A003622(n+1)))` -/
def P5842376592747561321.Spec : Prop :=
  ∀ n, P5842376592747561321.a n = A134567 (n + 1)

end A134567

/-!
# A134568: a(n) = least m such that {-m*r} > {n*r}, where { } denotes fractional part and r = sqrt(2).

The programs for A134568, there is no canonical definition to state claims against.
-/

/-! ## A134568.P1921474519033450058

`A026741(gcd(A158251(n+1), A329361(3*n)))`
-/

namespace A134568.P1921474519033450058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (A158251 (n + 1)) (A329361 (3 * n)))

end

end A134568.P1921474519033450058

/-!
# A134569: a(n) = least m such that {-m*r} < {n*r}, where { } denotes fractional part and r = sqrt(2).

The programs for A134569, there is no canonical definition to state claims against.
-/

/-! ## A134569.P5387417610743906247

`A005206(p?[A004396(A134568(n+1))])`
-/

namespace A134569.P5387417610743906247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A134568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A134569.P5387417610743906247

/-! ## A134569.P8939236648316212343

`A237593(A307128(n)+A094464(n+2))`
-/

namespace A134569.P8939236648316212343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A307128 n + A094464 (n + 2)).toNat

end

end A134569.P8939236648316212343

/-!
# A134570: Array T(n,k) by antidiagonals; T(n,k) = position in row n of k-th occurrence of the Fibonacci number F(2n+1) in A134566.

The programs for A134570, there is no canonical definition to state claims against.
-/

/-! ## A134570.P15294892866032017468

`A002251(A134571(n+1))`
-/

namespace A134570.P15294892866032017468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A134571 (n + 1)).toNat

end

end A134570.P15294892866032017468

/-!
# A134571: Array T(n,k) by antidiagonals; T(n,k) = position in row n of k-th occurrence of the Fibonacci number F(2n) in A134567.

The programs for A134571, there is no canonical definition to state claims against.
-/

/-! ## A134571.P2681118350060943889

`A080164(∑[char[∑[n]]]²-n)`
-/

namespace A134571.P2681118350060943889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080164 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A134571.P2681118350060943889

/-! ## A134571.P11961165975320098742

`A002251(A134570(n+1))`
-/

namespace A134571.P11961165975320098742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A134570 (n + 1)).toNat

end

end A134571.P11961165975320098742

/-! ## A134571.P15144862106253619993

`A080164(A038722(n+1))^ceil(acot(n))`
-/

namespace A134571.P15144862106253619993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080164 (A038722 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A134571.P15144862106253619993

/-! ## A134571.P28246503473375701

`A326292(n)+A080164(A038722(n+1))`
-/

namespace A134571.P28246503473375701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A080164 (A038722 (n + 1)).toNat

end

end A134571.P28246503473375701

/-! ## A134571.P17754056429521352704

`A080164(A038722(n+1))%A080132(n)`
-/

namespace A134571.P17754056429521352704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080164 (A038722 (n + 1)).toNat) (A080132 n)

end

end A134571.P17754056429521352704

/-!
# A134572: Prime numbers p for which there is exactly one root x of x^3 - x - 1 in F_p and x is a primitive root mod p.

The programs for A134572, there is no canonical definition to state claims against.
-/

/-! ## A134572.P7436242591637214949

`∩[A191065(n+1), A293200(n+1)]`
-/

namespace A134572.P7436242591637214949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134572.P7436242591637214949

/-! ## A134572.P11410440424263079033

`∩[A278579(n+1), A293200(n+1)]`
-/

namespace A134572.P11410440424263079033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134572.P11410440424263079033

/-!
# A134573: Prime numbers for which there is a complete Padovan sequence in F_p and f(X) has three distinct roots.

The programs for A134573, there is no canonical definition to state claims against.
-/

/-! ## A134573.P11344253662777405857

`p?[A104217(A191021(n+1))+1]`
-/

namespace A134573.P11344253662777405857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104217 (A191021 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A134573.P11344253662777405857

/-! ## A134573.P16011273038728606960

`∩[A191021(n+1), A293200(n+1)]`
-/

namespace A134573.P16011273038728606960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134573.P16011273038728606960

/-! ## A134573.P1148516860152839096

`∩[A278580(n+1), A293200(n+1)]`
-/

namespace A134573.P1148516860152839096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134573.P1148516860152839096

/-! ## A134573.P11687548522015171294

`∩[A293200(n+1), A372898(n+1)]`
-/

namespace A134573.P11687548522015171294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134573.P11687548522015171294

/-! ## A134573.P10392322214221234833

`∩[A293200(n+1), A033217(n+2)]`
-/

namespace A134573.P10392322214221234833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134573.P10392322214221234833

/-!
# A134574: Array, a(n,k) = total size of all n-length words on a k-letter alphabet, read by antidiagonals.

The programs for A134574, the canonical program `A134574.P11181354774624553739` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134574 has offset 1).

The definition of A134574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134574.P18286287597002354206

`A003991(n+1)*A009998(n)`
-/

namespace A134574.P18286287597002354206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A009998 n

end

end A134574.P18286287597002354206

namespace A134574

/-- `A003991(n+1)*A009998(n)` -/
def P18286287597002354206.Spec : Prop :=
  ∀ n, P18286287597002354206.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P1159558507116457620

`A004736(n+1)*A051129(n+1)`
-/

namespace A134574.P1159558507116457620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A051129 (n + 1)

end

end A134574.P1159558507116457620

namespace A134574

/-- `A004736(n+1)*A051129(n+1)` -/
def P1159558507116457620.Spec : Prop :=
  ∀ n, P1159558507116457620.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P12818417313810379472

`(A025581(n)+1)*A051129(n+1)`
-/

namespace A134574.P12818417313810379472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A051129 (n + 1)

end

end A134574.P12818417313810379472

namespace A134574

/-- `(A025581(n)+1)*A051129(n+1)` -/
def P12818417313810379472.Spec : Prop :=
  ∀ n, P12818417313810379472.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P11214999723545433693

`A002260(n+1)*A104002(n+2)`
-/

namespace A134574.P11214999723545433693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A104002 (n + 2)

end

end A134574.P11214999723545433693

namespace A134574

/-- `A002260(n+1)*A104002(n+2)` -/
def P11214999723545433693.Spec : Prop :=
  ∀ n, P11214999723545433693.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P18425587450639017001

`sqrt(A055461(n+1))*A051129(n+1)`
-/

namespace A134574.P18425587450639017001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) * (A051129 (n + 1) : ℝ)

end

end A134574.P18425587450639017001

namespace A134574

/-- `sqrt(A055461(n+1))*A051129(n+1)` -/
def P18425587450639017001.Spec : Prop :=
  ∀ n, P18425587450639017001.a n = (A134574 (n + 1) : ℝ)

end A134574

/-! ## A134574.P15319820389450083583

`A002260(A278818(n))*A051129(n+1)`
-/

namespace A134574.P15319820389450083583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A278818 n).toNat * A051129 (n + 1)

end

end A134574.P15319820389450083583

namespace A134574

/-- `A002260(A278818(n))*A051129(n+1)` -/
def P15319820389450083583.Spec : Prop :=
  ∀ n, P15319820389450083583.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P12777011131136053786

`A002260(A038722(n+1))*A051129(n+1)`
-/

namespace A134574.P12777011131136053786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A051129 (n + 1)

end

end A134574.P12777011131136053786

namespace A134574

/-- `A002260(A038722(n+1))*A051129(n+1)` -/
def P12777011131136053786.Spec : Prop :=
  ∀ n, P12777011131136053786.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P11181354774624553739

`A004736(n+1)*A051128(A038722(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A134574

/-- `A004736(n+1)*A051128(A038722(n+1))` -/
def P11181354774624553739.Spec : Prop :=
  ∀ n, P11181354774624553739.a n = A134574 (n + 1)

theorem P11181354774624553739.correct : P11181354774624553739.Spec := by
  intro n
  simp only [A134574, Nat.add_sub_cancel]

end A134574

/-! ## A134574.P348074718748606594

`A051128(n+1)/A009999(n)*A051129(n+1)`
-/

namespace A134574.P348074718748606594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) : ℚ) / (A009999 n : ℚ) * (A051129 (n + 1) : ℚ)

end

end A134574.P348074718748606594

namespace A134574

/-- `A051128(n+1)/A009999(n)*A051129(n+1)` -/
def P348074718748606594.Spec : Prop :=
  ∀ n, P348074718748606594.a n = (A134574 (n + 1) : ℚ)

end A134574

/-! ## A134574.P8440813461852067921

`(A156353(n+1)-A051128(n+1))*A004736(n+1)`
-/

namespace A134574.P8440813461852067921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156353 (n + 1) - A051128 (n + 1)) * A004736 (n + 1)

end

end A134574.P8440813461852067921

namespace A134574

/-- `(A156353(n+1)-A051128(n+1))*A004736(n+1)` -/
def P8440813461852067921.Spec : Prop :=
  ∀ n, P8440813461852067921.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P4532960672526374998

`A009999(A014132(n+1))/A009999(n)*A051129(n+1)`
-/

namespace A134574.P4532960672526374998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009999 (A014132 (n + 1)).toNat : ℚ) / (A009999 n : ℚ) * (A051129 (n + 1) : ℚ)

end

end A134574.P4532960672526374998

namespace A134574

/-- `A009999(A014132(n+1))/A009999(n)*A051129(n+1)` -/
def P4532960672526374998.Spec : Prop :=
  ∀ n, P4532960672526374998.a n = (A134574 (n + 1) : ℚ)

end A134574

/-! ## A134574.P12465068034168689679

`(A051128(n+1)-A220417(n+1))*A004736(n+1)`
-/

namespace A134574.P12465068034168689679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051128 (n + 1) - A220417 (n + 1)) * A004736 (n + 1)

end

end A134574.P12465068034168689679

namespace A134574

/-- `(A051128(n+1)-A220417(n+1))*A004736(n+1)` -/
def P12465068034168689679.Spec : Prop :=
  ∀ n, P12465068034168689679.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P11937477019549639731

`A000005(A130321(n))*A051129(n+1)`
-/

namespace A134574.P11937477019549639731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A051129 (n + 1)

end

end A134574.P11937477019549639731

namespace A134574

/-- `A000005(A130321(n))*A051129(n+1)` -/
def P11937477019549639731.Spec : Prop :=
  ∀ n, P11937477019549639731.a n = A134574 (n + 1)

end A134574

/-! ## A134574.P2349901950211864961

`A051129(n+1)/A290518(n)*A290518(n+1)`
-/

namespace A134574.P2349901950211864961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℚ) / (A290518 n : ℚ) * (A290518 (n + 1) : ℚ)

end

end A134574.P2349901950211864961

namespace A134574

/-- `A051129(n+1)/A290518(n)*A290518(n+1)` -/
def P2349901950211864961.Spec : Prop :=
  ∀ n, P2349901950211864961.a n = (A134574 (n + 1) : ℚ)

end A134574

/-!
# A134575: Triangle read by rows: T(n,k) = k^2*A051731(n,k).

The programs for A134575, the canonical program `A134575.P10268793143717734569` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134575 has offset 1).

The definition of A134575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134575.P10268793143717734569

`A127093(n+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A134575

/-- `A127093(n+1)²` -/
def P10268793143717734569.Spec : Prop :=
  ∀ n, P10268793143717734569.a n = A134575 (n + 1)

theorem P10268793143717734569.correct : P10268793143717734569.Spec := by
  intro n
  simp only [A134575, Nat.add_sub_cancel]

end A134575

/-! ## A134575.P1404946307239357512

`(A176079(n+1)+1)²`
-/

namespace A134575.P1404946307239357512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176079 (n + 1) + 1) ^ 2

end

end A134575.P1404946307239357512

namespace A134575

/-- `(A176079(n+1)+1)²` -/
def P1404946307239357512.Spec : Prop :=
  ∀ n, P1404946307239357512.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P10128345171208713985

`A127093(C(n+1, n))^2`
-/

namespace A134575.P10128345171208713985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (Nat.choose (n + 1) n) ^ 2

end

end A134575.P10128345171208713985

namespace A134575

/-- `A127093(C(n+1, n))^2` -/
def P10128345171208713985.Spec : Prop :=
  ∀ n, P10128345171208713985.a n = A134575 (n + 1)

theorem P10128345171208713985.correct : P10128345171208713985.Spec := by
  intro n
  simp only [A134575, Nat.add_sub_cancel, A134575.P10128345171208713985.a, A134575.P10268793143717734569.a, SequenceMachineLib.memo_apply]
  try simp

end A134575

/-! ## A134575.P9119154294488675583

`ceil(A134560(n+1)/2)²`
-/

namespace A134575.P9119154294488675583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134560 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A134575.P9119154294488675583

namespace A134575

/-- `ceil(A134560(n+1)/2)²` -/
def P9119154294488675583.Spec : Prop :=
  ∀ n, P9119154294488675583.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P11311892182894016437

`A127093(-xor(n, -1))^2`
-/

namespace A134575.P11311892182894016437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A134575.P11311892182894016437

namespace A134575

/-- `A127093(-xor(n, -1))^2` -/
def P11311892182894016437.Spec : Prop :=
  ∀ n, P11311892182894016437.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P10776587679162170595

`A127093(Δ[n²]-n)^2`
-/

namespace A134575.P10776587679162170595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A134575.P10776587679162170595

namespace A134575

/-- `A127093(Δ[n²]-n)^2` -/
def P10776587679162170595.Spec : Prop :=
  ∀ n, P10776587679162170595.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P12580581908127145961

`A135276(A134560(n+1))`
-/

namespace A134575.P12580581908127145961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 (A134560 (n + 1)).toNat

end

end A134575.P12580581908127145961

namespace A134575

/-- `A135276(A134560(n+1))` -/
def P12580581908127145961.Spec : Prop :=
  ∀ n, P12580581908127145961.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P8900381687493057907

`A230980(A127639(n+1))²`
-/

namespace A134575.P8900381687493057907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A127639 (n + 1)).toNat ^ 2

end

end A134575.P8900381687493057907

namespace A134575

/-- `A230980(A127639(n+1))²` -/
def P8900381687493057907.Spec : Prop :=
  ∀ n, P8900381687493057907.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P5174232359663680813

`A002620(2*A127093(n+1))`
-/

namespace A134575.P5174232359663680813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A127093 (n + 1)).toNat

end

end A134575.P5174232359663680813

namespace A134575

/-- `A002620(2*A127093(n+1))` -/
def P5174232359663680813.Spec : Prop :=
  ∀ n, P5174232359663680813.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P9448344786735749045

`A008794(2*A127093(n+1))`
-/

namespace A134575.P9448344786735749045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A127093 (n + 1)).toNat

end

end A134575.P9448344786735749045

namespace A134575

/-- `A008794(2*A127093(n+1))` -/
def P9448344786735749045.Spec : Prop :=
  ∀ n, P9448344786735749045.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P4768627685172789290

`A000290(A127093(C(n+1, n)))`
-/

namespace A134575.P4768627685172789290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A127093 (Nat.choose (n + 1) n)).toNat

end

end A134575.P4768627685172789290

namespace A134575

/-- `A000290(A127093(C(n+1, n)))` -/
def P4768627685172789290.Spec : Prop :=
  ∀ n, P4768627685172789290.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P14892491762468254265

`(A191910(n+1)+A023532(n))²`
-/

namespace A134575.P14892491762468254265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A191910 (n + 1) + A023532 n) ^ 2

end

end A134575.P14892491762468254265

namespace A134575

/-- `(A191910(n+1)+A023532(n))²` -/
def P14892491762468254265.Spec : Prop :=
  ∀ n, P14892491762468254265.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P14020587760666928840

`gcd(A103516(n), A176891(n+1))²`
-/

namespace A134575.P14020587760666928840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103516 n) (A176891 (n + 1)) ^ 2

end

end A134575.P14020587760666928840

namespace A134575

/-- `gcd(A103516(n), A176891(n+1))²` -/
def P14020587760666928840.Spec : Prop :=
  ∀ n, (P14020587760666928840.a n : ℤ) = A134575 (n + 1)

end A134575

/-! ## A134575.P10187401033394512636

`and(A130888(n+1), A134199(n))²`
-/

namespace A134575.P10187401033394512636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A134199 n) ^ 2

end

end A134575.P10187401033394512636

namespace A134575

/-- `and(A130888(n+1), A134199(n))²` -/
def P10187401033394512636.Spec : Prop :=
  ∀ n, P10187401033394512636.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P10029331382668424544

`A131118(4*A127093(n+1)+1)`
-/

namespace A134575.P10029331382668424544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131118 (4 * A127093 (n + 1) + 1).toNat

end

end A134575.P10029331382668424544

namespace A134575

/-- `A131118(4*A127093(n+1)+1)` -/
def P10029331382668424544.Spec : Prop :=
  ∀ n, P10029331382668424544.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P16934042099836008881

`A002260(n+1)*A127093(n+1)`
-/

namespace A134575.P16934042099836008881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127093 (n + 1)

end

end A134575.P16934042099836008881

namespace A134575

/-- `A002260(n+1)*A127093(n+1)` -/
def P16934042099836008881.Spec : Prop :=
  ∀ n, P16934042099836008881.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P16517890405202219731

`(A002262(n)+1)*A127093(n+1)`
-/

namespace A134575.P16517890405202219731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A127093 (n + 1)

end

end A134575.P16517890405202219731

namespace A134575

/-- `(A002262(n)+1)*A127093(n+1)` -/
def P16517890405202219731.Spec : Prop :=
  ∀ n, P16517890405202219731.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P12903688429562431089

`A050873(n+1)*A127093(n+1)`
-/

namespace A134575.P12903688429562431089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127093 (n + 1)

end

end A134575.P12903688429562431089

namespace A134575

/-- `A050873(n+1)*A127093(n+1)` -/
def P12903688429562431089.Spec : Prop :=
  ∀ n, P12903688429562431089.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P15260188407410544203

`A051731(n+1)*A133819(n+1)`
-/

namespace A134575.P15260188407410544203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A133819 (n + 1)

end

end A134575.P15260188407410544203

namespace A134575

/-- `A051731(n+1)*A133819(n+1)` -/
def P15260188407410544203.Spec : Prop :=
  ∀ n, P15260188407410544203.a n = A134575 (n + 1)

end A134575

/-! ## A134575.P7423902209639265060

`A123275(n+1)*A127093(n+1)`
-/

namespace A134575.P7423902209639265060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127093 (n + 1)

end

end A134575.P7423902209639265060

namespace A134575

/-- `A123275(n+1)*A127093(n+1)` -/
def P7423902209639265060.Spec : Prop :=
  ∀ n, P7423902209639265060.a n = A134575 (n + 1)

end A134575

/-!
# A134576: Triangle read by rows: T(n,k) = n^2*A051731(n,k).

The programs for A134576, the canonical program `A134576.P2013391426293502039` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134576 has offset 1).

The definition of A134576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134576.P2013391426293502039

`A127446(n+1)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134576

/-- `A127446(n+1)²` -/
def P2013391426293502039.Spec : Prop :=
  ∀ n, P2013391426293502039.a n = A134576 (n + 1)

theorem P2013391426293502039.correct : P2013391426293502039.Spec := by
  intro n
  simp only [A134576, Nat.add_sub_cancel]

end A134576

/-! ## A134576.P4475199067340586766

`(∑[char[∑[n]]]*A051731(n+1))²`
-/

namespace A134576.P4475199067340586766
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A051731 (n + 1)) ^ 2

end

end A134576.P4475199067340586766

namespace A134576

/-- `(∑[char[∑[n]]]*A051731(n+1))²` -/
def P4475199067340586766.Spec : Prop :=
  ∀ n, P4475199067340586766.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P2576480142954266694

`lcm(∑[char[∑[n]]], A126988(n+1))²`
-/

namespace A134576.P2576480142954266694
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A126988 (n + 1)) ^ 2

end

end A134576.P2576480142954266694

namespace A134576

/-- `lcm(∑[char[∑[n]]], A126988(n+1))²` -/
def P2576480142954266694.Spec : Prop :=
  ∀ n, (P2576480142954266694.a n : ℤ) = A134576 (n + 1)

end A134576

/-! ## A134576.P2650384824053842670

`lcm(∑[char[∑[n]]]², A127093(n+1))`
-/

namespace A134576.P2650384824053842670
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A127093 (n + 1))

end

end A134576.P2650384824053842670

namespace A134576

/-- `lcm(∑[char[∑[n]]]², A127093(n+1))` -/
def P2650384824053842670.Spec : Prop :=
  ∀ n, (P2650384824053842670.a n : ℤ) = A134576 (n + 1)

end A134576

/-! ## A134576.P5082073395028439013

`lcm(A093995(n+1), A129555(n))`
-/

namespace A134576.P5082073395028439013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093995 (n + 1)) (A129555 n)

end

end A134576.P5082073395028439013

namespace A134576

/-- `lcm(A093995(n+1), A129555(n))` -/
def P5082073395028439013.Spec : Prop :=
  ∀ n, (P5082073395028439013.a n : ℤ) = A134576 (n + 1)

end A134576

/-! ## A134576.P10476024645996065144

`A002024(n+1)*A127446(n+1)`
-/

namespace A134576.P10476024645996065144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A127446 (n + 1)

end

end A134576.P10476024645996065144

namespace A134576

/-- `A002024(n+1)*A127446(n+1)` -/
def P10476024645996065144.Spec : Prop :=
  ∀ n, P10476024645996065144.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P4454171021562251689

`A010766(n+1)*A127651(n+1)`
-/

namespace A134576.P4454171021562251689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127651 (n + 1)

end

end A134576.P4454171021562251689

namespace A134576

/-- `A010766(n+1)*A127651(n+1)` -/
def P4454171021562251689.Spec : Prop :=
  ∀ n, P4454171021562251689.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P3941111204907071435

`A002260(n+1)*A143311(n+1)`
-/

namespace A134576.P3941111204907071435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A143311 (n + 1)

end

end A134576.P3941111204907071435

namespace A134576

/-- `A002260(n+1)*A143311(n+1)` -/
def P3941111204907071435.Spec : Prop :=
  ∀ n, P3941111204907071435.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P8563210104667203754

`A051731(n+1)*A093995(n+1)`
-/

namespace A134576.P8563210104667203754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A093995 (n + 1)

end

end A134576.P8563210104667203754

namespace A134576

/-- `A051731(n+1)*A093995(n+1)` -/
def P8563210104667203754.Spec : Prop :=
  ∀ n, P8563210104667203754.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P131199034306715259

`A049840(n+1)*A127446(n+1)`
-/

namespace A134576.P131199034306715259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049840 (n + 1) * A127446 (n + 1)

end

end A134576.P131199034306715259

namespace A134576

/-- `A049840(n+1)*A127446(n+1)` -/
def P131199034306715259.Spec : Prop :=
  ∀ n, P131199034306715259.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P8397985519776127288

`A049834(n+1)*A127651(n+1)`
-/

namespace A134576.P8397985519776127288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (n + 1) * A127651 (n + 1)

end

end A134576.P8397985519776127288

namespace A134576

/-- `A049834(n+1)*A127651(n+1)` -/
def P8397985519776127288.Spec : Prop :=
  ∀ n, P8397985519776127288.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P4074479895260504299

`A051173(n+1)*A127446(n+1)`
-/

namespace A134576.P4074479895260504299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1) * A127446 (n + 1)

end

end A134576.P4074479895260504299

namespace A134576

/-- `A051173(n+1)*A127446(n+1)` -/
def P4074479895260504299.Spec : Prop :=
  ∀ n, P4074479895260504299.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P16278362093843127464

`A051537(n+1)*A127651(n+1)`
-/

namespace A134576.P16278362093843127464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (n + 1) * A127651 (n + 1)

end

end A134576.P16278362093843127464

namespace A134576

/-- `A051537(n+1)*A127651(n+1)` -/
def P16278362093843127464.Spec : Prop :=
  ∀ n, P16278362093843127464.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P1092345778652349885

`A054531(n+1)*A127651(n+1)`
-/

namespace A134576.P1092345778652349885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) * A127651 (n + 1)

end

end A134576.P1092345778652349885

namespace A134576

/-- `A054531(n+1)*A127651(n+1)` -/
def P1092345778652349885.Spec : Prop :=
  ∀ n, P1092345778652349885.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P14394984961012877508

`A059026(n+1)*A127651(n+1)`
-/

namespace A134576.P14394984961012877508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (n + 1) * A127651 (n + 1)

end

end A134576.P14394984961012877508

namespace A134576

/-- `A059026(n+1)*A127651(n+1)` -/
def P14394984961012877508.Spec : Prop :=
  ∀ n, P14394984961012877508.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P1013193677126287819

`A050873(n+1)*A143311(n+1)`
-/

namespace A134576.P1013193677126287819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A143311 (n + 1)

end

end A134576.P1013193677126287819

namespace A134576

/-- `A050873(n+1)*A143311(n+1)` -/
def P1013193677126287819.Spec : Prop :=
  ∀ n, P1013193677126287819.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P10457051232288533743

`A074712(n+1)*A127446(n+1)`
-/

namespace A134576.P10457051232288533743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (n + 1) * A127446 (n + 1)

end

end A134576.P10457051232288533743

namespace A134576

/-- `A074712(n+1)*A127446(n+1)` -/
def P10457051232288533743.Spec : Prop :=
  ∀ n, P10457051232288533743.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P14481767958341517417

`A075362(n+1)*A126988(n+1)`
-/

namespace A134576.P14481767958341517417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) * A126988 (n + 1)

end

end A134576.P14481767958341517417

namespace A134576

/-- `A075362(n+1)*A126988(n+1)` -/
def P14481767958341517417.Spec : Prop :=
  ∀ n, P14481767958341517417.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P2506089806432552772

`A085383(n+1)*A134575(n+1)`
-/

namespace A134576.P2506089806432552772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085383 (n + 1) * A134575 (n + 1)

end

end A134576.P2506089806432552772

namespace A134576

/-- `A085383(n+1)*A134575(n+1)` -/
def P2506089806432552772.Spec : Prop :=
  ∀ n, P2506089806432552772.a n = A134576 (n + 1)

end A134576

/-! ## A134576.P1567280554202566127

`A118013(n+1)*A127093(n+1)`
-/

namespace A134576.P1567280554202566127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118013 (n + 1) * A127093 (n + 1)

end

end A134576.P1567280554202566127

namespace A134576

/-- `A118013(n+1)*A127093(n+1)` -/
def P1567280554202566127.Spec : Prop :=
  ∀ n, P1567280554202566127.a n = A134576 (n + 1)

end A134576

/-!
# A134577: Triangle read by rows: T(n,k) = tau(n/k)*k if k divides n, T(n,k) = 0 otherwise, where tau = A000005.

The programs for A134577, the canonical program `A134577.P17996659558019461021` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134577 has offset 1).

The definition of A134577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A134577.P11163312304958035410

`(1-C(∑[char[∑[n]]], 2)+n)*A127170(n+1)`
-/

namespace A134577.P11163312304958035410
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A127170 (n + 1)

end

end A134577.P11163312304958035410

namespace A134577

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A127170(n+1)` -/
def P11163312304958035410.Spec : Prop :=
  ∀ n, P11163312304958035410.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P17996659558019461021

`A002260(n+1)*A127170(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A134577

/-- `A002260(n+1)*A127170(n+1)` -/
def P17996659558019461021.Spec : Prop :=
  ∀ n, P17996659558019461021.a n = A134577 (n + 1)

theorem P17996659558019461021.correct : P17996659558019461021.Spec := by
  intro n
  simp only [A134577, Nat.add_sub_cancel]

end A134577

/-! ## A134577.P17006226093214850841

`(A002262(n)+1)*A127170(n+1)`
-/

namespace A134577.P17006226093214850841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A127170 (n + 1)

end

end A134577.P17006226093214850841

namespace A134577

/-- `(A002262(n)+1)*A127170(n+1)` -/
def P17006226093214850841.Spec : Prop :=
  ∀ n, P17006226093214850841.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P5075119329721900745

`A050873(n+1)*A127170(n+1)`
-/

namespace A134577.P5075119329721900745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A127170 (n + 1)

end

end A134577.P5075119329721900745

namespace A134577

/-- `A050873(n+1)*A127170(n+1)` -/
def P5075119329721900745.Spec : Prop :=
  ∀ n, P5075119329721900745.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P6790152981343028871

`A112544(n+1)*A127170(n+1)`
-/

namespace A134577.P6790152981343028871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A127170 (n + 1)

end

end A134577.P6790152981343028871

namespace A134577

/-- `A112544(n+1)*A127170(n+1)` -/
def P6790152981343028871.Spec : Prop :=
  ∀ n, P6790152981343028871.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P6907541903701113210

`A123275(n+1)*A127170(n+1)`
-/

namespace A134577.P6907541903701113210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A127170 (n + 1)

end

end A134577.P6907541903701113210

namespace A134577

/-- `A123275(n+1)*A127170(n+1)` -/
def P6907541903701113210.Spec : Prop :=
  ∀ n, P6907541903701113210.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P919226537240534124

`A127093(n+1)*A127170(n+1)`
-/

namespace A134577.P919226537240534124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A127170 (n + 1)

end

end A134577.P919226537240534124

namespace A134577

/-- `A127093(n+1)*A127170(n+1)` -/
def P919226537240534124.Spec : Prop :=
  ∀ n, P919226537240534124.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P14038141611007686932

`A127170(n+1)*A307662(n+1)`
-/

namespace A134577.P14038141611007686932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A307662 (n + 1)

end

end A134577.P14038141611007686932

namespace A134577

/-- `A127170(n+1)*A307662(n+1)` -/
def P14038141611007686932.Spec : Prop :=
  ∀ n, P14038141611007686932.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P6781904520169288742

`A127170(n+1)*A334230(n+1)`
-/

namespace A134577.P6781904520169288742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A334230 (n + 1)

end

end A134577.P6781904520169288742

namespace A134577

/-- `A127170(n+1)*A334230(n+1)` -/
def P6781904520169288742.Spec : Prop :=
  ∀ n, P6781904520169288742.a n = A134577 (n + 1)

end A134577

/-! ## A134577.P8770703750676330295

`A127170(n+1)*A357554(n+1)`
-/

namespace A134577.P8770703750676330295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127170 (n + 1) * A357554 (n + 1)

end

end A134577.P8770703750676330295

namespace A134577

/-- `A127170(n+1)*A357554(n+1)` -/
def P8770703750676330295.Spec : Prop :=
  ∀ n, P8770703750676330295.a n = A134577 (n + 1)

end A134577

/-!
# A134578: a(n) = floor(n^sqrt(4*Pi/3)).

The programs for A134578, the canonical program `A134578.P15084353843011186561` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134578 has offset 0).

The definition of A134578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^sqrt(4*π/3))` (program `A134578.P15084353843011186561`, by `A134578.P15084353843011186561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134578.P15084353843011186561

`floor(n^sqrt(4*π/3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134578

/-- `floor(n^sqrt(4*π/3))` -/
def P15084353843011186561.Spec : Prop :=
  ∀ n, P15084353843011186561.a n = A134578 n

theorem P15084353843011186561.correct : P15084353843011186561.Spec := by
  intro n
  simp only [A134578]

end A134578

/-! ## A134578.P8342640871369100095

`A055086(A211809(n)+n)`
-/

namespace A134578.P8342640871369100095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A211809 n + (n : ℤ)).toNat

end

end A134578.P8342640871369100095

namespace A134578

/-- `A055086(A211809(n)+n)` -/
def P8342640871369100095.Spec : Prop :=
  ∀ n, P8342640871369100095.a n = A134578 n

end A134578

/-! ## A134578.P10594569565649901501

`A293137(A211809(n)+n)`
-/

namespace A134578.P10594569565649901501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A211809 n + (n : ℤ)).toNat

end

end A134578.P10594569565649901501

namespace A134578

/-- `A293137(A211809(n)+n)` -/
def P10594569565649901501.Spec : Prop :=
  ∀ n, P10594569565649901501.a n = A134578 n

end A134578

/-! ## A134578.P8607663895137589386

`A161680(n)+A000196(A212143(n))`
-/

namespace A134578.P8607663895137589386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A000196 (A212143 n).toNat

end

end A134578.P8607663895137589386

namespace A134578

/-- `A161680(n)+A000196(A212143(n))` -/
def P8607663895137589386.Spec : Prop :=
  ∀ n, P8607663895137589386.a n = A134578 n

end A134578

/-! ## A134578.P10995471416819229601

`A000267(A071238(n))-A028310(n)`
-/

namespace A134578.P10995471416819229601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A071238 n).toNat - A028310 n

end

end A134578.P10995471416819229601

namespace A134578

/-- `A000267(A071238(n))-A028310(n)` -/
def P10995471416819229601.Spec : Prop :=
  ∀ n, P10995471416819229601.a n = A134578 n

end A134578

/-!
# A134580: Numbers k such that k * Fibonacci(k) - 1 is prime.

The programs for A134580, there is no canonical definition to state claims against.
-/

/-! ## A134580.P4531673152955031757

`A003004(A191469(n+1)+1)`
-/

namespace A134580.P4531673152955031757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A191469 (n + 1) + 1).toNat

end

end A134580.P4531673152955031757

/-!
# A134581: a(n) = 4*a(n-1) - 7*a(n-2) + 6*a(n-3) - 3*a(n-4), starting with 0, 1, 2, 3.

The programs for A134581, the canonical program `A134581.P15203710370132613866` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134581 has offset 0).

The definition of A134581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` (program `A134581.P15203710370132613866`, by `A134581.P15203710370132613866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134581.P15203710370132613866

`4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134581

/-- `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` -/
def P15203710370132613866.Spec : Prop :=
  ∀ n, P15203710370132613866.a n = A134581 n

theorem P15203710370132613866.correct : P15203710370132613866.Spec := by
  intro n
  simp only [A134581]

end A134581

/-! ## A134581.P5733992276312287523

`A140343(n+3)-2*A140343(n+2)+2*A140343(n+1)`
-/

namespace A134581.P5733992276312287523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 (n + 3) - 2 * A140343 (n + 2) + 2 * A140343 (n + 1)

end

end A134581.P5733992276312287523

namespace A134581

/-- `A140343(n+3)-2*A140343(n+2)+2*A140343(n+1)` -/
def P5733992276312287523.Spec : Prop :=
  ∀ n, P5733992276312287523.a n = A134581 n

end A134581

/-! ## A134581.P17051866557407329697

`A140343(n)+A057682(n)`
-/

namespace A134581.P17051866557407329697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 n + A057682 n

end

end A134581.P17051866557407329697

namespace A134581

/-- `A140343(n)+A057682(n)` -/
def P17051866557407329697.Spec : Prop :=
  ∀ n, P17051866557407329697.a n = A134581 n

end A134581

/-! ## A134581.P6775627444390675216

`A140343(n)+∑[A103312(n)]`
-/

namespace A134581.P6775627444390675216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134581.P6775627444390675216

namespace A134581

/-- `A140343(n)+∑[A103312(n)]` -/
def P6775627444390675216.Spec : Prop :=
  ∀ n, P6775627444390675216.a n = A134581 n

end A134581

/-! ## A134581.P9813576680313583292

`A140343(n+1)+Δ[Δ[A140343(n+1)]]`
-/

namespace A134581.P9813576680313583292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 (n + 1) + (f1 (n + 1) - f1 n)

end

end A134581.P9813576680313583292

namespace A134581

/-- `A140343(n+1)+Δ[Δ[A140343(n+1)]]` -/
def P9813576680313583292.Spec : Prop :=
  ∀ n, P9813576680313583292.a n = A134581 n

end A134581

/-! ## A134581.P17280218266080782506

`A227430(n+1)-A024495(n)`
-/

namespace A134581.P17280218266080782506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1) - A024495 n

end

end A134581.P17280218266080782506

namespace A134581

/-- `A227430(n+1)-A024495(n)` -/
def P17280218266080782506.Spec : Prop :=
  ∀ n, P17280218266080782506.a n = A134581 n

end A134581

/-! ## A134581.P8966556964688015980

`A119336(n)-A306847(n+1)`
-/

namespace A134581.P8966556964688015980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n - A306847 (n + 1)

end

end A134581.P8966556964688015980

namespace A134581

/-- `A119336(n)-A306847(n+1)` -/
def P8966556964688015980.Spec : Prop :=
  ∀ n, P8966556964688015980.a n = A134581 n

end A134581

/-! ## A134581.P3148592461902390390

`∑[A306847(n)]-A306847(n+1)`
-/

namespace A134581.P3148592461902390390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A306847 (n + 1)

end

end A134581.P3148592461902390390

namespace A134581

/-- `∑[A306847(n)]-A306847(n+1)` -/
def P3148592461902390390.Spec : Prop :=
  ∀ n, P3148592461902390390.a n = A134581 n

end A134581

/-! ## A134581.P8277417260596100774

`A227430(n+1)-(A290993(n)+A227430(n))`
-/

namespace A134581.P8277417260596100774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1) - (A290993 n + A227430 n)

end

end A134581.P8277417260596100774

namespace A134581

/-- `A227430(n+1)-(A290993(n)+A227430(n))` -/
def P8277417260596100774.Spec : Prop :=
  ∀ n, P8277417260596100774.a n = A134581 n

end A134581

/-! ## A134581.P14957998120993474324

`A119336(n)-Δ[A119336(n)]`
-/

namespace A134581.P14957998120993474324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n - (f1 (n + 1) - f1 n)

end

end A134581.P14957998120993474324

namespace A134581

/-- `A119336(n)-Δ[A119336(n)]` -/
def P14957998120993474324.Spec : Prop :=
  ∀ n, P14957998120993474324.a n = A134581 n

end A134581

/-! ## A134581.P15204682882432629265

`Δ[A024495(n)]-A290993(n+1)`
-/

namespace A134581.P15204682882432629265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A290993 (n + 1)

end

end A134581.P15204682882432629265

namespace A134581

/-- `Δ[A024495(n)]-A290993(n+1)` -/
def P15204682882432629265.Spec : Prop :=
  ∀ n, P15204682882432629265.a n = A134581 n

end A134581

/-! ## A134581.P4249855591716558328

`Δ[A024495(n)-A290993(n)]-A290993(n)`
-/

namespace A134581.P4249855591716558328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n - A290993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A290993 n

end

end A134581.P4249855591716558328

namespace A134581

/-- `Δ[A024495(n)-A290993(n)]-A290993(n)` -/
def P4249855591716558328.Spec : Prop :=
  ∀ n, P4249855591716558328.a n = A134581 n

end A134581

/-! ## A134581.P9318073114099576992

`A119336(n)+A119336(n)-A119336(n+1)`
-/

namespace A134581.P9318073114099576992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n + (A119336 n - A119336 (n + 1))

end

end A134581.P9318073114099576992

namespace A134581

/-- `A119336(n)+A119336(n)-A119336(n+1)` -/
def P9318073114099576992.Spec : Prop :=
  ∀ n, P9318073114099576992.a n = A134581 n

end A134581

/-! ## A134581.P17813937949480190822

`A227430(n+1)+A024493(n)-A024493(n+1)`
-/

namespace A134581.P17813937949480190822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1) + (A024493 n - A024493 (n + 1))

end

end A134581.P17813937949480190822

namespace A134581

/-- `A227430(n+1)+A024493(n)-A024493(n+1)` -/
def P17813937949480190822.Spec : Prop :=
  ∀ n, P17813937949480190822.a n = A134581 n

end A134581

/-! ## A134581.P15927780554032057525

`A024494(n+1)-(A290993(n+1)+A024493(n))`
-/

namespace A134581.P15927780554032057525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1) - (A290993 (n + 1) + A024493 n)

end

end A134581.P15927780554032057525

namespace A134581

/-- `A024494(n+1)-(A290993(n+1)+A024493(n))` -/
def P15927780554032057525.Spec : Prop :=
  ∀ n, P15927780554032057525.a n = A134581 n

end A134581

/-! ## A134581.P8716513489570309094

`A024495(n+1)-(A290993(n+1)+A024495(n))`
-/

namespace A134581.P8716513489570309094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) - (A290993 (n + 1) + A024495 n)

end

end A134581.P8716513489570309094

namespace A134581

/-- `A024495(n+1)-(A290993(n+1)+A024495(n))` -/
def P8716513489570309094.Spec : Prop :=
  ∀ n, P8716513489570309094.a n = A134581 n

end A134581

/-!
# A134582: a(n) = (2*n)^2 - 4.

The programs for A134582, the canonical program `A134582.P3471097274059167461` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134582 has offset 1).

The definition of A134582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A134582.P3471097274059167461

`4*A005563(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A134582

/-- `4*A005563(n)` -/
def P3471097274059167461.Spec : Prop :=
  ∀ n, P3471097274059167461.a n = A134582 (n + 1)

theorem P3471097274059167461.correct : P3471097274059167461.Spec := by
  intro n
  simp only [A134582, Nat.add_sub_cancel]

end A134582

/-! ## A134582.P4036848496361075254

`4*n*(2+n)`
-/

namespace A134582.P4036848496361075254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (2 + n))

end

end A134582.P4036848496361075254

namespace A134582

/-- `4*n*(2+n)` -/
def P4036848496361075254.Spec : Prop :=
  ∀ n, (P4036848496361075254.a n : ℤ) = A134582 (n + 1)

end A134582

/-! ## A134582.P7833266525952614860

`∑[or(4, 8*n)]-4`
-/

namespace A134582.P7833266525952614860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A134582.P7833266525952614860

namespace A134582

/-- `∑[or(4, 8*n)]-4` -/
def P7833266525952614860.Spec : Prop :=
  ∀ n, P7833266525952614860.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P9807868522347657788

`∑[xor(4, 8*n)]-4`
-/

namespace A134582.P9807868522347657788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A134582.P9807868522347657788

namespace A134582

/-- `∑[xor(4, 8*n)]-4` -/
def P9807868522347657788.Spec : Prop :=
  ∀ n, P9807868522347657788.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P14961775634309303140

`record[4*n*(n-2)]`
-/

namespace A134582.P14961775634309303140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134582.P14961775634309303140

namespace A134582

/-- `record[4*n*(n-2)]` -/
def P14961775634309303140.Spec : Prop :=
  ∀ n, P14961775634309303140.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P1912675153581483711

`record[xor(n, -2)²]-4`
-/

namespace A134582.P1912675153581483711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 4

end

end A134582.P1912675153581483711

namespace A134582

/-- `record[xor(n, -2)²]-4` -/
def P1912675153581483711.Spec : Prop :=
  ∀ n, P1912675153581483711.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P11733726087714747303

`∑[a(n-1)+8]` with `a(0)=0, a(1)=12`
-/

namespace A134582.P11733726087714747303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134582.P11733726087714747303

namespace A134582

/-- `∑[a(n-1)+8]` -/
def P11733726087714747303.Spec : Prop :=
  ∀ n, (P11733726087714747303.a n : ℤ) = A134582 (n + 1)

end A134582

/-! ## A134582.P1262932963425710348

`xor(2*n, -2)²-4`
-/

namespace A134582.P1262932963425710348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2) ^ 2 - 4

end

end A134582.P1262932963425710348

namespace A134582

/-- `xor(2*n, -2)²-4` -/
def P1262932963425710348.Spec : Prop :=
  ∀ n, P1262932963425710348.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P18235995609832671599

`Δ[lcm(n, n+1)]²-4`
-/

namespace A134582.P18235995609832671599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - 4

end

end A134582.P18235995609832671599

namespace A134582

/-- `Δ[lcm(n, n+1)]²-4` -/
def P18235995609832671599.Spec : Prop :=
  ∀ n, P18235995609832671599.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P3965728477600367756

`lcm(2, 4-(n+2+n)²)`
-/

namespace A134582.P3965728477600367756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (4 - ((n + 2 + n) ^ 2 : ℤ))

end

end A134582.P3965728477600367756

namespace A134582

/-- `lcm(2, 4-(n+2+n)²)` -/
def P3965728477600367756.Spec : Prop :=
  ∀ n, (P3965728477600367756.a n : ℤ) = A134582 (n + 1)

end A134582

/-! ## A134582.P12000198817315818838

`xor(1, (n+2+n)²-3)`
-/

namespace A134582.P12000198817315818838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n + 2 + n) ^ 2 : ℤ) - 3)

end

end A134582.P12000198817315818838

namespace A134582

/-- `xor(1, (n+2+n)²-3)` -/
def P12000198817315818838.Spec : Prop :=
  ∀ n, P12000198817315818838.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P9395188630189063322

`or(1, (n+2+n)²)-5`
-/

namespace A134582.P9395188630189063322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((n + 2 + n) ^ 2) : ℤ) - 5

end

end A134582.P9395188630189063322

namespace A134582

/-- `or(1, (n+2+n)²)-5` -/
def P9395188630189063322.Spec : Prop :=
  ∀ n, P9395188630189063322.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P14908985101188646478

`∑[lcm(4, n+1+n)]-4`
-/

namespace A134582.P14908985101188646478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A134582.P14908985101188646478

namespace A134582

/-- `∑[lcm(4, n+1+n)]-4` -/
def P14908985101188646478.Spec : Prop :=
  ∀ n, P14908985101188646478.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P12409611760781947465

`Δ[C(n+2+n, 3)]-4`
-/

namespace A134582.P12409611760781947465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2 + n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 4

end

end A134582.P12409611760781947465

namespace A134582

/-- `Δ[C(n+2+n, 3)]-4` -/
def P12409611760781947465.Spec : Prop :=
  ∀ n, P12409611760781947465.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P2800453287862059755

`record[(n+2)^gcd(2, n)]-4`
-/

namespace A134582.P2800453287862059755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 4

end

end A134582.P2800453287862059755

namespace A134582

/-- `record[(n+2)^gcd(2, n)]-4` -/
def P2800453287862059755.Spec : Prop :=
  ∀ n, P2800453287862059755.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P7112768947780370411

`lt[1, xor(n, n-1)]²-4`
-/

namespace A134582.P7112768947780370411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 : ℤ) - 4

end

end A134582.P7112768947780370411

namespace A134582

/-- `lt[1, xor(n, n-1)]²-4` -/
def P7112768947780370411.Spec : Prop :=
  ∀ n, P7112768947780370411.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P4818733021727097975

`record[and(n-1, -2)²]-4`
-/

namespace A134582.P4818733021727097975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 4

end

end A134582.P4818733021727097975

namespace A134582

/-- `record[and(n-1, -2)²]-4` -/
def P4818733021727097975.Spec : Prop :=
  ∀ n, P4818733021727097975.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P14111034374318230984

`abs(4-record[(n-2+n)²])`
-/

namespace A134582.P14111034374318230984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A134582.P14111034374318230984

namespace A134582

/-- `abs(4-record[(n-2+n)²])` -/
def P14111034374318230984.Spec : Prop :=
  ∀ n, P14111034374318230984.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P3089431162742006080

`lt[n, or(n, n-1)]²-4`
-/

namespace A134582.P3089431162742006080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 : ℤ) - 4

end

end A134582.P3089431162742006080

namespace A134582

/-- `lt[n, or(n, n-1)]²-4` -/
def P3089431162742006080.Spec : Prop :=
  ∀ n, P3089431162742006080.a n = A134582 (n + 1)

end A134582

/-! ## A134582.P11485696652296308971

`4*n-∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A134582.P11485696652296308971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134582.P11485696652296308971

namespace A134582

/-- `4*n-∑[a(n-1)-8]` -/
def P11485696652296308971.Spec : Prop :=
  ∀ n, P11485696652296308971.a n = A134582 (n + 1)

end A134582

/-!
# A134583: Signature sequence of the Hausdorff dimension of the Cantor set log(2)/log(3).

The programs for A134583, there is no canonical definition to state claims against.
-/

/-! ## A134583.P6604816197626730780

`A022329(n+1)+1`
-/

namespace A134583.P6604816197626730780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 1) + 1

end

end A134583.P6604816197626730780

/-! ## A134583.P17654680316413683397

`val(A033845(n+1), 3)`
-/

namespace A134583.P17654680316413683397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033845 (n + 1)).toNat 3

end

end A134583.P17654680316413683397

/-! ## A134583.P14562743356049130473

`val(A065119(n+1), 3)`
-/

namespace A134583.P14562743356049130473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065119 (n + 1)).toNat 3

end

end A134583.P14562743356049130473

/-! ## A134583.P18024753876611319403

`val(∑[A061987(n)], 3)+1`
-/

namespace A134583.P18024753876611319403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3 + 1

end

end A134583.P18024753876611319403

/-! ## A134583.P8354313764622069178

`val(A003586(n+1), 3)+1`
-/

namespace A134583.P8354313764622069178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003586 (n + 1)).toNat 3 + 1

end

end A134583.P8354313764622069178

/-! ## A134583.P9731981902246219966

`A227861(n+1)-A158456(n+1)`
-/

namespace A134583.P9731981902246219966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227861 (n + 1) - A158456 (n + 1)

end

end A134583.P9731981902246219966

/-! ## A134583.P11560418342798210239

`A086416(n+1)/A158456(n+1)`
-/

namespace A134583.P11560418342798210239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086416 (n + 1) : ℚ) / (A158456 (n + 1) : ℚ)

end

end A134583.P11560418342798210239

/-! ## A134583.P15454367736727424222

`A069352(n+1)+1-A022328(n+1)`
-/

namespace A134583.P15454367736727424222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) + (1 - A022328 (n + 1))

end

end A134583.P15454367736727424222

/-! ## A134583.P10086292234763150877

`A069352(n+1)+2-A158456(n+1)`
-/

namespace A134583.P10086292234763150877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) + (2 - A158456 (n + 1))

end

end A134583.P10086292234763150877

/-! ## A134583.P18133955638431384719

`val(A187778(n+2), 3)`
-/

namespace A134583.P18133955638431384719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A187778 (n + 2)).toNat 3

end

end A134583.P18133955638431384719

/-! ## A134583.P16833410520572095064

`A158456(A372744(n+1))`
-/

namespace A134583.P16833410520572095064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158456 (A372744 (n + 1)).toNat

end

end A134583.P16833410520572095064

/-! ## A134583.P17204039516624414662

`val(A000423(n+3), 3)`
-/

namespace A134583.P17204039516624414662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000423 (n + 3)).toNat 3

end

end A134583.P17204039516624414662

/-! ## A134583.P15650755157290758408

`A000005(gcd(3^n, A003586(n+1)))`
-/

namespace A134583.P15650755157290758408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (3 ^ n : ℤ) (A003586 (n + 1)))

end

end A134583.P15650755157290758408

/-! ## A134583.P45338048807381126

`A000005(A000265(A003586(n+1)))`
-/

namespace A134583.P45338048807381126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A003586 (n + 1)).toNat).toNat

end

end A134583.P45338048807381126

/-! ## A134583.P16829873529520374399

`A001222(A003586(n+1))+1-A022328(n+1)`
-/

namespace A134583.P16829873529520374399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003586 (n + 1)).toNat + (1 - A022328 (n + 1))

end

end A134583.P16829873529520374399

/-!
# A134584: First elements of the pairs listed in A134514.

The programs for A134584, there is no canonical definition to state claims against.
-/

/-! ## A134584.P2379261790023772518

`A134514(Δ[n²])`
-/

namespace A134584.P2379261790023772518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134514 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A134584.P2379261790023772518

/-! ## A134584.P2254289353308851390

`A134514(2*n+1)+char[15]`
-/

namespace A134584.P2254289353308851390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134514 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134584.P2254289353308851390

/-! ## A134584.P6004182708255568222

`record[(-1)^n*A134514(n+1)]`
-/

namespace A134584.P6004182708255568222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A134514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134584.P6004182708255568222

/-! ## A134584.P14842878446059827926

`record[A134514((n+1)/2^val(n+1, 2))]`
-/

namespace A134584.P14842878446059827926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134514 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134584.P14842878446059827926

/-! ## A134584.P16224864347320999222

`record[A134514(A000265(n+1))]`
-/

namespace A134584.P16224864347320999222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134514 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134584.P16224864347320999222

/-!
# A134585: Second elements of the pairs listed in A134514.

The programs for A134585, there is no canonical definition to state claims against.
-/

/-! ## A134585.P12675691515164193917

`A134514(2*(n+1))`
-/

namespace A134585.P12675691515164193917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134514 (2 * (n + 1))

end

end A134585.P12675691515164193917

/-!
# A134586: a(n) = a(n-1) + A007954(n-1) if a(n-1) is odd, otherwise a(n) = a(n-1) / 2.

The programs for A134586, there is no canonical definition to state claims against.
-/

/-! ## A134586.P1994885469601077576

`∑{e}[A208849(A135287(n)), #]`
-/

namespace A134586.P1994885469601077576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208849 (A135287 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A134586.P1994885469601077576

/-! ## A134586.P17506538107640599040

`∑{e}[A208849(A138037(n+2)-2*(n+1)), #]`
-/

namespace A134586.P17506538107640599040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208849 (A138037 (n + 2) - (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A134586.P17506538107640599040

/-! ## A134586.P12787046545857488757

`A135287(n)%A064186(A267046(n))`
-/

namespace A134586.P12787046545857488757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135287 n) (A064186 (A267046 n).toNat)

end

end A134586.P12787046545857488757

/-! ## A134586.P16491053123926174012

`gcd(A135287(n), A260850(A161953(n+1)))`
-/

namespace A134586.P16491053123926174012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135287 n) (A260850 (A161953 (n + 1)).toNat)

end

end A134586.P16491053123926174012

/-!
# A134588: A modified Heron sequence starting from 1, 2.

The programs for A134588, there is no canonical definition to state claims against.
-/

/-! ## A134588.P11300724118973565856

`A000060(n+1)%A062759(A254030(n))`
-/

namespace A134588.P11300724118973565856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000060 (n + 1)) (A062759 (A254030 n).toNat)

end

end A134588.P11300724118973565856

/-!
# A134589: A modified Heron sequence starting from 1,3.

The programs for A134589, there is no canonical definition to state claims against.
-/

/-! ## A134589.P16216800083814714444

`A058034(lt[n, 2*A228814(n+1)])`
-/

namespace A134589.P16216800083814714444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A134589.P16216800083814714444

/-! ## A134589.P18445705075877731097

`A058034(lt[n/2, A228814(n+1)])`
-/

namespace A134589.P18445705075877731097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058034 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A134589.P18445705075877731097

/-!
# A134590: A modified Heron sequence starting from 2,5.

The programs for A134590, there is no canonical definition to state claims against.
-/

/-! ## A134590.P4868613340402228155

`A048212(A300081(n+1)^n)`
-/

namespace A134590.P4868613340402228155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048212 (A300081 (n + 1) ^ n).toNat

end

end A134590.P4868613340402228155

/-!
# A134591: a(n) is n reflected in n-th prime: distance between a(n) and prime(n) equals distance between prime(n) and n.

The programs for A134591, the canonical program `A134591.P13784663667261059065` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134591 has offset 1).

The definition of A134591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A014689, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A134591.P13784663667261059065

`A014689(n+1)+A000040(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A134591

/-- `A014689(n+1)+A000040(n+1)` -/
def P13784663667261059065.Spec : Prop :=
  ∀ n, P13784663667261059065.a n = A134591 (n + 1)

theorem P13784663667261059065.correct : P13784663667261059065.Spec := by
  intro n
  simp only [A134591, Nat.add_sub_cancel]

end A134591

/-! ## A134591.P7528223275045111691

`2*A000040(n+1)-A000027(n+1)`
-/

namespace A134591.P7528223275045111691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A000027 (n + 1)

end

end A134591.P7528223275045111691

namespace A134591

/-- `2*A000040(n+1)-A000027(n+1)` -/
def P7528223275045111691.Spec : Prop :=
  ∀ n, P7528223275045111691.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P16351699572447586505

`A037168(n+1)+1-n`
-/

namespace A134591.P16351699572447586505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) + (1 - (n : ℤ))

end

end A134591.P16351699572447586505

namespace A134591

/-- `A037168(n+1)+1-n` -/
def P16351699572447586505.Spec : Prop :=
  ∀ n, P16351699572447586505.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P5534274774008778678

`A100484(n+1)-(n+1)`
-/

namespace A134591.P5534274774008778678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (n + 1 : ℤ)

end

end A134591.P5534274774008778678

namespace A134591

/-- `A100484(n+1)-(n+1)` -/
def P5534274774008778678.Spec : Prop :=
  ∀ n, P5534274774008778678.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P9741729072804488275

`A239636(n+1)+2+n`
-/

namespace A134591.P9741729072804488275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239636 (n + 1) + 2 + (n : ℤ)

end

end A134591.P9741729072804488275

namespace A134591

/-- `A239636(n+1)+2+n` -/
def P9741729072804488275.Spec : Prop :=
  ∀ n, P9741729072804488275.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P7183806087270176028

`A072055(n+1)-(n+2)`
-/

namespace A134591.P7183806087270176028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - (n + 2 : ℤ)

end

end A134591.P7183806087270176028

namespace A134591

/-- `A072055(n+1)-(n+2)` -/
def P7183806087270176028.Spec : Prop :=
  ∀ n, P7183806087270176028.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P13893354847512366189

`A131426(n+1)+2-n`
-/

namespace A134591.P13893354847512366189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) + (2 - (n : ℤ))

end

end A134591.P13893354847512366189

namespace A134591

/-- `A131426(n+1)+2-n` -/
def P13893354847512366189.Spec : Prop :=
  ∀ n, P13893354847512366189.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P13932211148932805724

`A089241(n+1)-(n+3)`
-/

namespace A134591.P13932211148932805724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - (n + 3 : ℤ)

end

end A134591.P13932211148932805724

namespace A134591

/-- `A089241(n+1)-(n+3)` -/
def P13932211148932805724.Spec : Prop :=
  ∀ n, P13932211148932805724.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P5224015585748976325

`A140777(n+1)+3-n`
-/

namespace A134591.P5224015585748976325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) + (3 - (n : ℤ))

end

end A134591.P5224015585748976325

namespace A134591

/-- `A140777(n+1)+3-n` -/
def P5224015585748976325.Spec : Prop :=
  ∀ n, P5224015585748976325.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P13529238282826094576

`A129069(n+1)-(n+4)`
-/

namespace A134591.P13529238282826094576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - (n + 4 : ℤ)

end

end A134591.P13529238282826094576

namespace A134591

/-- `A129069(n+1)-(n+4)` -/
def P13529238282826094576.Spec : Prop :=
  ∀ n, P13529238282826094576.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P2155543780725799981

`A100803(n)+a(n-1)` with `a(0)=3`
-/

namespace A134591.P2155543780725799981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A100803 n + a (n - 1)

end

end A134591.P2155543780725799981

namespace A134591

/-- `A100803(n)+a(n-1)` -/
def P2155543780725799981.Spec : Prop :=
  ∀ n, P2155543780725799981.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P5024580345914607116

`∑[2*A054541(n+1)-1]`
-/

namespace A134591.P5024580345914607116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054541 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134591.P5024580345914607116

namespace A134591

/-- `∑[2*A054541(n+1)-1]` -/
def P5024580345914607116.Spec : Prop :=
  ∀ n, P5024580345914607116.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P9086683978716764709

`sqrt(A069262(n+1))-(n+1)`
-/

namespace A134591.P9086683978716764709
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A134591.P9086683978716764709

namespace A134591

/-- `sqrt(A069262(n+1))-(n+1)` -/
def P9086683978716764709.Spec : Prop :=
  ∀ n, P9086683978716764709.a n = (A134591 (n + 1) : ℝ)

end A134591

/-! ## A134591.P9023838524458752207

`A001749(n+1)/2-(n+1)`
-/

namespace A134591.P9023838524458752207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A134591.P9023838524458752207

namespace A134591

/-- `A001749(n+1)/2-(n+1)` -/
def P9023838524458752207.Spec : Prop :=
  ∀ n, P9023838524458752207.a n = (A134591 (n + 1) : ℚ)

end A134591

/-! ## A134591.P7495345501843094803

`A138636(n+1)/3-(n+1)`
-/

namespace A134591.P7495345501843094803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 3 - (n + 1 : ℚ)

end

end A134591.P7495345501843094803

namespace A134591

/-- `A138636(n+1)/3-(n+1)` -/
def P7495345501843094803.Spec : Prop :=
  ∀ n, P7495345501843094803.a n = (A134591 (n + 1) : ℚ)

end A134591

/-! ## A134591.P13078991467127445305

`A014692(n+1)+A006093(n+1)`
-/

namespace A134591.P13078991467127445305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + A006093 (n + 1)

end

end A134591.P13078991467127445305

namespace A134591

/-- `A014692(n+1)+A006093(n+1)` -/
def P13078991467127445305.Spec : Prop :=
  ∀ n, P13078991467127445305.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P10271591373403425420

`A065890(n+1)+A008864(n+1)`
-/

namespace A134591.P10271591373403425420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + A008864 (n + 1)

end

end A134591.P10271591373403425420

namespace A134591

/-- `A065890(n+1)+A008864(n+1)` -/
def P10271591373403425420.Spec : Prop :=
  ∀ n, P10271591373403425420.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P4930397142847893601

`A065897(n+1)+A063124(n+1)`
-/

namespace A134591.P4930397142847893601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065897 (n + 1) + A063124 (n + 1)

end

end A134591.P4930397142847893601

namespace A134591

/-- `A065897(n+1)+A063124(n+1)` -/
def P4930397142847893601.Spec : Prop :=
  ∀ n, P4930397142847893601.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P720449610776564351

`A129189(n+1)+A038529(n+1)`
-/

namespace A134591.P720449610776564351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129189 (n + 1) + A038529 (n + 1)

end

end A134591.P720449610776564351

namespace A134591

/-- `A129189(n+1)+A038529(n+1)` -/
def P720449610776564351.Spec : Prop :=
  ∀ n, P720449610776564351.a n = A134591 (n + 1)

end A134591

/-! ## A134591.P9281972747681454723

`A163249(n+1)+A014237(n+1)`
-/

namespace A134591.P9281972747681454723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163249 (n + 1) + A014237 (n + 1)

end

end A134591.P9281972747681454723

namespace A134591

/-- `A163249(n+1)+A014237(n+1)` -/
def P9281972747681454723.Spec : Prop :=
  ∀ n, P9281972747681454723.a n = A134591 (n + 1)

end A134591

/-!
# A134592: a(n) is the largest highly composite number (definition 1) not a multiple of n.

The programs for A134592, there is no canonical definition to state claims against.
-/

/-! ## A134592.P922605883053086455

`A216919(a(n-1)²+n+1)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=48, a(4)=4`
-/

namespace A134592.P922605883053086455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 48, 4] fun n a =>
  A216919 (a (n - 1) ^ 2 + (n : ℤ) + 1).toNat

end

end A134592.P922605883053086455

/-! ## A134592.P8532777327665565251

`A210445(n!*A151724(n+1)+1)`
-/

namespace A134592.P8532777327665565251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 ((Nat.factorial n : ℤ) * A151724 (n + 1) + 1).toNat

end

end A134592.P8532777327665565251

/-!
# A134593: a(n) = 5*n^2 + 10*n + 1. Coefficients of the rational part of (1 + sqrt(n))^5.

The programs for A134593, the canonical program `A134593.P12712515493315309902` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134593 has offset 0).

The definition of A134593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²+10*n+1` (program `A134593.P12712515493315309902`, by `A134593.P12712515493315309902.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134593.P12712515493315309902

`5*n²+10*n+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134593

/-- `5*n²+10*n+1` -/
def P12712515493315309902.Spec : Prop :=
  ∀ n, (P12712515493315309902.a n : ℤ) = A134593 n

theorem P12712515493315309902.correct : P12712515493315309902.Spec := by
  intro n
  simp only [A134593]

end A134593

/-! ## A134593.P14255119337227158011

`∑[a(n-1)+10]` with `a(0)=1, a(1)=15`
-/

namespace A134593.P14255119337227158011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134593.P14255119337227158011

namespace A134593

/-- `∑[a(n-1)+10]` -/
def P14255119337227158011.Spec : Prop :=
  ∀ n, (P14255119337227158011.a n : ℤ) = A134593 n

end A134593

/-! ## A134593.P14593692760289748355

`record[5*(1-n)²-4]`
-/

namespace A134593.P14593692760289748355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (1 - (n : ℤ)) ^ 2 - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134593.P14593692760289748355

namespace A134593

/-- `record[5*(1-n)²-4]` -/
def P14593692760289748355.Spec : Prop :=
  ∀ n, P14593692760289748355.a n = A134593 n

end A134593

/-! ## A134593.P17150979768644080929

`xor(2, ∑[5*(2*n+1)]-2)`
-/

namespace A134593.P17150979768644080929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A134593.P17150979768644080929

namespace A134593

/-- `xor(2, ∑[5*(2*n+1)]-2)` -/
def P17150979768644080929.Spec : Prop :=
  ∀ n, P17150979768644080929.a n = A134593 n

end A134593

/-! ## A134593.P7466947614527083062

`and(5*n*(n+2)+1, -3)`
-/

namespace A134593.P7466947614527083062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * (n * (n + 2)) + 1 : ℤ) (-3)

end

end A134593.P7466947614527083062

namespace A134593

/-- `and(5*n*(n+2)+1, -3)` -/
def P7466947614527083062.Spec : Prop :=
  ∀ n, P7466947614527083062.a n = A134593 n

end A134593

/-! ## A134593.P8858938473029742080

`floor(10*n+a(n-1)+5)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A134593.P8858938473029742080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * n + (a (n - 1) + 5)

end

end A134593.P8858938473029742080

namespace A134593

/-- `floor(10*n+a(n-1)+5)` -/
def P8858938473029742080.Spec : Prop :=
  ∀ n, (P8858938473029742080.a n : ℤ) = A134593 n

theorem P8858938473029742080.correct : P8858938473029742080.Spec := by
  intro n
  induction n with
  | zero => simp [A134593, A134593.P8858938473029742080.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A134593, Nat.add_sub_cancel, A134593.P8858938473029742080.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A134593

/-! ## A134593.P18374794561326373203

`abs(a(n-1)+5*(2*n+1))` with `a(0)=1`
-/

namespace A134593.P18374794561326373203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134593.P18374794561326373203

namespace A134593

/-- `abs(a(n-1)+5*(2*n+1))` -/
def P18374794561326373203.Spec : Prop :=
  ∀ n, (P18374794561326373203.a n : ℤ) = A134593 n

theorem P18374794561326373203.correct : P18374794561326373203.Spec := by
  intro n
  induction n with
  | zero => simp [A134593, A134593.P18374794561326373203.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A134593, Nat.add_sub_cancel, A134593.P18374794561326373203.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A134593

/-! ## A134593.P559317936060586004

`ceil(a(n-1)+5*(2*n+1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A134593.P559317936060586004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134593.P559317936060586004

namespace A134593

/-- `ceil(a(n-1)+5*(2*n+1))` -/
def P559317936060586004.Spec : Prop :=
  ∀ n, (P559317936060586004.a n : ℤ) = A134593 n

theorem P559317936060586004.correct : P559317936060586004.Spec := by
  intro n
  induction n with
  | zero => simp [A134593, A134593.P559317936060586004.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A134593, Nat.add_sub_cancel, A134593.P559317936060586004.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A134593

/-! ## A134593.P596858604908939589

`round(a(n-1)+5*(2*n+1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A134593.P596858604908939589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * (2 * n + 1)

end

end A134593.P596858604908939589

namespace A134593

/-- `round(a(n-1)+5*(2*n+1))` -/
def P596858604908939589.Spec : Prop :=
  ∀ n, (P596858604908939589.a n : ℤ) = A134593 n

theorem P596858604908939589.correct : P596858604908939589.Spec := by
  intro n
  induction n with
  | zero => simp [A134593, A134593.P596858604908939589.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A134593, Nat.add_sub_cancel, A134593.P596858604908939589.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A134593

/-! ## A134593.P12236724751650672157

`((n+2)*5*n+1)^ceil(abs(sin(n)))`
-/

namespace A134593.P12236724751650672157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (5 * n) + 1 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A134593.P12236724751650672157

namespace A134593

/-- `((n+2)*5*n+1)^ceil(abs(sin(n)))` -/
def P12236724751650672157.Spec : Prop :=
  ∀ n, P12236724751650672157.a n = (A134593 n : ℚ)

end A134593

/-! ## A134593.P10062631017647910212

`5*(a(n-1)/5+2*n+1)` with `a(0)=1`
-/

namespace A134593.P10062631017647910212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * (a (n - 1) / 5 + (2 * n + 1 : ℚ))

end

end A134593.P10062631017647910212

namespace A134593

/-- `5*(a(n-1)/5+2*n+1)` -/
def P10062631017647910212.Spec : Prop :=
  ∀ n, P10062631017647910212.a n = (A134593 n : ℚ)

theorem P10062631017647910212.correct : P10062631017647910212.Spec := by
  intro n
  induction n with
  | zero => simp [A134593, A134593.P10062631017647910212.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A134593, Nat.add_sub_cancel, A134593.P10062631017647910212.a, A134593.P12712515493315309902.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A134593

/-! ## A134593.P4028338776070149776

`(10*A005563(n)+2)/2`
-/

namespace A134593.P4028338776070149776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * A005563 n + 2 : ℚ) / 2

end

end A134593.P4028338776070149776

namespace A134593

/-- `(10*A005563(n)+2)/2` -/
def P4028338776070149776.Spec : Prop :=
  ∀ n, P4028338776070149776.a n = (A134593 n : ℚ)

end A134593

/-! ## A134593.P16038729138562697579

`∑[A160674(n)]/(n+1)²`
-/

namespace A134593.P16038729138562697579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160674 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A134593.P16038729138562697579

namespace A134593

/-- `∑[A160674(n)]/(n+1)²` -/
def P16038729138562697579.Spec : Prop :=
  ∀ n, P16038729138562697579.a n = (A134593 n : ℚ)

end A134593

/-! ## A134593.P17190495240132626451

`((n+2)*A008592(n)+2)/2`
-/

namespace A134593.P17190495240132626451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A008592 n + 2 : ℚ) / 2

end

end A134593.P17190495240132626451

namespace A134593

/-- `((n+2)*A008592(n)+2)/2` -/
def P17190495240132626451.Spec : Prop :=
  ∀ n, P17190495240132626451.a n = (A134593 n : ℚ)

end A134593

/-! ## A134593.P15139992952633098921

`∑[4*comp[A004277(n)]+2*n+1]`
-/

namespace A134593.P15139992952633098921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134593.P15139992952633098921

namespace A134593

/-- `∑[4*comp[A004277(n)]+2*n+1]` -/
def P15139992952633098921.Spec : Prop :=
  ∀ n, (P15139992952633098921.a n : ℤ) = A134593 n

end A134593

/-! ## A134593.P6744493025654799740

`(A215145(n)+A158187(n))/2`
-/

namespace A134593.P6744493025654799740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215145 n + A158187 n : ℚ) / 2

end

end A134593.P6744493025654799740

namespace A134593

/-- `(A215145(n)+A158187(n))/2` -/
def P6744493025654799740.Spec : Prop :=
  ∀ n, P6744493025654799740.a n = (A134593 n : ℚ)

end A134593

/-! ## A134593.P291265774047835911

`A158446(n+1)%A158491(n+1)`
-/

namespace A134593.P291265774047835911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158446 (n + 1)) (A158491 (n + 1))

end

end A134593.P291265774047835911

namespace A134593

/-- `A158446(n+1)%A158491(n+1)` -/
def P291265774047835911.Spec : Prop :=
  ∀ n, P291265774047835911.a n = A134593 n

end A134593

/-! ## A134593.P16931445376288925375

`A158559(n+1)%A158491(n+1)`
-/

namespace A134593.P16931445376288925375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158559 (n + 1)) (A158491 (n + 1))

end

end A134593.P16931445376288925375

namespace A134593

/-- `A158559(n+1)%A158491(n+1)` -/
def P16931445376288925375.Spec : Prop :=
  ∀ n, P16931445376288925375.a n = A134593 n

end A134593

/-! ## A134593.P10438891816156614471

`∑[A181389(n+3)+2*n+1]`
-/

namespace A134593.P10438891816156614471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181389 (n + 3) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134593.P10438891816156614471

namespace A134593

/-- `∑[A181389(n+3)+2*n+1]` -/
def P10438891816156614471.Spec : Prop :=
  ∀ n, P10438891816156614471.a n = A134593 n

end A134593

/-! ## A134593.P10345521525934233212

`A231065(A016873(n))`
-/

namespace A134593.P10345521525934233212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231065 (A016873 n).toNat

end

end A134593.P10345521525934233212

namespace A134593

/-- `A231065(A016873(n))` -/
def P10345521525934233212.Spec : Prop :=
  ∀ n, P10345521525934233212.a n = A134593 n

end A134593

/-!
# A134594: a(n) = n^2 + 10*n + 5: coefficients of the irrational part of (1 + sqrt(n))^5.

The programs for A134594, the canonical program `A134594.P18284746357933972269` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A134594 has offset 0).

The definition of A134594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+10*n+5` (program `A134594.P18284746357933972269`, by `A134594.P18284746357933972269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A134594.P18284746357933972269

`n²+10*n+5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A134594

/-- `n²+10*n+5` -/
def P18284746357933972269.Spec : Prop :=
  ∀ n, (P18284746357933972269.a n : ℤ) = A134594 n

theorem P18284746357933972269.correct : P18284746357933972269.Spec := by
  intro n
  simp only [A134594]

end A134594

/-! ## A134594.P17377292543596363120

`∑[a(n-1)+2]` with `a(0)=5, a(1)=11`
-/

namespace A134594.P17377292543596363120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P17377292543596363120

namespace A134594

/-- `∑[a(n-1)+2]` -/
def P17377292543596363120.Spec : Prop :=
  ∀ n, (P17377292543596363120.a n : ℤ) = A134594 n

end A134594

/-! ## A134594.P7454808644564073941

`floor(a(n-1)+2*n+9)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A134594.P7454808644564073941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (2 * n + 9)

end

end A134594.P7454808644564073941

namespace A134594

/-- `floor(a(n-1)+2*n+9)` -/
def P7454808644564073941.Spec : Prop :=
  ∀ n, (P7454808644564073941.a n : ℤ) = A134594 n

theorem P7454808644564073941.correct : P7454808644564073941.Spec := by
  intro n
  induction n with
  | zero => simp [A134594, A134594.P7454808644564073941.a, A134594.P18284746357933972269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A134594, Nat.add_sub_cancel, A134594.P7454808644564073941.a, A134594.P18284746357933972269.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A134594

/-! ## A134594.P4418051445325930528

`record[5*(1-n)²-(2*n)²]`
-/

namespace A134594.P4418051445325930528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (1 - (n : ℤ)) ^ 2 - ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A134594.P4418051445325930528

namespace A134594

/-- `record[5*(1-n)²-(2*n)²]` -/
def P4418051445325930528.Spec : Prop :=
  ∀ n, P4418051445325930528.a n = A134594 n

end A134594

/-! ## A134594.P10765834494610878681

`((n+1)*(a(n-1)+n)+4)/n` with `a(0)=5`
-/

namespace A134594.P10765834494610878681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  ((n + 1 : ℚ) * (a (n - 1) + (n : ℚ)) + 4) / (n : ℚ)

end

end A134594.P10765834494610878681

namespace A134594

/-- `((n+1)*(a(n-1)+n)+4)/n` -/
def P10765834494610878681.Spec : Prop :=
  ∀ n, P10765834494610878681.a n = (A134594 n : ℚ)

end A134594

/-! ## A134594.P8196430682922286623

`∑[record[A000265(n+10)]]`
-/

namespace A134594.P8196430682922286623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 10)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P8196430682922286623

namespace A134594

/-- `∑[record[A000265(n+10)]]` -/
def P8196430682922286623.Spec : Prop :=
  ∀ n, P8196430682922286623.a n = A134594 n

end A134594

/-! ## A134594.P5227125550278994959

`∑[A040012(n)+2*n+1]`
-/

namespace A134594.P5227125550278994959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040012 n + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P5227125550278994959

namespace A134594

/-- `∑[A040012(n)+2*n+1]` -/
def P5227125550278994959.Spec : Prop :=
  ∀ n, P5227125550278994959.a n = A134594 n

end A134594

/-! ## A134594.P12463334098946972810

`∑[A040013(2*n)+2*n+1]`
-/

namespace A134594.P12463334098946972810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040013 (2 * n) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P12463334098946972810

namespace A134594

/-- `∑[A040013(2*n)+2*n+1]` -/
def P12463334098946972810.Spec : Prop :=
  ∀ n, P12463334098946972810.a n = A134594 n

end A134594

/-! ## A134594.P14189060998924724755

`∑[A040015(2*n)+2*n+1]`
-/

namespace A134594.P14189060998924724755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 (2 * n) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P14189060998924724755

namespace A134594

/-- `∑[A040015(2*n)+2*n+1]` -/
def P14189060998924724755.Spec : Prop :=
  ∀ n, P14189060998924724755.a n = A134594 n

end A134594

/-! ## A134594.P9661164869119457338

`∑[A040019(2*n)+2*n+1]`
-/

namespace A134594.P9661164869119457338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (2 * n) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P9661164869119457338

namespace A134594

/-- `∑[A040019(2*n)+2*n+1]` -/
def P9661164869119457338.Spec : Prop :=
  ∀ n, P9661164869119457338.a n = A134594 n

end A134594

/-! ## A134594.P14263623557369638992

`∑[A040020(n)+A004273(n)]`
-/

namespace A134594.P14263623557369638992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P14263623557369638992

namespace A134594

/-- `∑[A040020(n)+A004273(n)]` -/
def P14263623557369638992.Spec : Prop :=
  ∀ n, P14263623557369638992.a n = A134594 n

end A134594

/-! ## A134594.P13623468158371408952

`Δ[A000466(n)+∑[n²]]`
-/

namespace A134594.P13623468158371408952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134594.P13623468158371408952

namespace A134594

/-- `Δ[A000466(n)+∑[n²]]` -/
def P13623468158371408952.Spec : Prop :=
  ∀ n, P13623468158371408952.a n = A134594 n

end A134594

/-! ## A134594.P1939564778390606729

`Δ[A016742(n)+∑[n²]]`
-/

namespace A134594.P1939564778390606729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A134594.P1939564778390606729

namespace A134594

/-- `Δ[A016742(n)+∑[n²]]` -/
def P1939564778390606729.Spec : Prop :=
  ∀ n, P1939564778390606729.a n = A134594 n

end A134594

/-! ## A134594.P16802527421356482609

`xor(2, A028566(n+1)-2)`
-/

namespace A134594.P16802527421356482609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A028566 (n + 1) - 2)

end

end A134594.P16802527421356482609

namespace A134594

/-- `xor(2, A028566(n+1)-2)` -/
def P16802527421356482609.Spec : Prop :=
  ∀ n, P16802527421356482609.a n = A134594 n

end A134594

/-! ## A134594.P13040108040610457011

`∑[A130773(A171463(n+1)+1)]`
-/

namespace A134594.P13040108040610457011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A171463 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P13040108040610457011

namespace A134594

/-- `∑[A130773(A171463(n+1)+1)]` -/
def P13040108040610457011.Spec : Prop :=
  ∀ n, P13040108040610457011.a n = A134594 n

end A134594

/-! ## A134594.P1606508737654514328

`∑[record[A356480(n+2)]]`
-/

namespace A134594.P1606508737654514328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356480 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A134594.P1606508737654514328

namespace A134594

/-- `∑[record[A356480(n+2)]]` -/
def P1606508737654514328.Spec : Prop :=
  ∀ n, P1606508737654514328.a n = A134594 n

end A134594

/-! ## A134594.P11199075044885063847

`A109161(∑[n+1])`
-/

namespace A134594.P11199075044885063847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109161 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A134594.P11199075044885063847

namespace A134594

/-- `A109161(∑[n+1])` -/
def P11199075044885063847.Spec : Prop :=
  ∀ n, P11199075044885063847.a n = A134594 n

end A134594

/-!
# A134596: The largest n-digit primeval number A072857.

The programs for A134596, there is no canonical definition to state claims against.
-/

/-! ## A134596.P13942830421520684131

`A076449(A076730(n+1))`
-/

namespace A134596.P13942830421520684131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (A076730 (n + 1)).toNat

end

end A134596.P13942830421520684131

/-! ## A134596.P884275997955714216

`A076449(A134597(n+1))`
-/

namespace A134596.P884275997955714216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (A134597 (n + 1)).toNat

end

end A134596.P884275997955714216

/-! ## A134596.P945569595700485989

`A076449(record[A134597(∏{e}[n, #])])`
-/

namespace A134596.P945569595700485989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134597 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076449 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A134596.P945569595700485989

/-!
# A134597: a(n) gives the maximal value of A075053(m) for any n-digit number m.

The programs for A134597, there is no canonical definition to state claims against.
-/

/-! ## A134597.P13836882733752213582

`A076730(comp[10*n])`
-/

namespace A134597.P13836882733752213582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076730 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A134597.P13836882733752213582

/-! ## A134597.P8976705097050535028

`A076730(n+1)+char[7]`
-/

namespace A134597.P8976705097050535028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076730 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A134597.P8976705097050535028

/-! ## A134597.P3058019477364372646

`or(floor(n/10), A076730((n+1)/10^val(n+1, 10)))`
-/

namespace A134597.P3058019477364372646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 10⌋ (A076730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))).toNat)

end

end A134597.P3058019477364372646

/-!
# A134599: Sum of digital sums (base 3) of the prime factors of n.

The programs for A134599, there is no canonical definition to state claims against.
-/

/-! ## A134599.P14453702830389774777

`A325121(A166664(n+1))`
-/

namespace A134599.P14453702830389774777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (A166664 (n + 1)).toNat

end

end A134599.P14453702830389774777

