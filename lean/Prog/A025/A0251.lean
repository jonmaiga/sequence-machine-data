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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A025101: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (1, p(1), p(2), ...), t = (F(2), F(3), F(4), ...).

The programs for A025101, there is no canonical definition to state claims against.
-/

/-! ## A025101.P1839490456277682852

`round(ϕ*A024481(n+1))`
-/

namespace A025101.P1839490456277682852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A024481 (n + 1) : ℝ))

end

end A025101.P1839490456277682852

/-! ## A025101.P4251322182937555526

`A007067(A024481(n+1))`
-/

namespace A025101.P4251322182937555526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A024481 (n + 1)).toNat

end

end A025101.P4251322182937555526

/-! ## A025101.P7401738132873011786

`A022342(A024481(n+1)+1)`
-/

namespace A025101.P7401738132873011786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A024481 (n + 1) + 1).toNat

end

end A025101.P7401738132873011786

/-! ## A025101.P14556851042348298301

`A099267(A024481(A043719(n+1)))`
-/

namespace A025101.P14556851042348298301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (A024481 (A043719 (n + 1)).toNat).toNat

end

end A025101.P14556851042348298301

/-! ## A025101.P2171085285827861835

`A099267(A024481(n+1)%A154286(n))`
-/

namespace A025101.P2171085285827861835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (Int.tmod (A024481 (n + 1)) (A154286 n)).toNat

end

end A025101.P2171085285827861835

/-!
# A025102: s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = (composite numbers).

The programs for A025102, there is no canonical definition to state claims against.
-/

/-! ## A025102.P17584897237176341017

`A349832(A231575(n+3))-A349832(n+1)`
-/

namespace A025102.P17584897237176341017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349832 (A231575 (n + 3)).toNat - A349832 (n + 1)

end

end A025102.P17584897237176341017

/-!
# A025103: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (composite numbers), t = (F(2), F(3), F(4), ...).

The programs for A025103, there is no canonical definition to state claims against.
-/

/-! ## A025103.P12645514871611309471

`A020639(A003123(n))*A024874(n+2)`
-/

namespace A025103.P12645514871611309471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003123 n).toNat * A024874 (n + 2)

end

end A025103.P12645514871611309471

/-! ## A025103.P8668078036167249642

`A024874(n+2)*A135975(A000112(n))`
-/

namespace A025103.P8668078036167249642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024874 (n + 2) * A135975 (A000112 n).toNat

end

end A025103.P8668078036167249642

/-!
# A025104: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (composite numbers), t = (odd natural numbers).

The programs for A025104, there is no canonical definition to state claims against.
-/

/-! ## A025104.P9460348988545779983

`A106285(A106305(n+1))+A106284(2*(n+2))`
-/

namespace A025104.P9460348988545779983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106285 (A106305 (n + 1)).toNat + A106284 (2 * (n + 2))

end

end A025104.P9460348988545779983

/-!
# A025105: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...).

The programs for A025105, the canonical program `A025105.P5336838899730898867` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025105 has offset 1).

The definition of A025105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025105.P5336838899730898867

`round(ϕ*A024591(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025105

/-- `round(ϕ*A024591(n+1))` -/
def P5336838899730898867.Spec : Prop :=
  ∀ n, P5336838899730898867.a n = A025105 (n + 1)

theorem P5336838899730898867.correct : P5336838899730898867.Spec := by
  intro n
  simp only [A025105, Nat.add_sub_cancel]

end A025105

/-! ## A025105.P7169711236477550961

`A023610(n+2)-A024458(n+4)`
-/

namespace A025105.P7169711236477550961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (n + 2) - A024458 (n + 4)

end

end A025105.P7169711236477550961

namespace A025105

/-- `A023610(n+2)-A024458(n+4)` -/
def P7169711236477550961.Spec : Prop :=
  ∀ n, P7169711236477550961.a n = A025105 (n + 1)

end A025105

/-! ## A025105.P4610060194809614460

`(A025092(n+1)+A025082(n+1))/2`
-/

namespace A025105.P4610060194809614460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025092 (n + 1) + A025082 (n + 1) : ℚ) / 2

end

end A025105.P4610060194809614460

namespace A025105

/-- `(A025092(n+1)+A025082(n+1))/2` -/
def P4610060194809614460.Spec : Prop :=
  ∀ n, P4610060194809614460.a n = (A025105 (n + 1) : ℚ)

end A025105

/-! ## A025105.P14197454233521279591

`A213587(A080827(n+1)+2+n)`
-/

namespace A025105.P14197454233521279591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213587 (A080827 (n + 1) + 2 + (n : ℤ)).toNat

end

end A025105.P14197454233521279591

namespace A025105

/-- `A213587(A080827(n+1)+2+n)` -/
def P14197454233521279591.Spec : Prop :=
  ∀ n, P14197454233521279591.a n = A025105 (n + 1)

end A025105

/-! ## A025105.P13260078905221682662

`A213587(A099392(n+2)+n+2)`
-/

namespace A025105.P13260078905221682662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213587 (A099392 (n + 2) + (n + 2 : ℤ)).toNat

end

end A025105.P13260078905221682662

namespace A025105

/-- `A213587(A099392(n+2)+n+2)` -/
def P13260078905221682662.Spec : Prop :=
  ∀ n, P13260078905221682662.a n = A025105 (n + 1)

end A025105

/-!
# A025106: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = (odd natural numbers).

The programs for A025106, the canonical program `A025106.P14413199365891504528` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025106 has offset 1).

The definition of A025106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025106.P14413199365891504528

`A024463(n+3)-(2*n+5)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025106

/-- `A024463(n+3)-(2*n+5)` -/
def P14413199365891504528.Spec : Prop :=
  ∀ n, P14413199365891504528.a n = A025106 (n + 1)

theorem P14413199365891504528.correct : P14413199365891504528.Spec := by
  intro n
  simp only [A025106, Nat.add_sub_cancel]

end A025106

/-! ## A025106.P7643483998434571347

`A213774(A061925(n+2))`
-/

namespace A025106.P7643483998434571347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A061925 (n + 2)).toNat

end

end A025106.P7643483998434571347

namespace A025106

/-- `A213774(A061925(n+2))` -/
def P7643483998434571347.Spec : Prop :=
  ∀ n, P7643483998434571347.a n = A025106 (n + 1)

end A025106

/-! ## A025106.P10576978210312855950

`A213774(A116940(n)+3)`
-/

namespace A025106.P10576978210312855950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A116940 n + 3).toNat

end

end A025106.P10576978210312855950

namespace A025106

/-- `A213774(A116940(n)+3)` -/
def P10576978210312855950.Spec : Prop :=
  ∀ n, P10576978210312855950.a n = A025106 (n + 1)

end A025106

/-! ## A025106.P11271157583928343052

`A213774(A074148(n+1)+2)`
-/

namespace A025106.P11271157583928343052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A074148 (n + 1) + 2).toNat

end

end A025106.P11271157583928343052

namespace A025106

/-- `A213774(A074148(n+1)+2)` -/
def P11271157583928343052.Spec : Prop :=
  ∀ n, P11271157583928343052.a n = A025106 (n + 1)

end A025106

/-! ## A025106.P5273706258397595126

`A213774(A080827(n+1)+2+n)`
-/

namespace A025106.P5273706258397595126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (A080827 (n + 1) + 2 + (n : ℤ)).toNat

end

end A025106.P5273706258397595126

namespace A025106

/-- `A213774(A080827(n+1)+2+n)` -/
def P5273706258397595126.Spec : Prop :=
  ∀ n, P5273706258397595126.a n = A025106 (n + 1)

end A025106

/-! ## A025106.P13577977903154905604

`A213774(∑[A005408(A065033(n))])`
-/

namespace A025106.P13577977903154905604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213774 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025106.P13577977903154905604

namespace A025106

/-- `A213774(∑[A005408(A065033(n))])` -/
def P13577977903154905604.Spec : Prop :=
  ∀ n, P13577977903154905604.a n = A025106 (n + 1)

end A025106

/-!
# A025107: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = A000201 (lower Wythoff sequence).

The programs for A025107, there is no canonical definition to state claims against.
-/

/-! ## A025107.P2682430519888396355

`A024464(n+3)-A000201(n+3)`
-/

namespace A025107.P2682430519888396355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024464 (n + 3) - A000201 (n + 3)

end

end A025107.P2682430519888396355

/-! ## A025107.P4887423679066918711

`A024464(n+3)-A005206(A001950(n+3))`
-/

namespace A025107.P4887423679066918711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024464 (n + 3) - A005206 (A001950 (n + 3)).toNat

end

end A025107.P4887423679066918711

/-! ## A025107.P6670034514191478667

`A024464(n+3)-A005206(A003622(n+3))`
-/

namespace A025107.P6670034514191478667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024464 (n + 3) - A005206 (A003622 (n + 3)).toNat

end

end A025107.P6670034514191478667

/-! ## A025107.P2603111852901806736

`(A025094(n+1)+A025084(n+1))/2`
-/

namespace A025107.P2603111852901806736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025094 (n + 1) + A025084 (n + 1) : ℚ) / 2

end

end A025107.P2603111852901806736

/-! ## A025107.P11150211398862627443

`A025084(n+1)+A014682(A025094(n+1)-A025084(n+1))`
-/

namespace A025107.P11150211398862627443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025084 (n + 1) + A014682 (A025094 (n + 1) - A025084 (n + 1)).toNat

end

end A025107.P11150211398862627443

/-!
# A025108: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = A001950 (upper Wythoff sequence).

The programs for A025108, there is no canonical definition to state claims against.
-/

/-! ## A025108.P10612534906968908480

`A024465(n+3)-A001950(n+3)`
-/

namespace A025108.P10612534906968908480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024465 (n + 3) - A001950 (n + 3)

end

end A025108.P10612534906968908480

/-!
# A025109: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = (F(2), F(3), F(4), ...), t = A023533.

The programs for A025109, there is no canonical definition to state claims against.
-/

/-! ## A025109.P17132874753351574064

`A024466(n+3)-A023533(n+3)`
-/

namespace A025109.P17132874753351574064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024466 (n + 3) - A023533 (n + 3)

end

end A025109.P17132874753351574064

/-! ## A025109.P13119235789784733444

`(A025096(n+2)+A025086(n+2))/2`
-/

namespace A025109.P13119235789784733444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025096 (n + 2) + A025086 (n + 2) : ℚ) / 2

end

end A025109.P13119235789784733444

/-! ## A025109.P7090349490528233074

`A001911(A008619(n))-A025110(n+1)`
-/

namespace A025109.P7090349490528233074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A008619 n).toNat - A025110 (n + 1)

end

end A025109.P7090349490528233074

/-! ## A025109.P8149832743098369576

`A024595(n+1)+A024596(n+1)-A025110(n+1)`
-/

namespace A025109.P8149832743098369576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024595 (n + 1) + (A024596 (n + 1) - A025110 (n + 1))

end

end A025109.P8149832743098369576

/-! ## A025109.P15028618208991992246

`A001911(A008619(n))-(A025097(n+1)+A025087(n+1))/2`
-/

namespace A025109.P15028618208991992246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001911 (A008619 n).toNat : ℚ) - (A025097 (n + 1) + A025087 (n + 1) : ℚ) / 2

end

end A025109.P15028618208991992246

/-! ## A025109.P9049864091039906157

`A014682(A025096(n+2)+A025086(n+2))`
-/

namespace A025109.P9049864091039906157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A025096 (n + 2) + A025086 (n + 2)).toNat

end

end A025109.P9049864091039906157

/-! ## A025109.P18058153363820527058

`A273943(A025096(n+2)+A025086(n+2))`
-/

namespace A025109.P18058153363820527058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A025096 (n + 2) + A025086 (n + 2)).toNat

end

end A025109.P18058153363820527058

/-!
# A025110: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = A014306.

The programs for A025110, there is no canonical definition to state claims against.
-/

/-! ## A025110.P9853396516867340025

`A024467(n+3)-A014306(n+3)`
-/

namespace A025110.P9853396516867340025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024467 (n + 3) - A014306 (n + 3)

end

end A025110.P9853396516867340025

/-! ## A025110.P15373372535466345778

`A001911(A008619(n))-A025109(n+2)`
-/

namespace A025110.P15373372535466345778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A008619 n).toNat - A025109 (n + 2)

end

end A025110.P15373372535466345778

/-! ## A025110.P2237122938549849353

`floor(A024596(n+3)/ϕ)`
-/

namespace A025110.P2237122938549849353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024596 (n + 3) : ℝ) / Real.goldenRatio⌋

end

end A025110.P2237122938549849353

/-! ## A025110.P11911693820757259475

`(A025097(n+1)+A025087(n+1))/2`
-/

namespace A025110.P11911693820757259475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025097 (n + 1) + A025087 (n + 1) : ℚ) / 2

end

end A025110.P11911693820757259475

/-! ## A025110.P7853044681764237442

`A025087(n+1)+A004525(A025097(n+1)-A025087(n+1))`
-/

namespace A025110.P7853044681764237442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025087 (n + 1) + A004525 (A025097 (n + 1) - A025087 (n + 1)).toNat

end

end A025110.P7853044681764237442

/-!
# A025111: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (F(2), F(3), F(4), ...), t = (primes).

The programs for A025111, there is no canonical definition to state claims against.
-/

/-! ## A025111.P13618138126297278905

`A024468(n+3)-A065091(n+2)`
-/

namespace A025111.P13618138126297278905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024468 (n + 3) - A065091 (n + 2)

end

end A025111.P13618138126297278905

/-! ## A025111.P3803945914606016840

`A024468(n+3)-A000040(n+3)`
-/

namespace A025111.P3803945914606016840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024468 (n + 3) - A000040 (n + 3)

end

end A025111.P3803945914606016840

/-! ## A025111.P7472179643503425146

`(A025098(n+1)+A025088(n+1))/2`
-/

namespace A025111.P7472179643503425146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025098 (n + 1) + A025088 (n + 1) : ℚ) / 2

end

end A025111.P7472179643503425146

/-! ## A025111.P11300746201544889513

`(A025098(n+1)+A024597(n+3)-A024468(n+3))/2`
-/

namespace A025111.P11300746201544889513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025098 (n + 1) + (A024597 (n + 3) - A024468 (n + 3)) : ℚ) / 2

end

end A025111.P11300746201544889513

/-! ## A025111.P11631049104521768106

`(A025098(n+1)+A024478(n+3)-A024597(n+3))/2`
-/

namespace A025111.P11631049104521768106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025098 (n + 1) + (A024478 (n + 3) - A024597 (n + 3)) : ℚ) / 2

end

end A025111.P11631049104521768106

/-! ## A025111.P12206384182830780325

`(A025098(n+1)+A024478(n+3)%(A024597(n+3)*A033999(n)))/2`
-/

namespace A025111.P12206384182830780325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025098 (n + 1) + Int.tmod (A024478 (n + 3)) (A024597 (n + 3) * A033999 n) : ℚ) / 2

end

end A025111.P12206384182830780325

/-! ## A025111.P6945160514488489846

`(A025098(n+1)+A024478(A252463(2*(n+1))+2)%A024597(n+3))/2`
-/

namespace A025111.P6945160514488489846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025098 (n + 1) + Int.tmod (A024478 (A252463 (2 * (n + 1)) + 2).toNat) (A024597 (n + 3)) : ℚ) / 2

end

end A025111.P6945160514488489846

/-!
# A025112: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = floor(n/2), s = (odd natural numbers).

The programs for A025112, the canonical program `A025112.P18017441301825941982` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025112 has offset 2).

The definition of A025112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025112.P18017441301825941982

`(n+2)*(2*(n+2)²-(n+2)%2*3*(n+2)+1)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025112

/-- `(n+2)*(2*(n+2)²-(n+2)%2*3*(n+2)+1)/6` -/
def P18017441301825941982.Spec : Prop :=
  ∀ n, P18017441301825941982.a n = (A025112 (n + 2) : ℚ)

end A025112

/-! ## A025112.P16154542518813948102

`(n+2)*(4*(n+2)²-3*(n+2)+2+3*(n+2)*(-1)^(n+2))/12`
-/

namespace A025112.P16154542518813948102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((4 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) + 2 + (3 * (n + 2) : ℤ) * (-1) ^ (n + 2)) : ℚ) / 12

end

end A025112.P16154542518813948102

namespace A025112

/-- `(n+2)*(4*(n+2)²-3*(n+2)+2+3*(n+2)*(-1)^(n+2))/12` -/
def P16154542518813948102.Spec : Prop :=
  ∀ n, P16154542518813948102.a n = (A025112 (n + 2) : ℚ)

end A025112

/-! ## A025112.P14148170447627703668

`4*A023855(n+1)-∑[n+1]`
-/

namespace A025112.P14148170447627703668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023855 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025112.P14148170447627703668

namespace A025112

/-- `4*A023855(n+1)-∑[n+1]` -/
def P14148170447627703668.Spec : Prop :=
  ∀ n, P14148170447627703668.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P13875191292605502416

`A122656(n+2)+A005993(n)`
-/

namespace A025112.P13875191292605502416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122656 (n + 2) + A005993 n

end

end A025112.P13875191292605502416

namespace A025112

/-- `A122656(n+2)+A005993(n)` -/
def P13875191292605502416.Spec : Prop :=
  ∀ n, P13875191292605502416.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P16480198009756370257

`A008610(and(n, -2)+n+2)`
-/

namespace A025112.P16480198009756370257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (Int.land (n : ℤ) (-2) + (n + 2 : ℤ)).toNat

end

end A025112.P16480198009756370257

namespace A025112

/-- `A008610(and(n, -2)+n+2)` -/
def P16480198009756370257.Spec : Prop :=
  ∀ n, P16480198009756370257.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P9732433361481963792

`A008610(record[A004443(n)])`
-/

namespace A025112.P9732433361481963792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025112.P9732433361481963792

namespace A025112

/-- `A008610(record[A004443(n)])` -/
def P9732433361481963792.Spec : Prop :=
  ∀ n, P9732433361481963792.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P6675791955569663689

`A008610(A042964(n+1))`
-/

namespace A025112.P6675791955569663689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A042964 (n + 1)).toNat

end

end A025112.P6675791955569663689

namespace A025112

/-- `A008610(A042964(n+1))` -/
def P6675791955569663689.Spec : Prop :=
  ∀ n, P6675791955569663689.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P476535589306300022

`A008610(A053438(n+1))`
-/

namespace A025112.P476535589306300022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A053438 (n + 1)).toNat

end

end A025112.P476535589306300022

namespace A025112

/-- `A008610(A053438(n+1))` -/
def P476535589306300022.Spec : Prop :=
  ∀ n, P476535589306300022.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P1339655580340762787

`A008610(A042963(n+1)+1)`
-/

namespace A025112.P1339655580340762787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A042963 (n + 1) + 1).toNat

end

end A025112.P1339655580340762787

namespace A025112

/-- `A008610(A042963(n+1)+1)` -/
def P1339655580340762787.Spec : Prop :=
  ∀ n, P1339655580340762787.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P15469917227770113732

`A008610(2*A008619(n)+n)`
-/

namespace A025112.P15469917227770113732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (2 * A008619 n + (n : ℤ)).toNat

end

end A025112.P15469917227770113732

namespace A025112

/-- `A008610(2*A008619(n)+n)` -/
def P15469917227770113732.Spec : Prop :=
  ∀ n, P15469917227770113732.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P1632311300321665204

`A008610(A000035(n+1)+2*n+1)`
-/

namespace A025112.P1632311300321665204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A000035 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A025112.P1632311300321665204

namespace A025112

/-- `A008610(A000035(n+1)+2*n+1)` -/
def P1632311300321665204.Spec : Prop :=
  ∀ n, P1632311300321665204.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P14458179102767060795

`A008610(A014577(2*n)+2*n+1)`
-/

namespace A025112.P14458179102767060795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A014577 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A025112.P14458179102767060795

namespace A025112

/-- `A008610(A014577(2*n)+2*n+1)` -/
def P14458179102767060795.Spec : Prop :=
  ∀ n, P14458179102767060795.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P5123560511249268762

`A008610(A008619(n)+A008619(n)+n)`
-/

namespace A025112.P5123560511249268762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008610 (A008619 n + (A008619 n + (n : ℤ))).toNat

end

end A025112.P5123560511249268762

namespace A025112

/-- `A008610(A008619(n)+A008619(n)+n)` -/
def P5123560511249268762.Spec : Prop :=
  ∀ n, P5123560511249268762.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P4262576349696172165

`A295286(2*(n+1))+A001057(n+1)+A000217(n+1)`
-/

namespace A025112.P4262576349696172165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (2 * (n + 1)) + (A001057 (n + 1) + A000217 (n + 1))

end

end A025112.P4262576349696172165

namespace A025112

/-- `A295286(2*(n+1))+A001057(n+1)+A000217(n+1)` -/
def P4262576349696172165.Spec : Prop :=
  ∀ n, P4262576349696172165.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P14406481269826955092

`A295292(2*(n+1))+A001057(n+1)+A000217(n+1)`
-/

namespace A025112.P14406481269826955092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (2 * (n + 1)) + (A001057 (n + 1) + A000217 (n + 1))

end

end A025112.P14406481269826955092

namespace A025112

/-- `A295292(2*(n+1))+A001057(n+1)+A000217(n+1)` -/
def P14406481269826955092.Spec : Prop :=
  ∀ n, P14406481269826955092.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P12103589779454973781

`A295317(2*(n+2))`
-/

namespace A025112.P12103589779454973781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295317 (2 * (n + 2))

end

end A025112.P12103589779454973781

namespace A025112

/-- `A295317(2*(n+2))` -/
def P12103589779454973781.Spec : Prop :=
  ∀ n, P12103589779454973781.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P17065697647297445140

`A295320(2*(n+2))`
-/

namespace A025112.P17065697647297445140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (2 * (n + 2))

end

end A025112.P17065697647297445140

namespace A025112

/-- `A295320(2*(n+2))` -/
def P17065697647297445140.Spec : Prop :=
  ∀ n, P17065697647297445140.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P14183593202980080660

`A296159(2*(n+2))+A295286(2*n+3)`
-/

namespace A025112.P14183593202980080660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (2 * (n + 2)) + A295286 (2 * n + 3)

end

end A025112.P14183593202980080660

namespace A025112

/-- `A296159(2*(n+2))+A295286(2*n+3)` -/
def P14183593202980080660.Spec : Prop :=
  ∀ n, P14183593202980080660.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P1669890974013356970

`A060432(A093353(n+1))`
-/

namespace A025112.P1669890974013356970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (A093353 (n + 1)).toNat

end

end A025112.P1669890974013356970

namespace A025112

/-- `A060432(A093353(n+1))` -/
def P1669890974013356970.Spec : Prop :=
  ∀ n, P1669890974013356970.a n = A025112 (n + 2)

end A025112

/-! ## A025112.P13703616425739858795

`A332028(A079326(n+2))`
-/

namespace A025112.P13703616425739858795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332028 (A079326 (n + 2)).toNat

end

end A025112.P13703616425739858795

namespace A025112

/-- `A332028(A079326(n+2))` -/
def P13703616425739858795.Spec : Prop :=
  ∀ n, P13703616425739858795.a n = A025112 (n + 2)

end A025112

/-!
# A025114: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (odd natural numbers), t = A001950 (upper Wythoff sequence).

The programs for A025114, there is no canonical definition to state claims against.
-/

/-! ## A025114.P6569030991189597511

`A360246(A014234(n+1))-13`
-/

namespace A025114.P6569030991189597511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (A014234 (n + 1)).toNat - 13

end

end A025114.P6569030991189597511

/-!
# A025115: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A005408 (odd natural numbers), t = A023533.

The programs for A025115, there is no canonical definition to state claims against.
-/

/-! ## A025115.P3500079600635430583

`A008619(n)²-A025116(n+1)`
-/

namespace A025115.P3500079600635430583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A025116 (n + 1)

end

end A025115.P3500079600635430583

/-! ## A025115.P13450368564425093413

`(A004526(n)+1)²-A025116(n+1)`
-/

namespace A025115.P13450368564425093413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) ^ 2 - A025116 (n + 1)

end

end A025115.P13450368564425093413

/-! ## A025115.P13060150204442743946

`∑[A193356(n+1)]-A025116(n+1)`
-/

namespace A025115.P13060150204442743946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025116 (n + 1)

end

end A025115.P13060150204442743946

/-! ## A025115.P6215530095166125368

`(A008615(3*n)+1)²-A025116(n+1)`
-/

namespace A025115.P6215530095166125368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008615 (3 * n) + 1) ^ 2 - A025116 (n + 1)

end

end A025115.P6215530095166125368

/-! ## A025115.P6771670562652640787

`A004273(A024865(n+2)%A162357(n+1))`
-/

namespace A025115.P6771670562652640787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A024865 (n + 2)) (A162357 (n + 1))).toNat

end

end A025115.P6771670562652640787

/-!
# A025116: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = (odd natural numbers), t = A014306.

The programs for A025116, there is no canonical definition to state claims against.
-/

/-! ## A025116.P11785011182433750015

`A008619(n)²-A025115(n+1)`
-/

namespace A025116.P11785011182433750015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A025115 (n + 1)

end

end A025116.P11785011182433750015

/-! ## A025116.P12034876921490500526

`(A004526(n)+1)²-A025115(n+1)`
-/

namespace A025116.P12034876921490500526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) ^ 2 - A025115 (n + 1)

end

end A025116.P12034876921490500526

/-! ## A025116.P12656139785382516093

`∑[A193356(n+1)]-A025115(n+1)`
-/

namespace A025116.P12656139785382516093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025115 (n + 1)

end

end A025116.P12656139785382516093

/-! ## A025116.P9171542622758632446

`∑[A110659(a(n-1))]²-A025115(n+1)` with `a(0)=1`
-/

namespace A025116.P9171542622758632446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A110659 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A025115 (n + 1)

end

end A025116.P9171542622758632446

/-! ## A025116.P13892968549618484487

`A000027(∑[and(1, n+1)]²-A025115(n+1))`
-/

namespace A025116.P13892968549618484487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A025115 (n + 1)).toNat

end

end A025116.P13892968549618484487

/-!
# A025118: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A000201 (lower Wythoff sequence).

The programs for A025118, there is no canonical definition to state claims against.
-/

/-! ## A025118.P16529441555246467968

`A025094(n+1)-A321537(A025174(n))`
-/

namespace A025118.P16529441555246467968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025094 (n + 1) - A321537 (A025174 n).toNat

end

end A025118.P16529441555246467968

/-! ## A025118.P6957967597912388017

`2*A025107(n+1)-A025084(n+1)-A321537(A025174(n))`
-/

namespace A025118.P6957967597912388017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025107 (n + 1) - A025084 (n + 1) - A321537 (A025174 n).toNat

end

end A025118.P6957967597912388017

/-!
# A025119: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A000201 (lower Wythoff sequence), t = A001950 (upper Wythoff sequence).

The programs for A025119, there is no canonical definition to state claims against.
-/

/-! ## A025119.P10697058319783235448

`A025122(n+1)-A024864(n+2)`
-/

namespace A025119.P10697058319783235448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025122 (n + 1) - A024864 (n + 2)

end

end A025119.P10697058319783235448

/-! ## A025119.P8030493316523274493

`A025122(n+1)-(A024863(n+2)+A023856(n+1))`
-/

namespace A025119.P8030493316523274493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025122 (n + 1) - (A024863 (n + 2) + A023856 (n + 1))

end

end A025119.P8030493316523274493

/-! ## A025119.P16808498044312273748

`A023667(n+2)-A024689(n+2)-A024864(n+2)`
-/

namespace A025119.P16808498044312273748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 2) - A024689 (n + 2) - A024864 (n + 2)

end

end A025119.P16808498044312273748

/-!
# A025120: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A000201 (lower Wythoff sequence), t = A023533.

The programs for A025120, there is no canonical definition to state claims against.
-/

/-! ## A025120.P2645057536386565273

`A025123(n+1)-A024865(n+2)`
-/

namespace A025120.P2645057536386565273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025123 (n + 1) - A024865 (n + 2)

end

end A025120.P2645057536386565273

/-! ## A025120.P8286380549352382217

`A025123(n+1)-(∑[A027656(n)]-A024866(n+2))`
-/

namespace A025120.P8286380549352382217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025123 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A024866 (n + 2))

end

end A025120.P8286380549352382217

/-! ## A025120.P4512411931259035165

`A025123(n+1)-(A000217(A008619(n))-A024866(n+2))`
-/

namespace A025120.P4512411931259035165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025123 (n + 1) - (A000217 (A008619 n).toNat - A024866 (n + 2))

end

end A025120.P4512411931259035165

/-! ## A025120.P8939077311821114121

`A025123(n+1)-(Δ[A006918(n)]-A024866(n+2))`
-/

namespace A025120.P8939077311821114121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025123 (n + 1) - (f1 (n + 1) - f1 n - A024866 (n + 2))

end

end A025120.P8939077311821114121

/-!
# A025121: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A000201 (lower Wythoff sequence), t = A014306.

The programs for A025121, there is no canonical definition to state claims against.
-/

/-! ## A025121.P17058605381414662758

`A025124(n+1)-A024866(n+2)`
-/

namespace A025121.P17058605381414662758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025124 (n + 1) - A024866 (n + 2)

end

end A025121.P17058605381414662758

/-! ## A025121.P12045803843060642309

`A025124(n+1)+A024865(n+2)-A008805(n)`
-/

namespace A025121.P12045803843060642309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025124 (n + 1) + (A024865 (n + 2) - A008805 n)

end

end A025121.P12045803843060642309

/-! ## A025121.P4733586805559069527

`A025124(n+1)+A024865(n+2)-∑[A027656(n)]`
-/

namespace A025121.P4733586805559069527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025124 (n + 1) + (A024865 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025121.P4733586805559069527

/-! ## A025121.P10771517036844111859

`A025124(n+1)+A024865(n+2)-A000217(A008619(n))`
-/

namespace A025121.P10771517036844111859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025124 (n + 1) + (A024865 (n + 2) - A000217 (A008619 n).toNat)

end

end A025121.P10771517036844111859

/-! ## A025121.P14316053080960618207

`A088207(A008619(n))-(A025123(n+1)+A024866(n+2))`
-/

namespace A025121.P14316053080960618207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (A008619 n).toNat - (A025123 (n + 1) + A024866 (n + 2))

end

end A025121.P14316053080960618207

/-! ## A025121.P10439623279001317411

`A025124(n+1)-(∑[A142150(n+2)]-A024865(n+2))`
-/

namespace A025121.P10439623279001317411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025124 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j - A024865 (n + 2))

end

end A025121.P10439623279001317411

/-!
# A025122: s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A001950 (upper Wythoff sequence).

The programs for A025122, there is no canonical definition to state claims against.
-/

/-! ## A025122.P9158477130283422659

`A025119(n+1)+A024864(n+2)`
-/

namespace A025122.P9158477130283422659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025119 (n + 1) + A024864 (n + 2)

end

end A025122.P9158477130283422659

/-! ## A025122.P3807409289423349676

`A023856(n+1)+A025119(n+1)+A024863(n+2)`
-/

namespace A025122.P3807409289423349676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + (A025119 (n + 1) + A024863 (n + 2))

end

end A025122.P3807409289423349676

/-! ## A025122.P17877048466398341918

`A023667(n+2)-A024689(n+2)`
-/

namespace A025122.P17877048466398341918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023667 (n + 2) - A024689 (n + 2)

end

end A025122.P17877048466398341918

/-!
# A025123: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A001950 (upper Wythoff sequence), t = A023533.

The programs for A025123, there is no canonical definition to state claims against.
-/

/-! ## A025123.P13529743770034216277

`A025120(n+1)+A024865(n+2)`
-/

namespace A025123.P13529743770034216277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025120 (n + 1) + A024865 (n + 2)

end

end A025123.P13529743770034216277

/-! ## A025123.P14879504139338440468

`A088207(floor(n/2)+1)-A025124(n+1)`
-/

namespace A025123.P14879504139338440468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (⌊(n : ℚ) / 2⌋ + 1).toNat - A025124 (n + 1)

end

end A025123.P14879504139338440468

/-! ## A025123.P16830769568853763384

`A025120(n+1)+A008805(n)-A024866(n+2)`
-/

namespace A025123.P16830769568853763384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025120 (n + 1) + (A008805 n - A024866 (n + 2))

end

end A025123.P16830769568853763384

/-! ## A025123.P19763004034594374

`A025120(n+1)+∑[A027656(n)]-A024866(n+2)`
-/

namespace A025123.P19763004034594374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025120 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A024866 (n + 2))

end

end A025123.P19763004034594374

/-! ## A025123.P2766307790267724198

`A025120(n+1)+Δ[A006918(n)]-A024866(n+2)`
-/

namespace A025123.P2766307790267724198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025120 (n + 1) + (f1 (n + 1) - f1 n - A024866 (n + 2))

end

end A025123.P2766307790267724198

/-! ## A025123.P8662891084676647336

`A004956(A025120(n+1)%A180022(n+1))`
-/

namespace A025123.P8662891084676647336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (Int.tmod (A025120 (n + 1)) (A180022 (n + 1))).toNat

end

end A025123.P8662891084676647336

/-! ## A025123.P9313822552779207888

`A128760(A082286(n))+A004956(A025120(n+1))`
-/

namespace A025123.P9313822552779207888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 (A082286 n).toNat + A004956 (A025120 (n + 1)).toNat

end

end A025123.P9313822552779207888

/-! ## A025123.P3866570014045455570

`A004956(A025120(n+1)%A304502(n))`
-/

namespace A025123.P3866570014045455570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (Int.tmod (A025120 (n + 1)) (A304502 n)).toNat

end

end A025123.P3866570014045455570

/-! ## A025123.P6897363566802616341

`A000188(A236255(n+1))*A004956(A025120(n+1))`
-/

namespace A025123.P6897363566802616341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A236255 (n + 1)).toNat * A004956 (A025120 (n + 1)).toNat

end

end A025123.P6897363566802616341

/-!
# A025124: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = [ n/2 ], s = A001950 (upper Wythoff sequence), t = A014306.

The programs for A025124, there is no canonical definition to state claims against.
-/

/-! ## A025124.P11016659541253958991

`A025121(n+1)+A024866(n+2)`
-/

namespace A025124.P11016659541253958991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025121 (n + 1) + A024866 (n + 2)

end

end A025124.P11016659541253958991

/-! ## A025124.P11720569119475733210

`A088207(A008619(n))-A025123(n+1)`
-/

namespace A025124.P11720569119475733210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 (A008619 n).toNat - A025123 (n + 1)

end

end A025124.P11720569119475733210

/-! ## A025124.P14934048025656891185

`A025121(n+1)+A008805(n)-A024865(n+2)`
-/

namespace A025124.P14934048025656891185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025121 (n + 1) + (A008805 n - A024865 (n + 2))

end

end A025124.P14934048025656891185

/-! ## A025124.P17440489926433338304

`A025121(n+1)+∑[A027656(n)]-A024865(n+2)`
-/

namespace A025124.P17440489926433338304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025121 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A024865 (n + 2))

end

end A025124.P17440489926433338304

/-! ## A025124.P8911495864184644022

`A025121(n+1)+A000217(A008619(n))-A024865(n+2)`
-/

namespace A025124.P8911495864184644022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025121 (n + 1) + (A000217 (A008619 n).toNat - A024865 (n + 2))

end

end A025124.P8911495864184644022

/-! ## A025124.P16796393303903056459

`A025121(n+1)+∑[A142150(n+2)]-A024865(n+2)`
-/

namespace A025124.P16796393303903056459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025121 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A024865 (n + 2))

end

end A025124.P16796393303903056459

/-!
# A025125: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n-k+1), where k = floor(n/2), s = A023533.

The programs for A025125, there is no canonical definition to state claims against.
-/

/-! ## A025125.P534966716268876347

`floor(A023670(n+2)/2)`
-/

namespace A025125.P534966716268876347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023670 (n + 2) : ℚ) / 2⌋

end

end A025125.P534966716268876347

/-! ## A025125.P2259211735636333633

`ceil(∑[Δ[A023670(n+1)]/2])`
-/

namespace A025125.P2259211735636333633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023670 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A025125.P2259211735636333633

/-! ## A025125.P6436797942713469136

`A023670(n+2)-A024692(n+2)`
-/

namespace A025125.P6436797942713469136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023670 (n + 2) - A024692 (n + 2)

end

end A025125.P6436797942713469136

/-! ## A025125.P12826421460861161446

`A024692(n+1)-Δ[A024693(n+1)]`
-/

namespace A025125.P12826421460861161446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024692 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025125.P12826421460861161446

/-! ## A025125.P1985222211659638913

`∑{e}[A023670(n+2)-C(A233583(n+1)-n, 2), #]`
-/

namespace A025125.P1985222211659638913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023670 (n + 2) - (Nat.choose (A233583 (n + 1) - (n : ℤ)).toNat 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025125.P1985222211659638913

/-! ## A025125.P13315153855512213938

`A066247(n^A023670(n+2))`
-/

namespace A025125.P13315153855512213938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A023670 (n + 2) : ℤ))).toNat

end

end A025125.P13315153855512213938

/-! ## A025125.P9801186339305105873

`(A023670(n+2)/2)^A017198(n)`
-/

namespace A025125.P9801186339305105873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023670 (n + 2) : ℚ) / 2) ^ (A017198 n : ℤ)

end

end A025125.P9801186339305105873

/-! ## A025125.P8339743890769802851

`(A023670(n+2)/2)^A033576(n)`
-/

namespace A025125.P8339743890769802851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023670 (n + 2) : ℚ) / 2) ^ (A033576 n : ℤ)

end

end A025125.P8339743890769802851

/-! ## A025125.P13352314502912901953

`(A023670(n+2)/2)^A158546(n)`
-/

namespace A025125.P13352314502912901953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023670 (n + 2) : ℚ) / 2) ^ (A158546 n : ℤ)

end

end A025125.P13352314502912901953

/-! ## A025125.P17522086920837090139

`C(n*A023670(n+2), A233583(2*n+1))`
-/

namespace A025125.P17522086920837090139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * A023670 (n + 2)).toNat (A233583 (2 * n + 1)).toNat

end

end A025125.P17522086920837090139

/-! ## A025125.P892815574896071941

`A157928(A023670(n+2)^A035207(n+1))`
-/

namespace A025125.P892815574896071941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (SequenceMachineLib.roundAway ((A023670 (n + 2) : ℚ) ^ (A035207 (n + 1) : ℤ))).toNat

end

end A025125.P892815574896071941

/-!
# A025126: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A023533, t = A014306.

The programs for A025126, there is no canonical definition to state claims against.
-/

/-! ## A025126.P6333936916008910061

`∑[A024692(n+1)-A025125(n+1)]`
-/

namespace A025126.P6333936916008910061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024692 (n + 1) - A025125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025126.P6333936916008910061

/-! ## A025126.P15685968039276976792

`A025076(n+1)+A024890(n+2)-A025128(n+1)`
-/

namespace A025126.P15685968039276976792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025076 (n + 1) + (A024890 (n + 2) - A025128 (n + 1))

end

end A025126.P15685968039276976792

/-! ## A025126.P7805597669685331839

`A024693(n+2)`
-/

namespace A025126.P7805597669685331839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (n + 2)

end

end A025126.P7805597669685331839

/-! ## A025126.P106252746318911833

`a(n-1)-floor(Δ[A023670(n+1)]/2)` with `a(0)=1`
-/

namespace A025126.P106252746318911833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(f1 (n + 1) - f1 n : ℚ) / 2⌋

end

end A025126.P106252746318911833

/-! ## A025126.P17019800727349167448

`∑[A024692(n+1)-A066247(n^A023670(n+2))]`
-/

namespace A025126.P17019800727349167448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024692 (n + 1) - A066247 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A023670 (n + 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025126.P17019800727349167448

/-!
# A025127: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n-k+1), where k = floor(n/2), s = A023533, t = A000040 (primes).

The programs for A025127, there is no canonical definition to state claims against.
-/

/-! ## A025127.P3967783373688188533

`A024328(A077168(n)+2)`
-/

namespace A025127.P3967783373688188533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024328 (A077168 n + 2).toNat

end

end A025127.P3967783373688188533

/-! ## A025127.P9730747302358798531

`A000188(A024328(n+3)²)`
-/

namespace A025127.P9730747302358798531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A024328 (n + 3) ^ 2).toNat

end

end A025127.P9730747302358798531

/-! ## A025127.P10105035326997526719

`A000196(A024328(n+3)²)`
-/

namespace A025127.P10105035326997526719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A024328 (n + 3) ^ 2).toNat

end

end A025127.P10105035326997526719

/-! ## A025127.P8012769490335166869

`A024328(A187829(n+2)+1)`
-/

namespace A025127.P8012769490335166869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024328 (A187829 (n + 2) + 1).toNat

end

end A025127.P8012769490335166869

/-! ## A025127.P9874497446680489986

`filter[A024328(n+3), A273592(#)]`
-/

namespace A025127.P9874497446680489986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024328 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A025127.P9874497446680489986

/-!
# A025128: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n-k+1), where k = [ n/2 ], s = A014306.

The programs for A025128, there is no canonical definition to state claims against.
-/

/-! ## A025128.P8171226887910294212

`A025076(n+1)+A024890(n+2)-A025126(n+1)`
-/

namespace A025128.P8171226887910294212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025076 (n + 1) + (A024890 (n + 2) - A025126 (n + 1))

end

end A025128.P8171226887910294212

/-! ## A025128.P5188632509607220510

`floor(A023673(n+2)/2)`
-/

namespace A025128.P5188632509607220510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023673 (n + 2) : ℚ) / 2⌋

end

end A025128.P5188632509607220510

/-! ## A025128.P2893449901158739446

`A004526(A023673(n+2))`
-/

namespace A025128.P2893449901158739446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023673 (n + 2)).toNat

end

end A025128.P2893449901158739446

/-! ## A025128.P14805447177513172523

`A023673(n+2)-A024695(n+2)`
-/

namespace A025128.P14805447177513172523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023673 (n + 2) - A024695 (n + 2)

end

end A025128.P14805447177513172523

/-! ## A025128.P10687974040223406536

`A002265(2*A023673(n+2))`
-/

namespace A025128.P10687974040223406536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A023673 (n + 2)).toNat

end

end A025128.P10687974040223406536

/-! ## A025128.P6482508299969129438

`A124072(2*A023673(n+2))`
-/

namespace A025128.P6482508299969129438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (2 * A023673 (n + 2)).toNat

end

end A025128.P6482508299969129438

/-!
# A025129: a(n) = p(1)p(n) + p(2)p(n-1) + ... + p(k)p(n-k+1), where k = [ n/2 ], p = A000040, the primes.

The programs for A025129, there is no canonical definition to state claims against.
-/

/-! ## A025129.P15440907676793614016

`A014342(n+1)-A024697(n+1)`
-/

namespace A025129.P15440907676793614016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) - A024697 (n + 1)

end

end A025129.P15440907676793614016

/-! ## A025129.P101307257221623296

`A209403(n+1)-(A343531(n+1)+A024697(n+1))`
-/

namespace A025129.P101307257221623296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 1) - (A343531 (n + 1) + A024697 (n + 1))

end

end A025129.P101307257221623296

/-! ## A025129.P17614468121141318124

`A014342(n+1)+A008683(A007304(n+1))*A024697(n+1)`
-/

namespace A025129.P17614468121141318124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) + A008683 (A007304 (n + 1)).toNat * A024697 (n + 1)

end

end A025129.P17614468121141318124

/-! ## A025129.P10698745859191859914

`A025099(n+2)-A000040(n+2)`
-/

namespace A025129.P10698745859191859914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025099 (n + 2) - A000040 (n + 2)

end

end A025129.P10698745859191859914

/-! ## A025129.P2563704785628079670

`A023626(n+3)-2*A008578(n+3)-A024697(n+1)`
-/

namespace A025129.P2563704785628079670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023626 (n + 3) - 2 * A008578 (n + 3) - A024697 (n + 1)

end

end A025129.P2563704785628079670

/-! ## A025129.P4387111870861395942

`A014342(n+1)+A008683(A285690(n+1))*A024697(n+1)`
-/

namespace A025129.P4387111870861395942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) + A008683 (A285690 (n + 1)).toNat * A024697 (n + 1)

end

end A025129.P4387111870861395942

/-! ## A025129.P86988333067108969

`A258323(A060432(n+2)+2)`
-/

namespace A025129.P86988333067108969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258323 (A060432 (n + 2) + 2).toNat

end

end A025129.P86988333067108969

/-! ## A025129.P11602718899436714862

`A014342(n+1)+A008683(A285688(n+1))*A024697(n+1)`
-/

namespace A025129.P11602718899436714862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) + A008683 (A285688 (n + 1)).toNat * A024697 (n + 1)

end

end A025129.P11602718899436714862

/-!
# A025130: Expansion of 1/((1-x)(1-9x)(1-11x)(1-12x)).

The programs for A025130, there is no canonical definition to state claims against.
-/

/-! ## A025130.P6455437421203621008

`∑[A020984(n)]`
-/

namespace A025130.P6455437421203621008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025130.P6455437421203621008

/-! ## A025130.P517671579092361559

`2*A025031(n)-A025009(n)`
-/

namespace A025130.P517671579092361559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025031 n - A025009 n

end

end A025130.P517671579092361559

/-! ## A025130.P3237528909735548066

`∑[2*A020983(n)-A020982(n)]`
-/

namespace A025130.P3237528909735548066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020983 n - A020982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025130.P3237528909735548066

/-! ## A025130.P13523815084217877063

`A016263(n+1)-A016262(n+1)`
-/

namespace A025130.P13523815084217877063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 (n + 1) - A016262 (n + 1)

end

end A025130.P13523815084217877063

/-! ## A025130.P1245391629610557102

`A020984(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A025130.P1245391629610557102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020984 n - (A000007 n - a (n - 1))

end

end A025130.P1245391629610557102

/-! ## A025130.P4128306972626423379

`A024446(n)+A024446(n)-A024443(n)`
-/

namespace A025130.P4128306972626423379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024446 n + (A024446 n - A024443 n)

end

end A025130.P4128306972626423379

/-! ## A025130.P4749605864597067923

`2*A024446(n)-A024443(n)`
-/

namespace A025130.P4749605864597067923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024446 n - A024443 n

end

end A025130.P4749605864597067923

/-!
# A025131: 3rd elementary symmetric function of C(n,0), C(n,1), ..., C(n,n).

The programs for A025131, there is no canonical definition to state claims against.
-/

/-! ## A025131.P18327272644878410907

`2*A025132(n+2)`
-/

namespace A025131.P18327272644878410907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025132 (n + 2)

end

end A025131.P18327272644878410907

/-! ## A025131.P5947456919770771786

`A025132(A020725(n+1))+A025132(n+2)`
-/

namespace A025131.P5947456919770771786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025132 (A020725 (n + 1)).toNat + A025132 (n + 2)

end

end A025131.P5947456919770771786

/-! ## A025131.P3318257280231571421

`A025132(n+2)+lcm(A008836(n+1), A025132(n+2))`
-/

namespace A025131.P3318257280231571421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025132 (n + 2) + (Int.lcm (A008836 (n + 1)) (A025132 (n + 2)) : ℤ)

end

end A025131.P3318257280231571421

/-! ## A025131.P447459232276800041

`lcm(A025132(n+2)+A025132(n+2), A025142(n+1))`
-/

namespace A025131.P447459232276800041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025132 (n + 2) + A025132 (n + 2)) (A025142 (n + 1))

end

end A025131.P447459232276800041

/-! ## A025131.P3956657095955469809

`(A025132(n+2)+A025132(n+2))%A025138(n+4)`
-/

namespace A025131.P3956657095955469809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025132 (n + 2) + A025132 (n + 2)) (A025138 (n + 4))

end

end A025131.P3956657095955469809

/-! ## A025131.P11080092532555742552

`A025132(n+2)+A025132(n+2)%A025137(n+4)`
-/

namespace A025131.P11080092532555742552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025132 (n + 2) + Int.tmod (A025132 (n + 2)) (A025137 (n + 4))

end

end A025131.P11080092532555742552

/-!
# A025132: a(n) = (1/2)*(3rd elementary symmetric function of C(n,0), C(n,1), ..., C(n,n)).

The programs for A025132, there is no canonical definition to state claims against.
-/

/-! ## A025132.P4108861493775743770

`A025131(n+2)/2`
-/

namespace A025132.P4108861493775743770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025131 (n + 2) : ℚ) / 2

end

end A025132.P4108861493775743770

/-! ## A025132.P12808975664865137548

`2^A008683(A063535(n))*A025131(n+2)`
-/

namespace A025132.P12808975664865137548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A025131 (n + 2) : ℚ)

end

end A025132.P12808975664865137548

/-! ## A025132.P15382920256393255510

`2^A008683(A033210(n+1))*A025131(n+2)`
-/

namespace A025132.P15382920256393255510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A033210 (n + 1)).toNat : ℤ) * (A025131 (n + 2) : ℚ)

end

end A025132.P15382920256393255510

/-! ## A025132.P5541701135040555517

`2^A008683(A098974(n+1))*A025131(n+2)`
-/

namespace A025132.P5541701135040555517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A098974 (n + 1)).toNat : ℤ) * (A025131 (n + 2) : ℚ)

end

end A025132.P5541701135040555517

/-! ## A025132.P6834513254850953317

`2^A008683(A204910(n+1))*A025131(n+2)`
-/

namespace A025132.P6834513254850953317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A204910 (n + 1)).toNat : ℤ) * (A025131 (n + 2) : ℚ)

end

end A025132.P6834513254850953317

/-!
# A025133: 4th elementary symmetric function of C(n,0), C(n,1), ..., C(n,n).

The programs for A025133, there is no canonical definition to state claims against.
-/

/-! ## A025133.P4112619238170843176

`A355635(A026287(n+1))`
-/

namespace A025133.P4112619238170843176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355635 (A026287 (n + 1)).toNat

end

end A025133.P4112619238170843176

/-!
# A025134: a(n) = n-th elementary symmetric function of C(n,0), C(n,1), ..., C(n,n).

The programs for A025134, there is no canonical definition to state claims against.
-/

/-! ## A025134.P8048460189779542991

`record[gcd(A127158(n), A355635(n))]`
-/

namespace A025134.P8048460189779542991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127158 n) (A355635 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025134.P8048460189779542991

/-! ## A025134.P10052637211612112625

`abs(A355635(∑[A333214(n+1)]))`
-/

namespace A025134.P10052637211612112625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A025134.P10052637211612112625

/-!
# A025135: (n-1)st elementary symmetric function of binomial(n,0), binomial(n,1), ..., binomial(n,n).

The programs for A025135, there is no canonical definition to state claims against.
-/

/-! ## A025135.P6478051680062177586

`abs(A355635(∑[n+3]))`
-/

namespace A025135.P6478051680062177586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355635 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A025135.P6478051680062177586

/-! ## A025135.P11882888103545956956

`record[gcd(A127158(n+1), A355635(n))]`
-/

namespace A025135.P11882888103545956956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127158 (n + 1)) (A355635 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025135.P11882888103545956956

/-!
# A025136: a(n) = 2nd elementary symmetric function of C(n,0), C(n,1), ..., C(n,[ n/2 ]).

The programs for A025136, there is no canonical definition to state claims against.
-/

/-! ## A025136.P17325699389820770542

`A180038(n)+A001409(A052439(n+1))`
-/

namespace A025136.P17325699389820770542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180038 n + A001409 (A052439 (n + 1)).toNat

end

end A025136.P17325699389820770542

/-!
# A025137: a(n) = 3rd elementary symmetric function of C(n,0), C(n,1), ..., C(n,[ n/2 ]).

The programs for A025137, there is no canonical definition to state claims against.
-/

/-! ## A025137.P3607693645673360099

`2*A025138(n+4)`
-/

namespace A025137.P3607693645673360099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025138 (n + 4)

end

end A025137.P3607693645673360099

/-! ## A025137.P2324572101776356774

`A025138(n+4)+A025138(A020705(n))`
-/

namespace A025137.P2324572101776356774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025138 (n + 4) + A025138 (A020705 n).toNat

end

end A025137.P2324572101776356774

/-! ## A025137.P11451257924018394593

`A025138(n+4)+lcm(A008836(n+1), A025138(n+4))`
-/

namespace A025137.P11451257924018394593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025138 (n + 4) + (Int.lcm (A008836 (n + 1)) (A025138 (n + 4)) : ℤ)

end

end A025137.P11451257924018394593

/-! ## A025137.P9184220650850237257

`lcm(A025138(n+4)+A025138(n+4), A025142(n+1))`
-/

namespace A025137.P9184220650850237257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025138 (n + 4) + A025138 (n + 4)) (A025142 (n + 1))

end

end A025137.P9184220650850237257

/-! ## A025137.P2359455462091691488

`A025138(n+4)+A025138(n+4)/A001222(A069867(n+1))`
-/

namespace A025137.P2359455462091691488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025138 (n + 4) : ℚ) + (A025138 (n + 4) : ℚ) / (A001222 (A069867 (n + 1)).toNat : ℚ)

end

end A025137.P2359455462091691488

/-!
# A025138: a(n) = (1/2)*(3rd elementary symmetric function of C(n,0), C(n,1), ..., C(n,[ n/2 ])).

The programs for A025138, there is no canonical definition to state claims against.
-/

/-! ## A025138.P9164637579084213970

`A025137(n+4)/2`
-/

namespace A025138.P9164637579084213970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025137 (n + 4) : ℚ) / 2

end

end A025138.P9164637579084213970

/-!
# A025141: a(n) = (k-1)st elementary symmetric function of C(n,0), C(n,1), ..., C(n,k), where k = floor( n/2 ).

The programs for A025141, there is no canonical definition to state claims against.
-/

/-! ## A025141.P12200474042757217402

`A007737(A088553(n+1)+10)`
-/

namespace A025141.P12200474042757217402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A088553 (n + 1) + 10).toNat

end

end A025141.P12200474042757217402

/-!
# A025142: Fixed point of the square runlength transform, with a(1) = 1 (the runlength transform of a binary sequence is the sequence of the lengths of its runs).

The programs for A025142, there is no canonical definition to state claims against.
-/

/-! ## A025142.P14617656599545913977

`∑[char[∑[A025143(n+1)]]]%2+1`
-/

namespace A025142.P14617656599545913977
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1

end

end A025142.P14617656599545913977

/-! ## A025142.P1992352738343255481

`A245936(A010893(n)+n)`
-/

namespace A025142.P1992352738343255481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245936 (A010893 (n + 13) + (n : ℤ)).toNat

end

end A025142.P1992352738343255481

/-! ## A025142.P15322196480265443394

`A006928(A245937(n+4)-n)`
-/

namespace A025142.P15322196480265443394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A245937 (n + 4) - (n : ℤ)).toNat

end

end A025142.P15322196480265443394

/-! ## A025142.P7122513108119284750

`A078880(A245937(n+4)-n)`
-/

namespace A025142.P7122513108119284750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A245937 (n + 4) - (n : ℤ)).toNat

end

end A025142.P7122513108119284750

/-!
# A025143: Unique sequence a of 1's and 2's such that a(1) = 2 and r(r(a)) = a != r(a), where for any sequence s, r(s) is the sequence of lengths of runs of same symbols in s; r(a) is sequence A025142.

The programs for A025143, there is no canonical definition to state claims against.
-/

/-! ## A025143.P16728236663635669908

`A022303(A213182(n+1)+1)`
-/

namespace A025143.P16728236663635669908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A213182 (n + 1) + 1).toNat

end

end A025143.P16728236663635669908

/-! ## A025143.P13212071364151248600

`A000002(A213182(n+1)+5)`
-/

namespace A025143.P13212071364151248600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A213182 (n + 1) + 5).toNat

end

end A025143.P13212071364151248600

/-! ## A025143.P12789596623955818113

`A022303(A213182(n+2))`
-/

namespace A025143.P12789596623955818113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A213182 (n + 2)).toNat

end

end A025143.P12789596623955818113

/-! ## A025143.P1737062927032522501

`A246144(A064553(3*(n+1)))/A250005(n+2)`
-/

namespace A025143.P1737062927032522501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246144 (A064553 (3 * (n + 1))).toNat : ℚ) / (A250005 (n + 2) : ℚ)

end

end A025143.P1737062927032522501

/-!
# A025144: Numbers k such that (#1's in s(1),...,s(k)) = (#1's in r(1),...,r(k)), where s = A025142 and r = A025143.

The programs for A025144, there is no canonical definition to state claims against.
-/

/-! ## A025144.P11122099428530167101

`eq[0, A025146(n+1)]+1`
-/

namespace A025144.P11122099428530167101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025144.P11122099428530167101

/-! ## A025144.P14630359085956355200

`eq[0, A025146(A028310(n))]`
-/

namespace A025144.P14630359085956355200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025146 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025144.P14630359085956355200

/-! ## A025144.P5531660085527874610

`A020725(eq[0, A025146(n+1)])`
-/

namespace A025144.P5531660085527874610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025144.P5531660085527874610

/-! ## A025144.P14681082365689965083

`A065475(eq[0, A025146(n+1)])`
-/

namespace A025144.P14681082365689965083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025144.P14681082365689965083

/-! ## A025144.P13503255076840883687

`eq[0, A025146(A008486(n)-2*n)]`
-/

namespace A025144.P13503255076840883687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025146 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025144.P13503255076840883687

/-! ## A025144.P17318199490094600532

`eq[0, A025146(A233583(n+1))]`
-/

namespace A025144.P17318199490094600532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025146 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025144.P17318199490094600532

/-!
# A025146: (#1's in s(1),...,s(n)) - (#1's in r(1),...,r(n)), where s = A025142 and r = A025143.

The programs for A025146, there is no canonical definition to state claims against.
-/

/-! ## A025146.P17862959058399955448

`∑[A025143(n+1)-A025142(n+1)]`
-/

namespace A025146.P17862959058399955448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025143 (n + 1) - A025142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025146.P17862959058399955448

/-! ## A025146.P17863738158894384370

`∑[A022303(A213182(n+1)+1)-A025142(n+1)]`
-/

namespace A025146.P17863738158894384370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A213182 (n + 1) + 1).toNat - A025142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025146.P17863738158894384370

/-! ## A025146.P6880811298818614718

`∑[A000002(A213182(n+1)+5)-A025142(n+1)]`
-/

namespace A025146.P6880811298818614718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A213182 (n + 1) + 5).toNat - A025142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025146.P6880811298818614718

/-! ## A025146.P12550864821887957959

`∑[A022303(A213182(n+2))-A025142(n+1)]`
-/

namespace A025146.P12550864821887957959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A213182 (n + 2)).toNat - A025142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025146.P12550864821887957959

/-! ## A025146.P5682561423554920324

`∑[A025143(n+1)-A245936(A010893(n)+n)]`
-/

namespace A025146.P5682561423554920324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025143 (n + 1) - A245936 (A010893 (n + 13) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025146.P5682561423554920324

/-!
# A025147: Number of partitions of n into distinct parts >= 2.

The programs for A025147, there is no canonical definition to state claims against.
-/

/-! ## A025147.P7781632419012215962

`A000009(n)-a(n-1)` with `a(0)=1`
-/

namespace A025147.P7781632419012215962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000009 n - a (n - 1)

end

end A025147.P7781632419012215962

/-! ## A025147.P1830210946209952528

`A096765(n+1)`
-/

namespace A025147.P1830210946209952528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1)

end

end A025147.P1830210946209952528

/-! ## A025147.P17745068803867719725

`abs(∑[A081360(n)])`
-/

namespace A025147.P17745068803867719725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025147.P17745068803867719725

/-! ## A025147.P5161510625893687231

`A087897(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025147.P5161510625893687231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A087897 n + a (n - 2)

end

end A025147.P5161510625893687231

/-! ## A025147.P17913866651476131584

`A052839(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A025147.P17913866651476131584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052839 n - (a (n - 1) + 1)

end

end A025147.P17913866651476131584

/-! ## A025147.P3596419175787559690

`A111133(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A025147.P3596419175787559690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111133 n + (1 - a (n - 1))

end

end A025147.P3596419175787559690

/-! ## A025147.P5742343528684709783

`A318029(n)+A060576(n)`
-/

namespace A025147.P5742343528684709783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318029 n + A060576 n

end

end A025147.P5742343528684709783

/-! ## A025147.P3513078831445515947

`A000009(n)-A096765(n)`
-/

namespace A025147.P3513078831445515947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A096765 n

end

end A025147.P3513078831445515947

/-! ## A025147.P4209037837781720263

`abs(A081360(n))-A096765(n)`
-/

namespace A025147.P4209037837781720263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A096765 n

end

end A025147.P4209037837781720263

/-! ## A025147.P12227901473274870926

`lcm(∑[A081360(n)], A020985(n))`
-/

namespace A025147.P12227901473274870926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A020985 n)

end

end A025147.P12227901473274870926

/-! ## A025147.P272407804161416416

`2*A038348(n)-A036469(n)`
-/

namespace A025147.P272407804161416416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038348 n - A036469 n

end

end A025147.P272407804161416416

/-! ## A025147.P13718798554735157634

`2*A038348(n)-∑[A000009(n)]`
-/

namespace A025147.P13718798554735157634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038348 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025147.P13718798554735157634

/-! ## A025147.P10689432582257637799

`A097986(n+1)-A098965(n+1)`
-/

namespace A025147.P10689432582257637799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097986 (n + 1) - A098965 (n + 1)

end

end A025147.P10689432582257637799

/-! ## A025147.P2392932119733869537

`∑{d}[n+1, A008683(#)*A097986((n+1)/#)]`
-/

namespace A025147.P2392932119733869537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A097986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A025147.P2392932119733869537

/-! ## A025147.P8901458873154632401

`A038348(n)-(A265251(n+1)+A090858(n+1))`
-/

namespace A025147.P8901458873154632401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - (A265251 (n + 1) + A090858 (n + 1))

end

end A025147.P8901458873154632401

/-! ## A025147.P15050386661057706173

`A270144(n+1)+A270144(n)`
-/

namespace A025147.P15050386661057706173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270144 (n + 1) + A270144 n

end

end A025147.P15050386661057706173

/-! ## A025147.P6497638580877829920

`A000009(n+1)+A038348(n)-A038348(n+1)`
-/

namespace A025147.P6497638580877829920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A038348 n - A038348 (n + 1))

end

end A025147.P6497638580877829920

/-! ## A025147.P8205366802017741489

`A096749(n+2)+A096749(n)`
-/

namespace A025147.P8205366802017741489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 (n + 2) + A096749 n

end

end A025147.P8205366802017741489

/-! ## A025147.P16115690259794139539

`A096749(n)+A025148(n)`
-/

namespace A025147.P16115690259794139539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 n + A025148 n

end

end A025147.P16115690259794139539

/-! ## A025147.P38232700634493830

`A238215(n+1)+A067661(n)-A238215(n)`
-/

namespace A025147.P38232700634493830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (n + 1) + (A067661 n - A238215 n)

end

end A025147.P38232700634493830

/-!
# A025148: Number of partitions of n into distinct parts >= 3.

The programs for A025148, there is no canonical definition to state claims against.
-/

/-! ## A025148.P1745166584588900642

`A096749(n+2)`
-/

namespace A025148.P1745166584588900642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 (n + 2)

end

end A025148.P1745166584588900642

/-! ## A025148.P9166590743628974877

`A025147(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025148.P9166590743628974877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025147 n - a (n - 2)

end

end A025148.P9166590743628974877

/-! ## A025148.P13382874159660508726

`A025147(n)-A096749(n)`
-/

namespace A025148.P13382874159660508726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A096749 n

end

end A025148.P13382874159660508726

/-! ## A025148.P14808145659059556470

`A026824(n+3)+A026824(n)`
-/

namespace A025148.P14808145659059556470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (n + 3) + A026824 n

end

end A025148.P14808145659059556470

/-! ## A025148.P15469040744334194836

`A096765(comp[2*n]-n)-A096749(n)`
-/

namespace A025148.P15469040744334194836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) - A096749 n

end

end A025148.P15469040744334194836

/-! ## A025148.P2448904589712771153

`A026824(n)+A025149(n)`
-/

namespace A025148.P2448904589712771153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 n + A025149 n

end

end A025148.P2448904589712771153

/-! ## A025148.P307942482494030608

`A015744(n)-a(n-1)` with `a(0)=1`
-/

namespace A025148.P307942482494030608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015744 n - a (n - 1)

end

end A025148.P307942482494030608

/-! ## A025148.P12501495716190099796

`A015744(n)+∑[A025147(n)-A015744(n)]`
-/

namespace A025148.P12501495716190099796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A015744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015744 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025148.P12501495716190099796

/-! ## A025148.P1455398261090226714

`A026821(∑[n+1]+2)`
-/

namespace A025148.P1455398261090226714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A025148.P1455398261090226714

/-!
# A025149: Number of partitions of n into distinct parts >= 4.

The programs for A025149, there is no canonical definition to state claims against.
-/

/-! ## A025149.P10544316042707337504

`A026824(n+3)`
-/

namespace A025149.P10544316042707337504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026824 (n + 3)

end

end A025149.P10544316042707337504

/-! ## A025149.P412724802104597866

`A025148(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025149.P412724802104597866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025148 n - a (n - 3)

end

end A025149.P412724802104597866

/-! ## A025149.P6600861067290055691

`A026825(n)+A025150(n)`
-/

namespace A025149.P6600861067290055691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 n + A025150 n

end

end A025149.P6600861067290055691

/-! ## A025149.P11960078345891546548

`A025148(n)-A026824(n)`
-/

namespace A025149.P11960078345891546548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025148 n - A026824 n

end

end A025149.P11960078345891546548

/-! ## A025149.P17003026652626161829

`A026825(n+4)+A026825(n)`
-/

namespace A025149.P17003026652626161829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (n + 4) + A026825 n

end

end A025149.P17003026652626161829

/-! ## A025149.P15335327034832342569

`A025147(n)-A026824(n)-A096749(n)`
-/

namespace A025149.P15335327034832342569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A026824 n - A096749 n

end

end A025149.P15335327034832342569

/-! ## A025149.P14493116512553155185

`A026821(∑[n+2]+4)`
-/

namespace A025149.P14493116512553155185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A025149.P14493116512553155185

/-!
# A025150: Number of partitions of n into distinct parts >= 5.

The programs for A025150, there is no canonical definition to state claims against.
-/

/-! ## A025150.P16864884302972373496

`A026825(n+4)`
-/

namespace A025150.P16864884302972373496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (n + 4)

end

end A025150.P16864884302972373496

/-! ## A025150.P16623859483069862593

`A026826(n)+A025151(n)`
-/

namespace A025150.P16623859483069862593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026826 n + A025151 n

end

end A025150.P16623859483069862593

/-! ## A025150.P3538305255205583352

`A026826(n+5)+A026826(n)`
-/

namespace A025150.P3538305255205583352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026826 (n + 5) + A026826 n

end

end A025150.P3538305255205583352

/-! ## A025150.P14031226578156276669

`or(A000007(n), A026825(A020705(n)))`
-/

namespace A025150.P14031226578156276669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A026825 (A020705 n).toNat)

end

end A025150.P14031226578156276669

/-! ## A025150.P12518209304239861649

`A026825(A020705(n))-A000007(A151800(n))`
-/

namespace A025150.P12518209304239861649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat - A000007 (A151800 n).toNat

end

end A025150.P12518209304239861649

/-! ## A025150.P13854471660348653088

`A025149(n)-A026825(n)`
-/

namespace A025150.P13854471660348653088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n - A026825 n

end

end A025150.P13854471660348653088

/-! ## A025150.P14335752867330039921

`A026825(A020705(n))-A000007(A246388(n))`
-/

namespace A025150.P14335752867330039921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat - A000007 (A246388 n).toNat

end

end A025150.P14335752867330039921

/-! ## A025150.P3602834700693552423

`A026825(A020705(n))-A000007(A022144(n))`
-/

namespace A025150.P3602834700693552423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat - A000007 (A022144 n).toNat

end

end A025150.P3602834700693552423

/-! ## A025150.P11604628880348804042

`A026825(A020705(n))-A000007(A046019(n))`
-/

namespace A025150.P11604628880348804042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat - A000007 (A046019 n).toNat

end

end A025150.P11604628880348804042

/-! ## A025150.P4311947512379284908

`A026825(A020705(n))-A000007(A029081(n))`
-/

namespace A025150.P4311947512379284908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat - A000007 (A029081 n).toNat

end

end A025150.P4311947512379284908

/-! ## A025150.P3783592827633835450

`A010054(C(n, 2))*A026825(A020705(n))`
-/

namespace A025150.P3783592827633835450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.choose n 2) * A026825 (A020705 n).toNat

end

end A025150.P3783592827633835450

/-! ## A025150.P13763912126497130334

`A026825(A020705(n))*A326017(A000096(n))`
-/

namespace A025150.P13763912126497130334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat * A326017 (A000096 n).toNat

end

end A025150.P13763912126497130334

/-! ## A025150.P2338128061359267353

`A026821(∑[n+3]+7)`
-/

namespace A025150.P2338128061359267353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026821 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A025150.P2338128061359267353

/-!
# A025151: Number of partitions of n into distinct parts >= 6.

The programs for A025151, there is no canonical definition to state claims against.
-/

/-! ## A025151.P17174267163247779446

`A026826(n+5)`
-/

namespace A025151.P17174267163247779446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026826 (n + 5)

end

end A025151.P17174267163247779446

/-! ## A025151.P9705459763570188562

`A026825(A020705(n))-A026826(n)`
-/

namespace A025151.P9705459763570188562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026825 (A020705 n).toNat - A026826 n

end

end A025151.P9705459763570188562

/-! ## A025151.P11763189858493589060

`A025150(n)-A026826(n)`
-/

namespace A025151.P11763189858493589060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 n - A026826 n

end

end A025151.P11763189858493589060

/-! ## A025151.P4545065539258110278

`A026827(n)+A025152(n)`
-/

namespace A025151.P4545065539258110278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026827 n + A025152 n

end

end A025151.P4545065539258110278

/-! ## A025151.P1951818001129742653

`A025149(n)-A026825(n)-A026826(n)`
-/

namespace A025151.P1951818001129742653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n - A026825 n - A026826 n

end

end A025151.P1951818001129742653

/-!
# A025152: Number of partitions of n into distinct parts >= 7.

The programs for A025152, there is no canonical definition to state claims against.
-/

/-! ## A025152.P9312913843587273920

`A026827(n+6)`
-/

namespace A025152.P9312913843587273920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026827 (n + 6)

end

end A025152.P9312913843587273920

/-! ## A025152.P3708009763957195951

`A026828(n)+A025153(n)`
-/

namespace A025152.P3708009763957195951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026828 n + A025153 n

end

end A025152.P3708009763957195951

/-! ## A025152.P17980977823260854629

`A025151(n)-A026827(n)`
-/

namespace A025152.P17980977823260854629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n - A026827 n

end

end A025152.P17980977823260854629

/-! ## A025152.P10833308880760981415

`A026828(n+7)+A026828(n)`
-/

namespace A025152.P10833308880760981415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026828 (n + 7) + A026828 n

end

end A025152.P10833308880760981415

/-! ## A025152.P1933952316450920329

`A025150(n)-A026826(n)-A026827(n)`
-/

namespace A025152.P1933952316450920329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025150 n - A026826 n - A026827 n

end

end A025152.P1933952316450920329

/-!
# A025153: Number of partitions of n into distinct parts >= 8.

The programs for A025153, there is no canonical definition to state claims against.
-/

/-! ## A025153.P2404284117513685266

`A026828(n+7)`
-/

namespace A025153.P2404284117513685266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026828 (n + 7)

end

end A025153.P2404284117513685266

/-! ## A025153.P12190683253056610882

`2*A026828(A020719(n))-A026828(A020719(n))`
-/

namespace A025153.P12190683253056610882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026828 (A020719 n).toNat - A026828 (A020719 n).toNat

end

end A025153.P12190683253056610882

/-! ## A025153.P12336721681862001144

`A025151(n)-A026827(n)-A026828(n)`
-/

namespace A025153.P12336721681862001144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n - A026827 n - A026828 n

end

end A025153.P12336721681862001144

/-! ## A025153.P4996755632132309228

`A025152(n)-A026828(n)`
-/

namespace A025153.P4996755632132309228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 n - A026828 n

end

end A025153.P4996755632132309228

/-! ## A025153.P7624174107983605262

`A026829(n)+A025154(n)`
-/

namespace A025153.P7624174107983605262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026829 n + A025154 n

end

end A025153.P7624174107983605262

/-! ## A025153.P1629512507337443596

`A026829(n+8)+A026829(n)`
-/

namespace A025153.P1629512507337443596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026829 (n + 8) + A026829 n

end

end A025153.P1629512507337443596

/-!
# A025154: Number of partitions of n into distinct parts >= 9.

The programs for A025154, there is no canonical definition to state claims against.
-/

/-! ## A025154.P17999551513893244157

`A026829(n+8)`
-/

namespace A025154.P17999551513893244157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026829 (n + 8)

end

end A025154.P17999551513893244157

/-! ## A025154.P18267680466843608864

`A026830(n)+A025155(n)`
-/

namespace A025154.P18267680466843608864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 n + A025155 n

end

end A025154.P18267680466843608864

/-! ## A025154.P9696059534655784073

`A026830(A020723(n))+A026830(n)`
-/

namespace A025154.P9696059534655784073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 (A020723 n).toNat + A026830 n

end

end A025154.P9696059534655784073

/-! ## A025154.P5508447935049767495

`A026830(n)+A096740(n)+A026831(n)`
-/

namespace A025154.P5508447935049767495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 n + (A096740 n + A026831 n)

end

end A025154.P5508447935049767495

/-! ## A025154.P15849328935482068537

`A025153(n)-A026829(n)`
-/

namespace A025154.P15849328935482068537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - A026829 n

end

end A025154.P15849328935482068537

/-! ## A025154.P8535492566314477028

`A026828(A020719(n))-A026829(n)`
-/

namespace A025154.P8535492566314477028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026828 (A020719 n).toNat - A026829 n

end

end A025154.P8535492566314477028

/-! ## A025154.P6839478196666612374

`A025152(n)-A026828(n)-A026829(n)`
-/

namespace A025154.P6839478196666612374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 n - A026828 n - A026829 n

end

end A025154.P6839478196666612374

/-!
# A025155: Number of partitions of n into distinct parts >= 10.

The programs for A025155, there is no canonical definition to state claims against.
-/

/-! ## A025155.P7810589405762442261

`A026830(n+9)`
-/

namespace A025155.P7810589405762442261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026830 (n + 9)

end

end A025155.P7810589405762442261

/-! ## A025155.P2197498808289291108

`A025154(n)-A026830(n)`
-/

namespace A025155.P2197498808289291108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 n - A026830 n

end

end A025155.P2197498808289291108

/-! ## A025155.P7929596496484792967

`A096740(n)+A026831(n)`
-/

namespace A025155.P7929596496484792967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096740 n + A026831 n

end

end A025155.P7929596496484792967

/-! ## A025155.P7055143167095105390

`A026831(n+10)+A026831(n)`
-/

namespace A025155.P7055143167095105390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026831 (n + 10) + A026831 n

end

end A025155.P7055143167095105390

/-! ## A025155.P9650410999336809449

`A025153(n)-A026829(n)-A026830(n)`
-/

namespace A025155.P9650410999336809449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 n - A026829 n - A026830 n

end

end A025155.P9650410999336809449

/-!
# A025156: A prime number of consecutive composites follow n.

The programs for A025156, the canonical program `A025156.P15023851928668983565` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025156 has offset 1).

The definition of A025156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025156.P7321992165764931970

`eq[A007920(A007920(n+1)), 0]`
-/

namespace A025156.P7321992165764931970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007920 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A025156.P7321992165764931970

namespace A025156

/-- `eq[A007920(A007920(n+1)), 0]` -/
def P7321992165764931970.Spec : Prop :=
  ∀ n, (P7321992165764931970.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P10115948838180523983

`eq[1, A003415(A013632(n)-1)]`
-/

namespace A025156.P10115948838180523983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A013632 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025156.P10115948838180523983

namespace A025156

/-- `eq[1, A003415(A013632(n)-1)]` -/
def P10115948838180523983.Spec : Prop :=
  ∀ n, (P10115948838180523983.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P15023851928668983565

`eq[1, A032741(A013632(n)-1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025156

/-- `eq[1, A032741(A013632(n)-1)]` -/
def P15023851928668983565.Spec : Prop :=
  ∀ n, (P15023851928668983565.a n : ℤ) = A025156 (n + 1)

theorem P15023851928668983565.correct : P15023851928668983565.Spec := by
  intro n
  simp only [A025156, Nat.add_sub_cancel]

end A025156

/-! ## A025156.P16429532395197492279

`lt[A007920(A013632(n)-1), 1]`
-/

namespace A025156.P16429532395197492279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A013632 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025156.P16429532395197492279

namespace A025156

/-- `lt[A007920(A013632(n)-1), 1]` -/
def P16429532395197492279.Spec : Prop :=
  ∀ n, (P16429532395197492279.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P11076146222995756359

`eq[A151800(n), A204894(n+1)]`
-/

namespace A025156.P11076146222995756359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025156.P11076146222995756359

namespace A025156

/-- `eq[A151800(n), A204894(n+1)]` -/
def P11076146222995756359.Spec : Prop :=
  ∀ n, (P11076146222995756359.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P8247126832776984222

`eq[2, A005127(A071960(n+1))]+1`
-/

namespace A025156.P8247126832776984222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A071960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025156.P8247126832776984222

namespace A025156

/-- `eq[2, A005127(A071960(n+1))]+1` -/
def P8247126832776984222.Spec : Prop :=
  ∀ n, (P8247126832776984222.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P3342678223581663738

`eq[A000038(n), A007920(A007920(n))]-1`
-/

namespace A025156.P3342678223581663738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A025156.P3342678223581663738

namespace A025156

/-- `eq[A000038(n), A007920(A007920(n))]-1` -/
def P3342678223581663738.Spec : Prop :=
  ∀ n, P3342678223581663738.a n = A025156 (n + 1)

end A025156

/-! ## A025156.P1477227650944881528

`lt[A007920(A007920(n+1)), A057427(n)]`
-/

namespace A025156.P1477227650944881528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007920 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025156.P1477227650944881528

namespace A025156

/-- `lt[A007920(A007920(n+1)), A057427(n)]` -/
def P1477227650944881528.Spec : Prop :=
  ∀ n, (P1477227650944881528.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P4414670803244127023

`eq[A000007(n), A007920(A007920(n))]-1`
-/

namespace A025156.P4414670803244127023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A025156.P4414670803244127023

namespace A025156

/-- `eq[A000007(n), A007920(A007920(n))]-1` -/
def P4414670803244127023.Spec : Prop :=
  ∀ n, P4414670803244127023.a n = A025156 (n + 1)

end A025156

/-! ## A025156.P4917145108146360507

`lt[A007920(A007920(n)), A057427(n)]-1`
-/

namespace A025156.P4917145108146360507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A025156.P4917145108146360507

namespace A025156

/-- `lt[A007920(A007920(n)), A057427(n)]-1` -/
def P4917145108146360507.Spec : Prop :=
  ∀ n, P4917145108146360507.a n = A025156 (n + 1)

end A025156

/-! ## A025156.P11847375526830328409

`eq[A007918(A013632(n+1))+1, A013632(n)]`
-/

namespace A025156.P11847375526830328409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A013632 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025156.P11847375526830328409

namespace A025156

/-- `eq[A007918(A013632(n+1))+1, A013632(n)]` -/
def P11847375526830328409.Spec : Prop :=
  ∀ n, (P11847375526830328409.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P13543715227679948890

`lt[A055672(n+1), A055672(A013632(n+1))]`
-/

namespace A025156.P13543715227679948890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A013632 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025156.P13543715227679948890

namespace A025156

/-- `lt[A055672(n+1), A055672(A013632(n+1))]` -/
def P13543715227679948890.Spec : Prop :=
  ∀ n, (P13543715227679948890.a n : ℤ) = A025156 (n + 1)

end A025156

/-! ## A025156.P15922491710541739423

`eq[A159477(n+1), A204894(n+1)]`
-/

namespace A025156.P15922491710541739423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204894 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025156.P15922491710541739423

namespace A025156

/-- `eq[A159477(n+1), A204894(n+1)]` -/
def P15922491710541739423.Spec : Prop :=
  ∀ n, (P15922491710541739423.a n : ℤ) = A025156 (n + 1)

end A025156

/-!
# A025157: Number of partitions of n with distinct parts p(i) such that if i != j, then |p(i) - p(j)| >= 3.

The programs for A025157, there is no canonical definition to state claims against.
-/

/-! ## A025157.P1160446529860221130

`A000009(n)-A237976(n)`
-/

namespace A025157.P1160446529860221130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A237976 n

end

end A025157.P1160446529860221130

/-! ## A025157.P7066359539824939589

`abs(A081360(n))-A237976(n)`
-/

namespace A025157.P7066359539824939589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A237976 n

end

end A025157.P7066359539824939589

/-! ## A025157.P14370801172833477500

`∑[A087897(n)]-A237976(n)`
-/

namespace A025157.P14370801172833477500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237976 n

end

end A025157.P14370801172833477500

/-! ## A025157.P10375926054294890744

`A111133(n)+1-A237976(n)`
-/

namespace A025157.P10375926054294890744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A237976 n)

end

end A025157.P10375926054294890744

/-! ## A025157.P13316014928893406435

`A035457(2*n)-A237976(n)`
-/

namespace A025157.P13316014928893406435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) - A237976 n

end

end A025157.P13316014928893406435

/-! ## A025157.P4788222569833973144

`A067659(n)+A067661(n)-A237976(n)`
-/

namespace A025157.P4788222569833973144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n + (A067661 n - A237976 n)

end

end A025157.P4788222569833973144

/-! ## A025157.P9110452631465090156

`A003114(n)+A238708(n)-A237976(n)`
-/

namespace A025157.P9110452631465090156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n - A237976 n)

end

end A025157.P9110452631465090156

/-! ## A025157.P5794267507985103146

`A000700(n)+A331848(n)-A237976(n)`
-/

namespace A025157.P5794267507985103146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A331848 n - A237976 n)

end

end A025157.P5794267507985103146

/-! ## A025157.P5778409381142145495

`A316996(n)+A317239(n)-A237976(n)`
-/

namespace A025157.P5778409381142145495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A237976 n)

end

end A025157.P5778409381142145495

/-! ## A025157.P1312045045567834144

`A194543((∑[n]+3)%∑[n+1])`
-/

namespace A025157.P1312045045567834144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 ((∑ j ∈ Finset.range (n + 1), f1 j + 3) % (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A025157.P1312045045567834144

/-! ## A025157.P8086126293547855553

`A194543(A077169(n+1)-2)`
-/

namespace A025157.P8086126293547855553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A077169 (n + 1) - 2).toNat

end

end A025157.P8086126293547855553

/-! ## A025157.P5416276921645246230

`A194543(A027379(n)-A004274(n))`
-/

namespace A025157.P5416276921645246230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A027379 n - A004274 n).toNat

end

end A025157.P5416276921645246230

/-! ## A025157.P10040024112465198997

`A194543(A133263(n)-A134824(A003056(n)))`
-/

namespace A025157.P10040024112465198997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A133263 n - A134824 (A003056 n).toNat).toNat

end

end A025157.P10040024112465198997

/-! ## A025157.P16937502792628445308

`A194543(A133263(n)-A134824(A026741(n)))`
-/

namespace A025157.P16937502792628445308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A133263 n - A134824 (A026741 n).toNat).toNat

end

end A025157.P16937502792628445308

/-!
# A025158: Number of partitions of n with distinct parts p(i) such that if i != j, then |p(i) - p(j)| >= 4.

The programs for A025158, there is no canonical definition to state claims against.
-/

/-! ## A025158.P313456269291316989

`A194543(A100542(n+1)+4)`
-/

namespace A025158.P313456269291316989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A100542 (n + 1) + 4).toNat

end

end A025158.P313456269291316989

/-! ## A025158.P778136981366657466

`A194543(A077169(n+1)+n)`
-/

namespace A025158.P778136981366657466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A077169 (n + 1) + (n : ℤ)).toNat

end

end A025158.P778136981366657466

/-! ## A025158.P15999448175172736734

`A194543(A022856(n+1)+A008586(n))`
-/

namespace A025158.P15999448175172736734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A022856 (n + 1) + A008586 n).toNat

end

end A025158.P15999448175172736734

/-! ## A025158.P5122340691876480735

`A194543(A005408(n)-(1-A077169(n)))`
-/

namespace A025158.P5122340691876480735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A005408 n - (1 - A077169 n)).toNat

end

end A025158.P5122340691876480735

/-! ## A025158.P14517849848293903444

`A048766(round(sqrt(A358914(2*n+1))))`
-/

namespace A025158.P14517849848293903444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway (Real.sqrt (A358914 (2 * n + 1) : ℝ))).toNat

end

end A025158.P14517849848293903444

/-!
# A025159: Number of partitions of n with distinct parts p(i) such that if i != j, then |p(i) - p(j)| >= 5.

The programs for A025159, there is no canonical definition to state claims against.
-/

/-! ## A025159.P6201815245592895047

`A194543(A077169(n)+A005408(n))`
-/

namespace A025159.P6201815245592895047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A077169 n + A005408 n).toNat

end

end A025159.P6201815245592895047

/-! ## A025159.P7273600547312534623

`A194543(A167499(n)%A000098(n))`
-/

namespace A025159.P7273600547312534623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (Int.tmod (A167499 n) (A000098 n)).toNat

end

end A025159.P7273600547312534623

/-! ## A025159.P14302374479082551018

`A194543(A077169(n)+sqrt(A016754(n)))`
-/

namespace A025159.P14302374479082551018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (SequenceMachineLib.roundAway ((A077169 n : ℝ) + Real.sqrt (A016754 n : ℝ))).toNat

end

end A025159.P14302374479082551018

/-! ## A025159.P17998704561303353639

`A194543(∑[A137735(A034110(n+1))])`
-/

namespace A025159.P17998704561303353639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A034110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025159.P17998704561303353639

/-! ## A025159.P1867046184047488498

`A194543(A212294(n+1)+A000124(n))`
-/

namespace A025159.P1867046184047488498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (A212294 (n + 1) + A000124 n).toNat

end

end A025159.P1867046184047488498

/-!
# A025160: Number of partitions of n with distinct parts p(i) such that if i != j, then |p(i) - p(j)| >= 6.

The programs for A025160, there is no canonical definition to state claims against.
-/

/-! ## A025160.P1222323291431621935

`A096740(n+16)%A243857(n+1)`
-/

namespace A025160.P1222323291431621935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096740 (n + 16)) (A243857 (n + 1))

end

end A025160.P1222323291431621935

/-! ## A025160.P14031892952813111238

`A000265(A016116(n))*A096740(n+16)`
-/

namespace A025160.P14031892952813111238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A016116 n).toNat * A096740 (n + 16)

end

end A025160.P14031892952813111238

/-! ## A025160.P15127706688337694045

`gcd(A003418(A141213(n)), A096740(n+16))`
-/

namespace A025160.P15127706688337694045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A141213 n).toNat) (A096740 (n + 16))

end

end A025160.P15127706688337694045

/-! ## A025160.P1548950306588583153

`A026831(lt[A003278(n+1), A371794(n)])`
-/

namespace A025160.P1548950306588583153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026831 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025160.P1548950306588583153

/-! ## A025160.P2579778706615626988

`A226046(A191173(n+2))`
-/

namespace A025160.P2579778706615626988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226046 (A191173 (n + 2)).toNat

end

end A025160.P2579778706615626988

/-!
# A025161: Number of partitions of n with distinct parts p(i) such that if i != j, then |p(i) - p(j)| >= 7.

The programs for A025161, there is no canonical definition to state claims against.
-/

/-! ## A025161.P11284794138140421147

`A194543(A167487(n)%A070550(n))`
-/

namespace A025161.P11284794138140421147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (Int.tmod (A167487 n) (A070550 n)).toNat

end

end A025161.P11284794138140421147

/-! ## A025161.P9153750061850847031

`A194543(A167487(n)^A297036(n+1))`
-/

namespace A025161.P9153750061850847031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (SequenceMachineLib.roundAway ((A167487 n : ℚ) ^ (A297036 (n + 1) : ℤ))).toNat

end

end A025161.P9153750061850847031

/-! ## A025161.P4723864400359660634

`A373068(n+4)%A352268(n+1)`
-/

namespace A025161.P4723864400359660634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373068 (n + 4)) (A352268 (n + 1))

end

end A025161.P4723864400359660634

/-! ## A025161.P17515850773671263895

`A049076(A248391(n+1))*A373068(n+4)`
-/

namespace A025161.P17515850773671263895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A248391 (n + 1)).toNat * A373068 (n + 4)

end

end A025161.P17515850773671263895

/-! ## A025161.P8486310184631197362

`A049076(A000567(2*(n+2)))*A373068(n+4)`
-/

namespace A025161.P8486310184631197362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A000567 (2 * (n + 2))).toNat * A373068 (n + 4)

end

end A025161.P8486310184631197362

/-!
# A025162: Number of partitions of n with distinct parts p(i) such that if i != j, then |p(i) - p(j)| >= 8.

The programs for A025162, there is no canonical definition to state claims against.
-/

/-! ## A025162.P4097169201849895449

`A000119(A132916(n))`
-/

namespace A025162.P4097169201849895449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A132916 n).toNat

end

end A025162.P4097169201849895449

/-! ## A025162.P9775124601521716825

`A395473(A074323(n))`
-/

namespace A025162.P9775124601521716825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395473 (A074323 n).toNat

end

end A025162.P9775124601521716825

/-! ## A025162.P13109476455533036285

`A363832(A181065(n))`
-/

namespace A025162.P13109476455533036285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363832 (A181065 n).toNat

end

end A025162.P13109476455533036285

/-! ## A025162.P1564760159545586045

`A171622(A014535(n+1))`
-/

namespace A025162.P1564760159545586045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171622 (A014535 (n + 1)).toNat

end

end A025162.P1564760159545586045

/-! ## A025162.P7297221702524270074

`A171622(A212365(n+1))`
-/

namespace A025162.P7297221702524270074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171622 (A212365 (n + 1)).toNat

end

end A025162.P7297221702524270074

/-!
# A025164: a(n) = a(n-2) + (2n-1)a(n-1); a(0)=1, a(1)=1.

The programs for A025164, the canonical program `A025164.P6645037007475917129` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025164 has offset 0).

The definition of A025164 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+(2*n-1)*a(n-1)` (program `A025164.P6645037007475917129`, by `A025164.P6645037007475917129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025164.P6645037007475917129

`a(n-2)+(2*n-1)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025164

/-- `a(n-2)+(2*n-1)*a(n-1)` -/
def P6645037007475917129.Spec : Prop :=
  ∀ n, P6645037007475917129.a n = A025164 n

theorem P6645037007475917129.correct : P6645037007475917129.Spec := by
  intro n
  simp only [A025164]

end A025164

/-! ## A025164.P3908151144235146214

`2*n*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A025164.P3908151144235146214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A025164.P3908151144235146214

namespace A025164

/-- `2*n*a(n-1)-(a(n-1)-a(n-2))` -/
def P3908151144235146214.Spec : Prop :=
  ∀ n, P3908151144235146214.a n = A025164 n

end A025164

/-! ## A025164.P7806554132816368302

`a(n-2)+a(n-1)*A004273(n)` with `a(0)=1, a(1)=1`
-/

namespace A025164.P7806554132816368302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A004273 n

end

end A025164.P7806554132816368302

namespace A025164

/-- `a(n-2)+a(n-1)*A004273(n)` -/
def P7806554132816368302.Spec : Prop :=
  ∀ n, P7806554132816368302.a n = A025164 n

end A025164

/-! ## A025164.P8241344763580618245

`a(n-2)+a(n-1)*A004280(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A025164.P8241344763580618245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A004280 (n + 1)

end

end A025164.P8241344763580618245

namespace A025164

/-- `a(n-2)+a(n-1)*A004280(n+1)` -/
def P8241344763580618245.Spec : Prop :=
  ∀ n, P8241344763580618245.a n = A025164 n

end A025164

/-! ## A025164.P12019421764716848097

`(A278990(n)+A001515(n))/2`
-/

namespace A025164.P12019421764716848097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278990 n + A001515 n : ℚ) / 2

end

end A025164.P12019421764716848097

namespace A025164

/-- `(A278990(n)+A001515(n))/2` -/
def P12019421764716848097.Spec : Prop :=
  ∀ n, P12019421764716848097.a n = (A025164 n : ℚ)

end A025164

/-! ## A025164.P12961266746557302190

`(A001515(n)+∑[A231622(n)]-1)/2`
-/

namespace A025164.P12961266746557302190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001515 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℤ) : ℚ) / 2

end

end A025164.P12961266746557302190

namespace A025164

/-- `(A001515(n)+∑[A231622(n)]-1)/2` -/
def P12961266746557302190.Spec : Prop :=
  ∀ n, P12961266746557302190.a n = (A025164 n : ℚ)

end A025164

/-!
# A025165: a(n) = H_n(1) / 2^floor(n/2) where H_n is the n-th Hermite polynomial.

The programs for A025165, the canonical program `A025165.P15229587313836077132` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025165 has offset 0).

The definition of A025165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025165.P15229587313836077132

`A062267(n)/A016116(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025165

/-- `A062267(n)/A016116(n)` -/
def P15229587313836077132.Spec : Prop :=
  ∀ n, P15229587313836077132.a n = (A025165 n : ℚ)

end A025165

/-! ## A025165.P3885831852302066167

`A062267(n)/∏[A040001(n)]`
-/

namespace A025165.P3885831852302066167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062267 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A025165.P3885831852302066167

namespace A025165

/-- `A062267(n)/∏[A040001(n)]` -/
def P3885831852302066167.Spec : Prop :=
  ∀ n, P3885831852302066167.a n = (A025165 n : ℚ)

end A025165

/-! ## A025165.P9264677344804060885

`A122033(n+1)/A016116(n+2)`
-/

namespace A025165.P9264677344804060885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122033 (n + 1) : ℚ) / (A016116 (n + 2) : ℚ)

end

end A025165.P9264677344804060885

namespace A025165

/-- `A122033(n+1)/A016116(n+2)` -/
def P9264677344804060885.Spec : Prop :=
  ∀ n, P9264677344804060885.a n = (A025165 n : ℚ)

end A025165

/-! ## A025165.P2500384751591563997

`A122033(n+1)/A000079(∑[(n+1)%2])`
-/

namespace A025165.P2500384751591563997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122033 (n + 1) : ℚ) / (A000079 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A025165.P2500384751591563997

namespace A025165

/-- `A122033(n+1)/A000079(∑[(n+1)%2])` -/
def P2500384751591563997.Spec : Prop :=
  ∀ n, P2500384751591563997.a n = (A025165 n : ℚ)

end A025165

/-!
# A025166: Expansion of e.g.f. -exp(-x/(1-2*x))/(1-2*x).

The programs for A025166, there is no canonical definition to state claims against.
-/

/-! ## A025166.P14111678083735900178

`A000720(A014293(n))-A022813(n)`
-/

namespace A025166.P14111678083735900178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014293 n).toNat - A022813 n

end

end A025166.P14111678083735900178

/-! ## A025166.P13270792786982759173

`A233278(A079241(n))-A079217(n)`
-/

namespace A025166.P13270792786982759173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233278 (A079241 n).toNat - A079217 n

end

end A025166.P13270792786982759173

/-!
# A025167: E.g.f: exp(x/(1-2*x))/(1-2*x).

The programs for A025167, the canonical program `A025167.P11890903883289715636` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025167 has offset 0).

The definition of A025167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025167.P11890903883289715636

`(4*n-1)*a(n-1)-4*(n-1)²*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025167

/-- `(4*n-1)*a(n-1)-4*(n-1)²*a(n-2)` -/
def P11890903883289715636.Spec : Prop :=
  ∀ n, P11890903883289715636.a n = A025167 n

theorem P11890903883289715636.correct : P11890903883289715636.Spec := by
  intro n
  simp only [A025167]

end A025167

/-! ## A025167.P4278482098110815008

`A341014(∑[n+3])`
-/

namespace A025167.P4278482098110815008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025167.P4278482098110815008

namespace A025167

/-- `A341014(∑[n+3])` -/
def P4278482098110815008.Spec : Prop :=
  ∀ n, P4278482098110815008.a n = A025167 n

end A025167

/-! ## A025167.P10150991222858172653

`or(1, A341014(eq[2, A025581(n)]))`
-/

namespace A025167.P10150991222858172653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A025167.P10150991222858172653

namespace A025167

/-- `or(1, A341014(eq[2, A025581(n)]))` -/
def P10150991222858172653.Spec : Prop :=
  ∀ n, P10150991222858172653.a n = A025167 n

end A025167

/-! ## A025167.P6299439180751958665

`A341014(eq[2, A025581(n)])%A070855(n+1)`
-/

namespace A025167.P6299439180751958665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A070855 (n + 1))

end

end A025167.P6299439180751958665

namespace A025167

/-- `A341014(eq[2, A025581(n)])%A070855(n+1)` -/
def P6299439180751958665.Spec : Prop :=
  ∀ n, P6299439180751958665.a n = A025167 n

end A025167

/-! ## A025167.P5487467839283673387

`A249131(record[gcd(n, ∑[n])])`
-/

namespace A025167.P5487467839283673387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249131 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A025167.P5487467839283673387

namespace A025167

/-- `A249131(record[gcd(n, ∑[n])])` -/
def P5487467839283673387.Spec : Prop :=
  ∀ n, P5487467839283673387.a n = A025167 n

end A025167

/-!
# A025168: Expansion of e.g.f.: exp(x/(1-2*x)).

The programs for A025168, the canonical program `A025168.P15733108234511883103` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025168 has offset 0).

The definition of A025168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025168.P15733108234511883103

`(4*n-3)*a(n-1)-4*(n-2)*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025168

/-- `(4*n-3)*a(n-1)-4*(n-2)*(n-1)*a(n-2)` -/
def P15733108234511883103.Spec : Prop :=
  ∀ n, P15733108234511883103.a n = A025168 n

theorem P15733108234511883103.correct : P15733108234511883103.Spec := by
  intro n
  simp only [A025168]

end A025168

/-! ## A025168.P16108288833297563356

`A341033(∑[n+3])`
-/

namespace A025168.P16108288833297563356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025168.P16108288833297563356

namespace A025168

/-- `A341033(∑[n+3])` -/
def P16108288833297563356.Spec : Prop :=
  ∀ n, P16108288833297563356.a n = A025168 n

end A025168

/-! ## A025168.P10997434198205253733

`A341033(A055998(n+1))+A000007(n+1)`
-/

namespace A025168.P10997434198205253733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A025168.P10997434198205253733

namespace A025168

/-- `A341033(A055998(n+1))+A000007(n+1)` -/
def P10997434198205253733.Spec : Prop :=
  ∀ n, P10997434198205253733.a n = A025168 n

end A025168

/-! ## A025168.P14794700301969092559

`A341033(A141214(n))%A208022(n+1)`
-/

namespace A025168.P14794700301969092559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341033 (A141214 n).toNat) (A208022 (n + 1))

end

end A025168.P14794700301969092559

namespace A025168

/-- `A341033(A141214(n))%A208022(n+1)` -/
def P14794700301969092559.Spec : Prop :=
  ∀ n, P14794700301969092559.a n = A025168 n

end A025168

/-! ## A025168.P12105715080346586611

`A249131(log2(ceil(2^(n-1))²))`
-/

namespace A025168.P12105715080346586611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249131 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2 : ℝ))).toNat

end

end A025168.P12105715080346586611

namespace A025168

/-- `A249131(log2(ceil(2^(n-1))²))` -/
def P12105715080346586611.Spec : Prop :=
  ∀ n, P12105715080346586611.a n = A025168 n

end A025168

/-!
# A025169: a(n) = 2*Fibonacci(2*n+2).

The programs for A025169, the canonical program `A025169.P7147670569779217885` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025169 has offset 0).

The definition of A025169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025169.P7147670569779217885

`3*a(n-1)-a(n-2)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025169

/-- `3*a(n-1)-a(n-2)` -/
def P7147670569779217885.Spec : Prop :=
  ∀ n, P7147670569779217885.a n = A025169 n

theorem P7147670569779217885.correct : P7147670569779217885.Spec := by
  intro n
  simp only [A025169]

end A025169

/-! ## A025169.P14341480003284099758

`A111282(n+2)`
-/

namespace A025169.P14341480003284099758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (n + 2)

end

end A025169.P14341480003284099758

namespace A025169

/-- `A111282(n+2)` -/
def P14341480003284099758.Spec : Prop :=
  ∀ n, P14341480003284099758.a n = A025169 n

end A025169

/-! ## A025169.P14188556668675798503

`2*A001906(n+1)`
-/

namespace A025169.P14188556668675798503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 (n + 1)

end

end A025169.P14188556668675798503

namespace A025169

/-- `2*A001906(n+1)` -/
def P14188556668675798503.Spec : Prop :=
  ∀ n, P14188556668675798503.a n = A025169 n

end A025169

/-! ## A025169.P18080583453833504168

`ogf(2/(1-3x+x^2))`
-/

namespace A025169.P18080583453833504168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -3, 1] n

end

end A025169.P18080583453833504168

namespace A025169

/-- `ogf(2/(1-3x+x^2))` -/
def P18080583453833504168.Spec : Prop :=
  ∀ n, P18080583453833504168.a n = A025169 n

end A025169

/-! ## A025169.P16968385077021503503

`ceil(ϕ²*a(n-1))` with `a(0)=2`
-/

namespace A025169.P16968385077021503503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A025169.P16968385077021503503

namespace A025169

/-- `ceil(ϕ²*a(n-1))` -/
def P16968385077021503503.Spec : Prop :=
  ∀ n, P16968385077021503503.a n = A025169 n

end A025169

/-! ## A025169.P3363549582987262691

`ceil(a(n-1)/(2-ϕ))` with `a(0)=2`
-/

namespace A025169.P3363549582987262691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A025169.P3363549582987262691

namespace A025169

/-- `ceil(a(n-1)/(2-ϕ))` -/
def P3363549582987262691.Spec : Prop :=
  ∀ n, P3363549582987262691.a n = A025169 n

end A025169

/-! ## A025169.P3103505357200308949

`round(ϕ²*a(n-1))` with `a(0)=2, a(1)=6`
-/

namespace A025169.P3103505357200308949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A025169.P3103505357200308949

namespace A025169

/-- `round(ϕ²*a(n-1))` -/
def P3103505357200308949.Spec : Prop :=
  ∀ n, P3103505357200308949.a n = A025169 n

end A025169

/-! ## A025169.P12210370165638332102

`ceil(ϕ*ϕ*a(n-1))` with `a(0)=2`
-/

namespace A025169.P12210370165638332102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌉

end

end A025169.P12210370165638332102

namespace A025169

/-- `ceil(ϕ*ϕ*a(n-1))` -/
def P12210370165638332102.Spec : Prop :=
  ∀ n, P12210370165638332102.a n = A025169 n

end A025169

/-! ## A025169.P12857503387040060336

`-floor(a(n-1)/(ϕ-2))` with `a(0)=2`
-/

namespace A025169.P12857503387040060336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 2)⌋

end

end A025169.P12857503387040060336

namespace A025169

/-- `-floor(a(n-1)/(ϕ-2))` -/
def P12857503387040060336.Spec : Prop :=
  ∀ n, P12857503387040060336.a n = A025169 n

end A025169

/-! ## A025169.P15777791915483922671

`-floor(-(ϕ²*a(n-1)))` with `a(0)=2`
-/

namespace A025169.P15777791915483922671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  -⌊-(Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌋

end

end A025169.P15777791915483922671

namespace A025169

/-- `-floor(-(ϕ²*a(n-1)))` -/
def P15777791915483922671.Spec : Prop :=
  ∀ n, P15777791915483922671.a n = A025169 n

end A025169

/-! ## A025169.P6774248480653617003

`lcm(2, floor(a(n-1)/(ϕ-2)))` with `a(0)=2`
-/

namespace A025169.P6774248480653617003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm 2 ⌊(a (n - 1) : ℝ) / (Real.goldenRatio - 2)⌋

end

end A025169.P6774248480653617003

namespace A025169

/-- `lcm(2, floor(a(n-1)/(ϕ-2)))` -/
def P6774248480653617003.Spec : Prop :=
  ∀ n, (P6774248480653617003.a n : ℤ) = A025169 n

end A025169

/-! ## A025169.P13312300246891921994

`2*∑[floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A025169.P13312300246891921994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025169.P13312300246891921994

namespace A025169

/-- `2*∑[floor(ϕ²*a(n-1))]` -/
def P13312300246891921994.Spec : Prop :=
  ∀ n, P13312300246891921994.a n = A025169 n

end A025169

/-! ## A025169.P4585937405427681122

`2*Δ[floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A025169.P4585937405427681122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A025169.P4585937405427681122

namespace A025169

/-- `2*Δ[floor(ϕ²*a(n-1))]` -/
def P4585937405427681122.Spec : Prop :=
  ∀ n, P4585937405427681122.a n = A025169 n

end A025169

/-! ## A025169.P3491456143098980334

`a(n-1)-floor(a(n-1)/(1-ϕ))` with `a(0)=2`
-/

namespace A025169.P3491456143098980334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℝ) / (1 - Real.goldenRatio)⌋

end

end A025169.P3491456143098980334

namespace A025169

/-- `a(n-1)-floor(a(n-1)/(1-ϕ))` -/
def P3491456143098980334.Spec : Prop :=
  ∀ n, P3491456143098980334.a n = A025169 n

end A025169

/-! ## A025169.P18056247354111372491

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A025169.P18056247354111372491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A025169.P18056247354111372491

namespace A025169

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P18056247354111372491.Spec : Prop :=
  ∀ n, P18056247354111372491.a n = A025169 n

theorem P18056247354111372491.correct : P18056247354111372491.Spec := by
  intro n
  simp only [A025169, Nat.add_sub_cancel, A025169.P18056247354111372491.a, A025169.P7147670569779217885.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A025169

/-! ## A025169.P16954579973568470480

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=2, a(1)=6`
-/

namespace A025169.P16954579973568470480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A025169.P16954579973568470480

namespace A025169

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P16954579973568470480.Spec : Prop :=
  ∀ n, P16954579973568470480.a n = A025169 n

theorem P16954579973568470480.correct : P16954579973568470480.Spec := by
  intro n
  simp only [A025169, Nat.add_sub_cancel, A025169.P16954579973568470480.a, A025169.P7147670569779217885.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A025169

/-! ## A025169.P8813917557384765804

`A140833(Δ[n²])`
-/

namespace A025169.P8813917557384765804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025169.P8813917557384765804

namespace A025169

/-- `A140833(Δ[n²])` -/
def P8813917557384765804.Spec : Prop :=
  ∀ n, P8813917557384765804.a n = A025169 n

end A025169

/-! ## A025169.P2227660288913286655

`∑[A052995(n+1)]`
-/

namespace A025169.P2227660288913286655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025169.P2227660288913286655

namespace A025169

/-- `∑[A052995(n+1)]` -/
def P2227660288913286655.Spec : Prop :=
  ∀ n, P2227660288913286655.a n = A025169 n

end A025169

/-! ## A025169.P15383293885594394858

`∑[A055819(n+1)]`
-/

namespace A025169.P15383293885594394858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025169.P15383293885594394858

namespace A025169

/-- `∑[A055819(n+1)]` -/
def P15383293885594394858.Spec : Prop :=
  ∀ n, P15383293885594394858.a n = A025169 n

end A025169

/-! ## A025169.P18295444527813086293

`∑[A069403(n)+1]`
-/

namespace A025169.P18295444527813086293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069403 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025169.P18295444527813086293

namespace A025169

/-- `∑[A069403(n)+1]` -/
def P18295444527813086293.Spec : Prop :=
  ∀ n, P18295444527813086293.a n = A025169 n

end A025169

/-!
# A025170: Expansion of g.f.: 1/(1 + 2*x + 9*x^2).

The programs for A025170, the canonical program `A025170.P4305589611295788271` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025170 has offset 0).

The definition of A025170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+9x^2))` (program `A025170.P4305589611295788271`, by `A025170.P4305589611295788271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025170.P4305589611295788271

`ogf(1/(1+2x+9x^2))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025170

/-- `ogf(1/(1+2x+9x^2))` -/
def P4305589611295788271.Spec : Prop :=
  ∀ n, P4305589611295788271.a n = A025170 n

theorem P4305589611295788271.correct : P4305589611295788271.Spec := by
  intro n
  simp only [A025170]

end A025170

/-! ## A025170.P1272735644135124440

`-(2*a(n-1)+9*a(n-2))` with `a(0)=1, a(1)=-2`
-/

namespace A025170.P1272735644135124440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  -(2 * a (n - 1) + 9 * a (n - 2))

end

end A025170.P1272735644135124440

namespace A025170

/-- `-(2*a(n-1)+9*a(n-2))` -/
def P1272735644135124440.Spec : Prop :=
  ∀ n, P1272735644135124440.a n = A025170 n

end A025170

/-! ## A025170.P14250981193745445937

`(-1)^n*A127357(n)`
-/

namespace A025170.P14250981193745445937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127357 n

end

end A025170.P14250981193745445937

namespace A025170

/-- `(-1)^n*A127357(n)` -/
def P14250981193745445937.Spec : Prop :=
  ∀ n, P14250981193745445937.a n = A025170 n

end A025170

/-! ## A025170.P11583599038210747048

`A088137(n+1)²+(A087455(n+1)/2)²-(A087455(n+2)/2)²`
-/

namespace A025170.P11583599038210747048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088137 (n + 1) ^ 2 : ℚ) + ((A087455 (n + 1) : ℚ) / 2) ^ 2 - ((A087455 (n + 2) : ℚ) / 2) ^ 2

end

end A025170.P11583599038210747048

namespace A025170

/-- `A088137(n+1)²+(A087455(n+1)/2)²-(A087455(n+2)/2)²` -/
def P11583599038210747048.Spec : Prop :=
  ∀ n, P11583599038210747048.a n = (A025170 n : ℚ)

end A025170

/-! ## A025170.P11716226064428305979

`A088137(2*(n+1))/2`
-/

namespace A025170.P11716226064428305979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088137 (2 * (n + 1)) : ℚ) / 2

end

end A025170.P11716226064428305979

namespace A025170

/-- `A088137(2*(n+1))/2` -/
def P11716226064428305979.Spec : Prop :=
  ∀ n, P11716226064428305979.a n = (A025170 n : ℚ)

end A025170

/-! ## A025170.P8367551061376068000

`A087455(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025170.P8367551061376068000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087455 (2 * n) - a (n - 1)

end

end A025170.P8367551061376068000

namespace A025170

/-- `A087455(2*n)-a(n-1)` -/
def P8367551061376068000.Spec : Prop :=
  ∀ n, P8367551061376068000.a n = A025170 n

end A025170

/-! ## A025170.P2249541198069796627

`∑[A025172(n)]*A033999(n)`
-/

namespace A025170.P2249541198069796627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A025170.P2249541198069796627

namespace A025170

/-- `∑[A025172(n)]*A033999(n)` -/
def P2249541198069796627.Spec : Prop :=
  ∀ n, P2249541198069796627.a n = A025170 n

end A025170

/-! ## A025170.P9980819825602996118

`∑[A087455(n)]*A087455(n+1)`
-/

namespace A025170.P9980819825602996118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A087455 (n + 1)

end

end A025170.P9980819825602996118

namespace A025170

/-- `∑[A087455(n)]*A087455(n+1)` -/
def P9980819825602996118.Spec : Prop :=
  ∀ n, P9980819825602996118.a n = A025170 n

end A025170

/-! ## A025170.P1809221111790620939

`A087455(n+1)*A088137(n+1)`
-/

namespace A025170.P1809221111790620939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087455 (n + 1) * A088137 (n + 1)

end

end A025170.P1809221111790620939

namespace A025170

/-- `A087455(n+1)*A088137(n+1)` -/
def P1809221111790620939.Spec : Prop :=
  ∀ n, P1809221111790620939.a n = A025170 n

end A025170

/-! ## A025170.P10621835577971215037

`A087455(2*n)-A088137(2*n)/2`
-/

namespace A025170.P10621835577971215037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087455 (2 * n) : ℚ) - (A088137 (2 * n) : ℚ) / 2

end

end A025170.P10621835577971215037

namespace A025170

/-- `A087455(2*n)-A088137(2*n)/2` -/
def P10621835577971215037.Spec : Prop :=
  ∀ n, P10621835577971215037.a n = (A025170 n : ℚ)

end A025170

/-! ## A025170.P13752413622882791835

`A122508(2*n)-A122508(2*n+1)/2`
-/

namespace A025170.P13752413622882791835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122508 (2 * n) : ℚ) - (A122508 (2 * n + 1) : ℚ) / 2

end

end A025170.P13752413622882791835

namespace A025170

/-- `A122508(2*n)-A122508(2*n+1)/2` -/
def P13752413622882791835.Spec : Prop :=
  ∀ n, P13752413622882791835.a n = (A025170 n : ℚ)

end A025170

/-!
# A025171: Reciprocal Chebyshev polynomial of second kind evaluated at 4 multiplied by (-1)^n.

The programs for A025171, the canonical program `A025171.P13077164112822408549` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025171 has offset 0).

The definition of A025171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025171.P3602319490754637523

`ogf(1/(1+2x+16x^2))`
-/

namespace A025171.P3602319490754637523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 16] n

end

end A025171.P3602319490754637523

namespace A025171

/-- `ogf(1/(1+2x+16x^2))` -/
def P3602319490754637523.Spec : Prop :=
  ∀ n, P3602319490754637523.a n = A025171 n

end A025171

/-! ## A025171.P7974339711399143209

`A375882(n)-a(n-1)` with `a(0)=1`
-/

namespace A025171.P7974339711399143209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375882 n - a (n - 1)

end

end A025171.P7974339711399143209

namespace A025171

/-- `A375882(n)-a(n-1)` -/
def P7974339711399143209.Spec : Prop :=
  ∀ n, P7974339711399143209.a n = A025171 n

end A025171

/-! ## A025171.P13077164112822408549

`A106853(n)*A122803(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025171

/-- `A106853(n)*A122803(n)` -/
def P13077164112822408549.Spec : Prop :=
  ∀ n, P13077164112822408549.a n = A025171 n

theorem P13077164112822408549.correct : P13077164112822408549.Spec := by
  intro n
  simp only [A025171]

end A025171

/-! ## A025171.P11672420799280757089

`Δ[A084247(n)]*A106853(n)`
-/

namespace A025171.P11672420799280757089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A106853 n

end

end A025171.P11672420799280757089

namespace A025171

/-- `Δ[A084247(n)]*A106853(n)` -/
def P11672420799280757089.Spec : Prop :=
  ∀ n, P11672420799280757089.a n = A025171 n

end A025171

/-! ## A025171.P15798909105035736059

`A106853(n)*A123344(n+1)`
-/

namespace A025171.P15798909105035736059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 n * A123344 (n + 1)

end

end A025171.P15798909105035736059

namespace A025171

/-- `A106853(n)*A123344(n+1)` -/
def P15798909105035736059.Spec : Prop :=
  ∀ n, P15798909105035736059.a n = A025171 n

end A025171

/-! ## A025171.P10105647492094912913

`A000079(n)*A033999(n)*A106853(n)`
-/

namespace A025171.P10105647492094912913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A033999 n * A106853 n

end

end A025171.P10105647492094912913

namespace A025171

/-- `A000079(n)*A033999(n)*A106853(n)` -/
def P10105647492094912913.Spec : Prop :=
  ∀ n, P10105647492094912913.a n = A025171 n

end A025171

/-! ## A025171.P13369523596130289287

`A106853(n)*A123876(∑[n])`
-/

namespace A025171.P13369523596130289287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106853 n * A123876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025171.P13369523596130289287

namespace A025171

/-- `A106853(n)*A123876(∑[n])` -/
def P13369523596130289287.Spec : Prop :=
  ∀ n, P13369523596130289287.a n = A025171 n

end A025171

/-!
# A025172: Let phi = arccos(1/3), the dihedral angle of the regular tetrahedron. Then cos(n*phi) = a(n)/3^n.

The programs for A025172, the canonical program `A025172.P7206322739489652801` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025172 has offset 0).

The definition of A025172 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025172.P7206322739489652801

`2*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025172

/-- `2*a(n-1)-9*a(n-2)` -/
def P7206322739489652801.Spec : Prop :=
  ∀ n, P7206322739489652801.a n = A025172 n

theorem P7206322739489652801.correct : P7206322739489652801.Spec := by
  intro n
  simp only [A025172]

end A025172

/-! ## A025172.P10662173172628228107

`ogf((1-x)/(1-2x+9x^2))`
-/

namespace A025172.P10662173172628228107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 9] n

end

end A025172.P10662173172628228107

namespace A025172

/-- `ogf((1-x)/(1-2x+9x^2))` -/
def P10662173172628228107.Spec : Prop :=
  ∀ n, P10662173172628228107.a n = A025172 n

end A025172

/-! ## A025172.P5737020454846872413

`(-1)^n*A087455(2*n)`
-/

namespace A025172.P5737020454846872413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A087455 (2 * n)

end

end A025172.P5737020454846872413

namespace A025172

/-- `(-1)^n*A087455(2*n)` -/
def P5737020454846872413.Spec : Prop :=
  ∀ n, P5737020454846872413.a n = A025172 n

end A025172

/-! ## A025172.P7586042950911135562

`A266046(2*n)/A000079(n)`
-/

namespace A025172.P7586042950911135562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266046 (2 * n) : ℚ) / (A000079 n : ℚ)

end

end A025172.P7586042950911135562

namespace A025172

/-- `A266046(2*n)/A000079(n)` -/
def P7586042950911135562.Spec : Prop :=
  ∀ n, P7586042950911135562.a n = (A025172 n : ℚ)

end A025172

/-! ## A025172.P1923651722108706564

`A087455(2*n)*A094267(n²)`
-/

namespace A025172.P1923651722108706564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087455 (2 * n) * A094267 (n ^ 2)

end

end A025172.P1923651722108706564

namespace A025172

/-- `A087455(2*n)*A094267(n²)` -/
def P1923651722108706564.Spec : Prop :=
  ∀ n, P1923651722108706564.a n = A025172 n

end A025172

/-!
# A025173: The Gegenbauer Polynomial of index n, order 1, evaluated at x=1/3 and multiplied by n*3^n/2.

The programs for A025173, the canonical program `A025173.P11309945271641807416` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025173 has offset 0).

The definition of A025173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025173.P11309945271641807416

`n/2*A127357(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025173

/-- `n/2*A127357(n)` -/
def P11309945271641807416.Spec : Prop :=
  ∀ n, P11309945271641807416.a n = (A025173 n : ℚ)

end A025173

/-! ## A025173.P16043756039483261193

`n/2*∑[A025172(n)]`
-/

namespace A025173.P16043756039483261193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025172 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A025173.P16043756039483261193

namespace A025173

/-- `n/2*∑[A025172(n)]` -/
def P16043756039483261193.Spec : Prop :=
  ∀ n, P16043756039483261193.a n = (A025173 n : ℚ)

end A025173

/-! ## A025173.P6688127352929925989

`n/2*(-2)^n/2^n*A025170(n)`
-/

namespace A025173.P6688127352929925989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((-2) ^ n : ℚ) / (2 ^ n : ℚ) * (A025170 n : ℚ)

end

end A025173.P6688127352929925989

namespace A025173

/-- `n/2*(-2)^n/2^n*A025170(n)` -/
def P6688127352929925989.Spec : Prop :=
  ∀ n, P6688127352929925989.a n = (A025173 n : ℚ)

end A025173

/-!
# A025174: a(n) = binomial(3n-1, n-1).

The programs for A025174, the canonical program `A025174.P11497073020642724255` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025174 has offset 0).

The definition of A025174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025174.P15754649149958513281

`floor(A165817(n)/2)`
-/

namespace A025174.P15754649149958513281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165817 n : ℚ) / 2⌋

end

end A025174.P15754649149958513281

namespace A025174

/-- `floor(A165817(n)/2)` -/
def P15754649149958513281.Spec : Prop :=
  ∀ n, P15754649149958513281.a n = A025174 n

end A025174

/-! ## A025174.P11497073020642724255

`floor(A005809(n)/3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025174

/-- `floor(A005809(n)/3)` -/
def P11497073020642724255.Spec : Prop :=
  ∀ n, P11497073020642724255.a n = A025174 n

theorem P11497073020642724255.correct : P11497073020642724255.Spec := by
  intro n
  simp only [A025174]

end A025174

/-! ## A025174.P17386990252870173396

`floor(A227726(n)/4)`
-/

namespace A025174.P17386990252870173396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227726 n : ℚ) / 4⌋

end

end A025174.P17386990252870173396

namespace A025174

/-- `floor(A227726(n)/4)` -/
def P17386990252870173396.Spec : Prop :=
  ∀ n, P17386990252870173396.a n = A025174 n

end A025174

/-! ## A025174.P6579073298330600056

`record[-A344503(n+1)]`
-/

namespace A025174.P6579073298330600056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A344503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025174.P6579073298330600056

namespace A025174

/-- `record[-A344503(n+1)]` -/
def P6579073298330600056.Spec : Prop :=
  ∀ n, P6579073298330600056.a n = A025174 n

end A025174

/-! ## A025174.P15954203656850455372

`floor(A264772(∑[n])/3)`
-/

namespace A025174.P15954203656850455372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A264772 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌋

end

end A025174.P15954203656850455372

namespace A025174

/-- `floor(A264772(∑[n])/3)` -/
def P15954203656850455372.Spec : Prop :=
  ∀ n, P15954203656850455372.a n = A025174 n

end A025174

/-! ## A025174.P14744846363635889283

`∑{d}[n, #*A346577(#)]`
-/

namespace A025174.P14744846363635889283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A346577 d

end

end A025174.P14744846363635889283

namespace A025174

/-- `∑{d}[n, #*A346577(#)]` -/
def P14744846363635889283.Spec : Prop :=
  ∀ n, P14744846363635889283.a n = A025174 n

end A025174

/-! ## A025174.P7899539361775710537

`floor(A065942(2*n)/3)`
-/

namespace A025174.P7899539361775710537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065942 (2 * n) : ℚ) / 3⌋

end

end A025174.P7899539361775710537

namespace A025174

/-- `floor(A065942(2*n)/3)` -/
def P7899539361775710537.Spec : Prop :=
  ∀ n, P7899539361775710537.a n = A025174 n

end A025174

/-! ## A025174.P5703056324337675035

`floor(A303259(Δ[n²])/3)`
-/

namespace A025174.P5703056324337675035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3⌋

end

end A025174.P5703056324337675035

namespace A025174

/-- `floor(A303259(Δ[n²])/3)` -/
def P5703056324337675035.Spec : Prop :=
  ∀ n, P5703056324337675035.a n = A025174 n

end A025174

/-! ## A025174.P18293155570420219753

`round(Δ[n²]*A001764(n)/3)`
-/

namespace A025174.P18293155570420219753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001764 n : ℚ) / 3)

end

end A025174.P18293155570420219753

namespace A025174

/-- `round(Δ[n²]*A001764(n)/3)` -/
def P18293155570420219753.Spec : Prop :=
  ∀ n, P18293155570420219753.a n = A025174 n

end A025174

/-! ## A025174.P16145421946298466801

`round((2*n+1)*A047749(2*n)/3)`
-/

namespace A025174.P16145421946298466801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n + 1 : ℤ) * A047749 (2 * n) : ℚ) / 3)

end

end A025174.P16145421946298466801

namespace A025174

/-- `round((2*n+1)*A047749(2*n)/3)` -/
def P16145421946298466801.Spec : Prop :=
  ∀ n, P16145421946298466801.a n = A025174 n

end A025174

/-! ## A025174.P15509898945406938960

`A005809(n)-A165817(n)`
-/

namespace A025174.P15509898945406938960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A165817 n

end

end A025174.P15509898945406938960

namespace A025174

/-- `A005809(n)-A165817(n)` -/
def P15509898945406938960.Spec : Prop :=
  ∀ n, P15509898945406938960.a n = A025174 n

end A025174

/-! ## A025174.P11002078619050185360

`A227726(n)-A005809(n)`
-/

namespace A025174.P11002078619050185360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227726 n - A005809 n

end

end A025174.P11002078619050185360

namespace A025174

/-- `A227726(n)-A005809(n)` -/
def P11002078619050185360.Spec : Prop :=
  ∀ n, P11002078619050185360.a n = A025174 n

theorem P11002078619050185360.correct : P11002078619050185360.Spec := by
  intro n
  simp only [A025174, Nat.add_sub_cancel, A025174.P11002078619050185360.a, A025174.P11497073020642724255.a, A005809, A005809.P15087077436016713419.a, A227726, A227726.P7304249674244244616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A025174

/-! ## A025174.P9338714312479174871

`A264772(∑[n])-A165817(n)`
-/

namespace A025174.P9338714312479174871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (∑ j ∈ Finset.range (n + 1), f1 j) - A165817 n

end

end A025174.P9338714312479174871

namespace A025174

/-- `A264772(∑[n])-A165817(n)` -/
def P9338714312479174871.Spec : Prop :=
  ∀ n, P9338714312479174871.a n = A025174 n

end A025174

/-! ## A025174.P14564565014182853783

`A182584(2*n)-A005809(n)`
-/

namespace A025174.P14564565014182853783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182584 (2 * n) - A005809 n

end

end A025174.P14564565014182853783

namespace A025174

/-- `A182584(2*n)-A005809(n)` -/
def P14564565014182853783.Spec : Prop :=
  ∀ n, P14564565014182853783.a n = A025174 n

end A025174

/-! ## A025174.P14098165017845983722

`A065942(2*n)-A165817(n)`
-/

namespace A025174.P14098165017845983722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (2 * n) - A165817 n

end

end A025174.P14098165017845983722

namespace A025174

/-- `A065942(2*n)-A165817(n)` -/
def P14098165017845983722.Spec : Prop :=
  ∀ n, P14098165017845983722.a n = A025174 n

end A025174

/-! ## A025174.P9970947274875513649

`A081204(2*n)-A165817(n)`
-/

namespace A025174.P9970947274875513649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n) - A165817 n

end

end A025174.P9970947274875513649

namespace A025174

/-- `A081204(2*n)-A165817(n)` -/
def P9970947274875513649.Spec : Prop :=
  ∀ n, P9970947274875513649.a n = A025174 n

end A025174

/-! ## A025174.P11083424777257786332

`A165817(n)%A045721(n)/2`
-/

namespace A025174.P11083424777257786332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A165817 n) (A045721 n) : ℚ) / 2

end

end A025174.P11083424777257786332

namespace A025174

/-- `A165817(n)%A045721(n)/2` -/
def P11083424777257786332.Spec : Prop :=
  ∀ n, P11083424777257786332.a n = (A025174 n : ℚ)

end A025174

/-! ## A025174.P18201820507913580120

`A005809(n)%A045721(n)/3`
-/

namespace A025174.P18201820507913580120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A005809 n) (A045721 n) : ℚ) / 3

end

end A025174.P18201820507913580120

namespace A025174

/-- `A005809(n)%A045721(n)/3` -/
def P18201820507913580120.Spec : Prop :=
  ∀ n, P18201820507913580120.a n = (A025174 n : ℚ)

end A025174

/-! ## A025174.P15627007922633687354

`n/A004277(n)*A165817(n)`
-/

namespace A025174.P15627007922633687354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A165817 n : ℚ)

end

end A025174.P15627007922633687354

namespace A025174

/-- `n/A004277(n)*A165817(n)` -/
def P15627007922633687354.Spec : Prop :=
  ∀ n, P15627007922633687354.a n = (A025174 n : ℚ)

end A025174

/-! ## A025174.P3546098761518952086

`A303259(Δ[n²])-A165817(n)`
-/

namespace A025174.P3546098761518952086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A165817 n

end

end A025174.P3546098761518952086

namespace A025174

/-- `A303259(Δ[n²])-A165817(n)` -/
def P3546098761518952086.Spec : Prop :=
  ∀ n, P3546098761518952086.a n = A025174 n

end A025174

/-!
# A025175: Jacobi polynomial P((1, 1), n, (1/2)).

The programs for A025175, the canonical program `A025175.P863678387703364115` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025175 has offset 0).

The definition of A025175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025175.P863678387703364115

`2*A012125(n+1)/(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025175

/-- `2*A012125(n+1)/(n+2)` -/
def P863678387703364115.Spec : Prop :=
  ∀ n, P863678387703364115.a n = (A025175 n : ℚ)

end A025175

/-! ## A025175.P13555005475555956708

`A053122(∑[n])*A336729(n+1)`
-/

namespace A025175.P13555005475555956708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053122 (∑ j ∈ Finset.range (n + 1), f1 j) * A336729 (n + 1)

end

end A025175.P13555005475555956708

namespace A025175

/-- `A053122(∑[n])*A336729(n+1)` -/
def P13555005475555956708.Spec : Prop :=
  ∀ n, P13555005475555956708.a n = A025175 n

end A025175

/-!
# A025176: a(n) = Jacobi P-Polynomial P_n(alpha=1, beta=1, x=sqrt(2)) multiplied by 2^(n/2+floor(n/2)) and divided by n+1.

The programs for A025176, there is no canonical definition to state claims against.
-/

/-! ## A025176.P11384309531633812536

`A068764(n+1)/2^∑[n%2]`
-/

namespace A025176.P11384309531633812536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068764 (n + 1) : ℚ) / (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A025176.P11384309531633812536

/-! ## A025176.P14542918530631262876

`A068764(n+1)/A060546(n)`
-/

namespace A025176.P14542918530631262876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068764 (n + 1) : ℚ) / (A060546 n : ℚ)

end

end A025176.P14542918530631262876

/-! ## A025176.P16282953192073385373

`A068764(n+1)/A131572(n+1)`
-/

namespace A025176.P16282953192073385373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068764 (n + 1) : ℚ) / (A131572 (n + 1) : ℚ)

end

end A025176.P16282953192073385373

/-! ## A025176.P5335244088882861608

`Δ[A118376(n+1)]/A060546(n)`
-/

namespace A025176.P5335244088882861608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118376 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A060546 n : ℚ)

end

end A025176.P5335244088882861608

/-! ## A025176.P5057356640627678188

`Δ[A118376(n+1)]/∑[A131575(n)]`
-/

namespace A025176.P5057356640627678188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A025176.P5057356640627678188

/-! ## A025176.P6924029889371956279

`Δ[A118376(n+1)]/A016116(n+1)`
-/

namespace A025176.P6924029889371956279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118376 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A016116 (n + 1) : ℚ)

end

end A025176.P6924029889371956279

/-!
# A025177: Triangular array, read by rows: first differences in n,n direction of trinomial array A027907.

The programs for A025177, there is no canonical definition to state claims against.
-/

/-! ## A025177.P14199389460786865551

`2*A027907(n)-A025564(n)`
-/

namespace A025177.P14199389460786865551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027907 n - A025564 n

end

end A025177.P14199389460786865551

/-! ## A025177.P10695038214144225755

`2*A169623(A316670(n+1))-A025564(n)`
-/

namespace A025177.P10695038214144225755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A316670 (n + 1)).toNat - A025564 n

end

end A025177.P10695038214144225755

/-! ## A025177.P2939030588411000188

`2*A169623(A007606(n+1)-1)-A025564(n)`
-/

namespace A025177.P2939030588411000188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169623 (A007606 (n + 1) - 1).toNat - A025564 n

end

end A025177.P2939030588411000188

/-! ## A025177.P9389845594344983143

`A169623(A316670(n+1))+A027907(n)-A025564(n)`
-/

namespace A025177.P9389845594344983143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A316670 (n + 1)).toNat + (A027907 n - A025564 n)

end

end A025177.P9389845594344983143

/-! ## A025177.P4874395196126073703

`A169623(A007606(n+1)-1)+A027907(n)-A025564(n)`
-/

namespace A025177.P4874395196126073703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A007606 (n + 1) - 1).toNat + (A027907 n - A025564 n)

end

end A025177.P4874395196126073703

/-! ## A025177.P11468477449589664136

`A027907(n)+A169623(A316965(n)+1)-A025564(n)`
-/

namespace A025177.P11468477449589664136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n + (A169623 (A316965 n + 1).toNat - A025564 n)

end

end A025177.P11468477449589664136

/-! ## A025177.P10525904395512459423

`A004277(A027907(n))-A025564(n)`
-/

namespace A025177.P10525904395512459423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A027907 n).toNat - A025564 n

end

end A025177.P10525904395512459423

/-!
# A025178: First differences of the central trinomial coefficients A002426.

The programs for A025178, the canonical program `A025178.P2265313531992063063` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025178 has offset 1).

The definition of A025178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025178.P2435972530684383243

`n*A007971(n+1)`
-/

namespace A025178.P2435972530684383243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007971 (n + 1)

end

end A025178.P2435972530684383243

namespace A025178

/-- `n*A007971(n+1)` -/
def P2435972530684383243.Spec : Prop :=
  ∀ n, P2435972530684383243.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P2265313531992063063

`A002426(n+1)-A002426(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025178

/-- `A002426(n+1)-A002426(n)` -/
def P2265313531992063063.Spec : Prop :=
  ∀ n, P2265313531992063063.a n = A025178 (n + 1)

theorem P2265313531992063063.correct : P2265313531992063063.Spec := by
  intro n
  simp only [A025178, Nat.add_sub_cancel]

end A025178

/-! ## A025178.P12063709645880780383

`((2+n+1)*a(n-2)+3*(3-(n+1))*a(n-3)+3*n*a(n-1))/(n+1)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A025178.P12063709645880780383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  ((2 + (n + 1) : ℚ) * a (n - 2) + (3 * (3 - (n + 1 : ℤ)) : ℚ) * a (n - 3) + (3 * n : ℚ) * a (n - 1)) / (n + 1 : ℚ)

end

end A025178.P12063709645880780383

namespace A025178

/-- `((2+n+1)*a(n-2)+3*(3-(n+1))*a(n-3)+3*n*a(n-1))/(n+1)` -/
def P12063709645880780383.Spec : Prop :=
  ∀ n, P12063709645880780383.a n = (A025178 (n + 1) : ℚ)

end A025178

/-! ## A025178.P2031637105158577490

`2*Δ[A097861(n)]`
-/

namespace A025178.P2031637105158577490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A025178.P2031637105158577490

namespace A025178

/-- `2*Δ[A097861(n)]` -/
def P2031637105158577490.Spec : Prop :=
  ∀ n, P2031637105158577490.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P4020234369768324856

`2*Δ[A257520(n)]`
-/

namespace A025178.P4020234369768324856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A025178.P4020234369768324856

namespace A025178

/-- `2*Δ[A257520(n)]` -/
def P4020234369768324856.Spec : Prop :=
  ∀ n, P4020234369768324856.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P913376637059509368

`n*A126068(n+1)`
-/

namespace A025178.P913376637059509368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126068 (n + 1)

end

end A025178.P913376637059509368

namespace A025178

/-- `n*A126068(n+1)` -/
def P913376637059509368.Spec : Prop :=
  ∀ n, P913376637059509368.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P7005850391389058543

`n*A168055(n+1)`
-/

namespace A025178.P7005850391389058543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168055 (n + 1)

end

end A025178.P7005850391389058543

namespace A025178

/-- `n*A168055(n+1)` -/
def P7005850391389058543.Spec : Prop :=
  ∀ n, P7005850391389058543.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P9810585320686154690

`2*A005213(Δ[n²])`
-/

namespace A025178.P9810585320686154690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025178.P9810585320686154690

namespace A025178

/-- `2*A005213(Δ[n²])` -/
def P9810585320686154690.Spec : Prop :=
  ∀ n, P9810585320686154690.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P3844976055312919261

`abs(n*A167022(n+1))`
-/

namespace A025178.P3844976055312919261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A167022 (n + 1)|

end

end A025178.P3844976055312919261

namespace A025178

/-- `abs(n*A167022(n+1))` -/
def P3844976055312919261.Spec : Prop :=
  ∀ n, P3844976055312919261.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P15957893355423352871

`abs(n*A168058(n+1))`
-/

namespace A025178.P15957893355423352871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A168058 (n + 1)|

end

end A025178.P15957893355423352871

namespace A025178

/-- `abs(n*A168058(n+1))` -/
def P15957893355423352871.Spec : Prop :=
  ∀ n, P15957893355423352871.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P2633524113569350853

`abs(2*n*A166587(n))`
-/

namespace A025178.P2633524113569350853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) * A166587 n)|

end

end A025178.P2633524113569350853

namespace A025178

/-- `abs(2*n*A166587(n))` -/
def P2633524113569350853.Spec : Prop :=
  ∀ n, P2633524113569350853.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P14088096757943639393

`2*n*∑[A105695(n)]`
-/

namespace A025178.P14088096757943639393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A025178.P14088096757943639393

namespace A025178

/-- `2*n*∑[A105695(n)]` -/
def P14088096757943639393.Spec : Prop :=
  ∀ n, P14088096757943639393.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P10210576181839283490

`2*n*A086246(n+1)`
-/

namespace A025178.P10210576181839283490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A086246 (n + 1))

end

end A025178.P10210576181839283490

namespace A025178

/-- `2*n*A086246(n+1)` -/
def P10210576181839283490.Spec : Prop :=
  ∀ n, P10210576181839283490.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P4006574116407573183

`2*n*A168049(n+1)`
-/

namespace A025178.P4006574116407573183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A168049 (n + 1))

end

end A025178.P4006574116407573183

namespace A025178

/-- `2*n*A168049(n+1)` -/
def P4006574116407573183.Spec : Prop :=
  ∀ n, P4006574116407573183.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P1636796834337625830

`2*n*A001006(abs(1-n))`
-/

namespace A025178.P1636796834337625830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A001006 |1 - (n : ℤ)|.toNat

end

end A025178.P1636796834337625830

namespace A025178

/-- `2*n*A001006(abs(1-n))` -/
def P1636796834337625830.Spec : Prop :=
  ∀ n, P1636796834337625830.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P8009878595038336164

`(n-3*n)*A168051(n+1)`
-/

namespace A025178.P8009878595038336164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (3 * n : ℤ)) * A168051 (n + 1)

end

end A025178.P8009878595038336164

namespace A025178

/-- `(n-3*n)*A168051(n+1)` -/
def P8009878595038336164.Spec : Prop :=
  ∀ n, P8009878595038336164.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P12210270209945527365

`A005774(n)+A005043(n+1)`
-/

namespace A025178.P12210270209945527365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n + A005043 (n + 1)

end

end A025178.P12210270209945527365

namespace A025178

/-- `A005774(n)+A005043(n+1)` -/
def P12210270209945527365.Spec : Prop :=
  ∀ n, P12210270209945527365.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P7366795922741203517

`A005773(n+1)-A005043(n)`
-/

namespace A025178.P7366795922741203517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A005043 n

end

end A025178.P7366795922741203517

namespace A025178

/-- `A005773(n+1)-A005043(n)` -/
def P7366795922741203517.Spec : Prop :=
  ∀ n, P7366795922741203517.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P7116317185664881178

`A307789(n+2)-A005043(n)`
-/

namespace A025178.P7116317185664881178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 2) - A005043 n

end

end A025178.P7116317185664881178

namespace A025178

/-- `A307789(n+2)-A005043(n)` -/
def P7116317185664881178.Spec : Prop :=
  ∀ n, P7116317185664881178.a n = A025178 (n + 1)

end A025178

/-! ## A025178.P3125101283472342628

`2*(A002426(n)-A005043(n))`
-/

namespace A025178.P3125101283472342628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002426 n - A005043 n)

end

end A025178.P3125101283472342628

namespace A025178

/-- `2*(A002426(n)-A005043(n))` -/
def P3125101283472342628.Spec : Prop :=
  ∀ n, P3125101283472342628.a n = A025178 (n + 1)

end A025178

/-!
# A025179: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 1. Also a(n) = T(n,n-1), where T is the array defined in A025177.

The programs for A025179, the canonical program `A025179.P2089828949187285846` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025179 has offset 2).

The definition of A025179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024997, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025179.P2089828949187285846

`1/2*A024997(n+3)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025179

/-- `1/2*A024997(n+3)` -/
def P2089828949187285846.Spec : Prop :=
  ∀ n, P2089828949187285846.a n = (A025179 (n + 2) : ℚ)

end A025179

/-! ## A025179.P3938570170148854461

`A026079(n+2)-2`
-/

namespace A025179.P3938570170148854461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026079 (n + 2) - 2

end

end A025179.P3938570170148854461

namespace A025179

/-- `A026079(n+2)-2` -/
def P3938570170148854461.Spec : Prop :=
  ∀ n, P3938570170148854461.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P16583305657641641901

`∑[record[A024998(n+1)]]`
-/

namespace A025179.P16583305657641641901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025179.P16583305657641641901

namespace A025179

/-- `∑[record[A024998(n+1)]]` -/
def P16583305657641641901.Spec : Prop :=
  ∀ n, P16583305657641641901.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P17400019091134690131

`∑[A024998(n+2)]+1`
-/

namespace A025179.P17400019091134690131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025179.P17400019091134690131

namespace A025179

/-- `∑[A024998(n+2)]+1` -/
def P17400019091134690131.Spec : Prop :=
  ∀ n, P17400019091134690131.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P3880831186818688082

`A026165(n)+Δ[A002426(n)]`
-/

namespace A025179.P3880831186818688082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 n + (f1 (n + 1) - f1 n)

end

end A025179.P3880831186818688082

namespace A025179

/-- `A026165(n)+Δ[A002426(n)]` -/
def P3880831186818688082.Spec : Prop :=
  ∀ n, P3880831186818688082.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P14945633659748611716

`A026165(n)+A025178(n+1)`
-/

namespace A025179.P14945633659748611716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 n + A025178 (n + 1)

end

end A025179.P14945633659748611716

namespace A025179

/-- `A026165(n)+A025178(n+1)` -/
def P14945633659748611716.Spec : Prop :=
  ∀ n, P14945633659748611716.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P7538883270308752597

`Δ[A002426(n)]+Δ[A005774(n)]`
-/

namespace A025179.P7538883270308752597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A025179.P7538883270308752597

namespace A025179

/-- `Δ[A002426(n)]+Δ[A005774(n)]` -/
def P7538883270308752597.Spec : Prop :=
  ∀ n, P7538883270308752597.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P14627233967844121683

`A025178(n+1)+Δ[A005774(n)]`
-/

namespace A025179.P14627233967844121683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1) + (f1 (n + 1) - f1 n)

end

end A025179.P14627233967844121683

namespace A025179

/-- `A025178(n+1)+Δ[A005774(n)]` -/
def P14627233967844121683.Spec : Prop :=
  ∀ n, P14627233967844121683.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P11722999339012132399

`A005774(n+1)+A005043(n+1)`
-/

namespace A025179.P11722999339012132399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) + A005043 (n + 1)

end

end A025179.P11722999339012132399

namespace A025179

/-- `A005774(n+1)+A005043(n+1)` -/
def P11722999339012132399.Spec : Prop :=
  ∀ n, P11722999339012132399.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P9381578847920716046

`A005773(n+2)-A005043(n+2)`
-/

namespace A025179.P9381578847920716046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A005043 (n + 2)

end

end A025179.P9381578847920716046

namespace A025179

/-- `A005773(n+2)-A005043(n+2)` -/
def P9381578847920716046.Spec : Prop :=
  ∀ n, P9381578847920716046.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P17970027889332956261

`A005774(n+1)+abs(A099323(n+2))`
-/

namespace A025179.P17970027889332956261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 1) + |A099323 (n + 2)|

end

end A025179.P17970027889332956261

namespace A025179

/-- `A005774(n+1)+abs(A099323(n+2))` -/
def P17970027889332956261.Spec : Prop :=
  ∀ n, P17970027889332956261.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P3438339423479550996

`A025178(n+2)-Δ[A005043(n+1)]`
-/

namespace A025179.P3438339423479550996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2) - (f1 (n + 1) - f1 n)

end

end A025179.P3438339423479550996

namespace A025179

/-- `A025178(n+2)-Δ[A005043(n+1)]` -/
def P3438339423479550996.Spec : Prop :=
  ∀ n, P3438339423479550996.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P1445130192508707403

`2*A002426(n+1)-A001006(n+1)`
-/

namespace A025179.P1445130192508707403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002426 (n + 1) - A001006 (n + 1)

end

end A025179.P1445130192508707403

namespace A025179

/-- `2*A002426(n+1)-A001006(n+1)` -/
def P1445130192508707403.Spec : Prop :=
  ∀ n, P1445130192508707403.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P4467018900580273193

`A001006(n+1)+(n+1)*A002026(n)`
-/

namespace A025179.P4467018900580273193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) + (n + 1 : ℤ) * A002026 n

end

end A025179.P4467018900580273193

namespace A025179

/-- `A001006(n+1)+(n+1)*A002026(n)` -/
def P4467018900580273193.Spec : Prop :=
  ∀ n, P4467018900580273193.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P5535895304162940191

`A001006(n+1)+(n+1)*Δ[A001006(n)]`
-/

namespace A025179.P5535895304162940191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) + (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A025179.P5535895304162940191

namespace A025179

/-- `A001006(n+1)+(n+1)*Δ[A001006(n)]` -/
def P5535895304162940191.Spec : Prop :=
  ∀ n, P5535895304162940191.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P2847221982238280462

`A278646(n+1)+A278646(n)-A002026(n)`
-/

namespace A025179.P2847221982238280462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278646 (n + 1) + (A278646 n - A002026 n)

end

end A025179.P2847221982238280462

namespace A025179

/-- `A278646(n+1)+A278646(n)-A002026(n)` -/
def P2847221982238280462.Spec : Prop :=
  ∀ n, P2847221982238280462.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P11880968792399582733

`Δ[A005717(n+1)]`
-/

namespace A025179.P11880968792399582733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025179.P11880968792399582733

namespace A025179

/-- `Δ[A005717(n+1)]` -/
def P11880968792399582733.Spec : Prop :=
  ∀ n, P11880968792399582733.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P7401541447098855908

`A024997(n+3)/2`
-/

namespace A025179.P7401541447098855908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024997 (n + 3) : ℚ) / 2

end

end A025179.P7401541447098855908

namespace A025179

/-- `A024997(n+3)/2` -/
def P7401541447098855908.Spec : Prop :=
  ∀ n, P7401541447098855908.a n = (A025179 (n + 2) : ℚ)

end A025179

/-! ## A025179.P16187232982075429205

`Δ[Δ[A097861(n+1)]]`
-/

namespace A025179.P16187232982075429205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025179.P16187232982075429205

namespace A025179

/-- `Δ[Δ[A097861(n+1)]]` -/
def P16187232982075429205.Spec : Prop :=
  ∀ n, P16187232982075429205.a n = A025179 (n + 2)

end A025179

/-! ## A025179.P12789551664180118521

`Δ[Δ[A257520(n+1)]]`
-/

namespace A025179.P12789551664180118521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025179.P12789551664180118521

namespace A025179

/-- `Δ[Δ[A257520(n+1)]]` -/
def P12789551664180118521.Spec : Prop :=
  ∀ n, P12789551664180118521.a n = A025179 (n + 2)

end A025179

/-!
# A025180: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 2. Also a(n) = T(n,n-2), where T is the array defined in A025177.

The programs for A025180, the canonical program `A025180.P7299662419470437156` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025180 has offset 2).

The definition of A025180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025180.P4826121355713181242

`A026069(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A025180.P4826121355713181242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026069 (n + 2) + a (n - 1)

end

end A025180.P4826121355713181242

namespace A025180

/-- `A026069(n+2)+a(n-1)` -/
def P4826121355713181242.Spec : Prop :=
  ∀ n, P4826121355713181242.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P7299662419470437156

`record[A005773(n)-A005043(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025180

/-- `record[A005773(n)-A005043(n+1)]` -/
def P7299662419470437156.Spec : Prop :=
  ∀ n, P7299662419470437156.a n = A025180 (n + 2)

theorem P7299662419470437156.correct : P7299662419470437156.Spec := by
  intro n
  simp only [A025180, Nat.add_sub_cancel]

end A025180

/-! ## A025180.P3079282948563684001

`A005773(n+2)-A005043(n+3)`
-/

namespace A025180.P3079282948563684001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A005043 (n + 3)

end

end A025180.P3079282948563684001

namespace A025180

/-- `A005773(n+2)-A005043(n+3)` -/
def P3079282948563684001.Spec : Prop :=
  ∀ n, P3079282948563684001.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P13896327850767221702

`A005773(n+2)-record[abs(A099323(n))]`
-/

namespace A025180.P13896327850767221702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025180.P13896327850767221702

namespace A025180

/-- `A005773(n+2)-record[abs(A099323(n))]` -/
def P13896327850767221702.Spec : Prop :=
  ∀ n, P13896327850767221702.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P15894569211260816137

`Δ[(n+1)*Δ[A001006(n)]/2]`
-/

namespace A025180.P15894569211260816137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (f2 (n + 1) - f2 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P15894569211260816137

namespace A025180

/-- `Δ[(n+1)*Δ[A001006(n)]/2]` -/
def P15894569211260816137.Spec : Prop :=
  ∀ n, P15894569211260816137.a n = (A025180 (n + 2) : ℚ)

end A025180

/-! ## A025180.P10616042757204782102

`Δ[A026165(n)-A002426(n)]`
-/

namespace A025180.P10616042757204782102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 n - A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P10616042757204782102

namespace A025180

/-- `Δ[A026165(n)-A002426(n)]` -/
def P10616042757204782102.Spec : Prop :=
  ∀ n, P10616042757204782102.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P11603659660482402879

`Δ[Δ[A005774(n)]-A002426(n)]`
-/

namespace A025180.P11603659660482402879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P11603659660482402879

namespace A025180

/-- `Δ[Δ[A005774(n)]-A002426(n)]` -/
def P11603659660482402879.Spec : Prop :=
  ∀ n, P11603659660482402879.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P11330456788681109068

`A026165(n+1)-A025179(n+2)`
-/

namespace A025180.P11330456788681109068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026165 (n + 1) - A025179 (n + 2)

end

end A025180.P11330456788681109068

namespace A025180

/-- `A026165(n+1)-A025179(n+2)` -/
def P11330456788681109068.Spec : Prop :=
  ∀ n, P11330456788681109068.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P10656996887713129553

`A025179(n+3)-A025566(n+3)`
-/

namespace A025180.P10656996887713129553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 3) - A025566 (n + 3)

end

end A025180.P10656996887713129553

namespace A025180

/-- `A025179(n+3)-A025566(n+3)` -/
def P10656996887713129553.Spec : Prop :=
  ∀ n, P10656996887713129553.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P6528931901828659812

`Δ[Δ[A005774(n)]]-A025178(n+1)`
-/

namespace A025180.P6528931901828659812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A025178 (n + 1)

end

end A025180.P6528931901828659812

namespace A025180

/-- `Δ[Δ[A005774(n)]]-A025178(n+1)` -/
def P6528931901828659812.Spec : Prop :=
  ∀ n, P6528931901828659812.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P17997780084364920898

`Δ[A005717(n+1)-A005043(n+2)]`
-/

namespace A025180.P17997780084364920898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) - A005043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P17997780084364920898

namespace A025180

/-- `Δ[A005717(n+1)-A005043(n+2)]` -/
def P17997780084364920898.Spec : Prop :=
  ∀ n, P17997780084364920898.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P2498434139502332400

`Δ[A025179(n+2)-A002426(n+1)]`
-/

namespace A025180.P2498434139502332400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 2) - A002426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P2498434139502332400

namespace A025180

/-- `Δ[A025179(n+2)-A002426(n+1)]` -/
def P2498434139502332400.Spec : Prop :=
  ∀ n, P2498434139502332400.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P14382762812378864244

`2*A014531(n+1)-A025567(n+1)`
-/

namespace A025180.P14382762812378864244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014531 (n + 1) - A025567 (n + 1)

end

end A025180.P14382762812378864244

namespace A025180

/-- `2*A014531(n+1)-A025567(n+1)` -/
def P14382762812378864244.Spec : Prop :=
  ∀ n, P14382762812378864244.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P4124550412483071232

`A025179(n+3)-(A005717(n+1)+A005717(n+2))`
-/

namespace A025180.P4124550412483071232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 3) - (A005717 (n + 1) + A005717 (n + 2))

end

end A025180.P4124550412483071232

namespace A025180

/-- `A025179(n+3)-(A005717(n+1)+A005717(n+2))` -/
def P4124550412483071232.Spec : Prop :=
  ∀ n, P4124550412483071232.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P13096282972673295386

`A025179(n+3)-(A025179(n+2)+A025178(n+2))`
-/

namespace A025180.P13096282972673295386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025179 (n + 3) - (A025179 (n + 2) + A025178 (n + 2))

end

end A025180.P13096282972673295386

namespace A025180

/-- `A025179(n+3)-(A025179(n+2)+A025178(n+2))` -/
def P13096282972673295386.Spec : Prop :=
  ∀ n, P13096282972673295386.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P10554287252725802400

`record[A026135(n)-A025178(n+1)]`
-/

namespace A025180.P10554287252725802400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026135 n - A025178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025180.P10554287252725802400

namespace A025180

/-- `record[A026135(n)-A025178(n+1)]` -/
def P10554287252725802400.Spec : Prop :=
  ∀ n, P10554287252725802400.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P17095608082986050826

`Δ[Δ[A005717(n+1)-A097893(n)]]`
-/

namespace A025180.P17095608082986050826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) - A097893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P17095608082986050826

namespace A025180

/-- `Δ[Δ[A005717(n+1)-A097893(n)]]` -/
def P17095608082986050826.Spec : Prop :=
  ∀ n, P17095608082986050826.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P8262275059293386598

`Δ[A025567(n+1)-A014531(n+1)]`
-/

namespace A025180.P8262275059293386598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025567 (n + 1) - A014531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025180.P8262275059293386598

namespace A025180

/-- `Δ[A025567(n+1)-A014531(n+1)]` -/
def P8262275059293386598.Spec : Prop :=
  ∀ n, P8262275059293386598.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P13158548336478540011

`A014531(n+2)-(A026069(n+3)+A014531(n+1))`
-/

namespace A025180.P13158548336478540011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (n + 2) - (A026069 (n + 3) + A014531 (n + 1))

end

end A025180.P13158548336478540011

namespace A025180

/-- `A014531(n+2)-(A026069(n+3)+A014531(n+1))` -/
def P13158548336478540011.Spec : Prop :=
  ∀ n, P13158548336478540011.a n = A025180 (n + 2)

end A025180

/-! ## A025180.P7646956820440271829

`record[A038622(n+1)]-record[A005043(n)]`
-/

namespace A025180.P7646956820440271829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A025180.P7646956820440271829

namespace A025180

/-- `record[A038622(n+1)]-record[A005043(n)]` -/
def P7646956820440271829.Spec : Prop :=
  ∀ n, P7646956820440271829.a n = A025180 (n + 2)

end A025180

/-!
# A025181: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 3. Also a(n) = T(n,n-3), where T is the array defined in A025177.

The programs for A025181, the canonical program `A025181.P6813046550114564119` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025181 has offset 3).

The definition of A025181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025181.P6813046550114564119

`∑[A026070(n+3)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A025181

/-- `∑[A026070(n+3)]` -/
def P6813046550114564119.Spec : Prop :=
  ∀ n, P6813046550114564119.a n = A025181 (n + 3)

theorem P6813046550114564119.correct : P6813046550114564119.Spec := by
  intro n
  simp only [A025181, Nat.add_sub_cancel]

end A025181

/-! ## A025181.P11068004579638680712

`(n+2)/4*A026122(n+2)`
-/

namespace A025181.P11068004579638680712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 4 * (A026122 (n + 2) : ℚ)

end

end A025181.P11068004579638680712

namespace A025181

/-- `(n+2)/4*A026122(n+2)` -/
def P11068004579638680712.Spec : Prop :=
  ∀ n, P11068004579638680712.a n = (A025181 (n + 3) : ℚ)

end A025181

/-! ## A025181.P6415635085480116912

`∑[A026086(n+3)+a(n-1)]` with `a(0)=1`
-/

namespace A025181.P6415635085480116912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026086 (n + 3) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025181.P6415635085480116912

namespace A025181

/-- `∑[A026086(n+3)+a(n-1)]` -/
def P6415635085480116912.Spec : Prop :=
  ∀ n, P6415635085480116912.a n = A025181 (n + 3)

end A025181

/-! ## A025181.P12398367236816472869

`∑[∑[A026086(A123108(2*n)+3)]]`
-/

namespace A025181.P12398367236816472869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026086 (A123108 (2 * n) + 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025181.P12398367236816472869

namespace A025181

/-- `∑[∑[A026086(A123108(2*n)+3)]]` -/
def P12398367236816472869.Spec : Prop :=
  ∀ n, P12398367236816472869.a n = A025181 (n + 3)

end A025181

/-! ## A025181.P16773205113443968187

`Δ[Δ[A304011(n+2)]]`
-/

namespace A025181.P16773205113443968187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304011 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025181.P16773205113443968187

namespace A025181

/-- `Δ[Δ[A304011(n+2)]]` -/
def P16773205113443968187.Spec : Prop :=
  ∀ n, P16773205113443968187.a n = A025181 (n + 3)

end A025181

/-! ## A025181.P16730828013381875903

`2*A014532(n+1)-A025568(n+1)`
-/

namespace A025181.P16730828013381875903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014532 (n + 1) - A025568 (n + 1)

end

end A025181.P16730828013381875903

namespace A025181

/-- `2*A014532(n+1)-A025568(n+1)` -/
def P16730828013381875903.Spec : Prop :=
  ∀ n, P16730828013381875903.a n = A025181 (n + 3)

end A025181

/-! ## A025181.P15276017081748427681

`A024997(n+4)/2-A026107(n+3)`
-/

namespace A025181.P15276017081748427681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024997 (n + 4) : ℚ) / 2 - (A026107 (n + 3) : ℚ)

end

end A025181.P15276017081748427681

namespace A025181

/-- `A024997(n+4)/2-A026107(n+3)` -/
def P15276017081748427681.Spec : Prop :=
  ∀ n, P15276017081748427681.a n = (A025181 (n + 3) : ℚ)

end A025181

/-! ## A025181.P12570033107743433263

`(A026069(n+4)-A026107(n+3))/2`
-/

namespace A025181.P12570033107743433263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026069 (n + 4) - A026107 (n + 3) : ℚ) / 2

end

end A025181.P12570033107743433263

namespace A025181

/-- `(A026069(n+4)-A026107(n+3))/2` -/
def P12570033107743433263.Spec : Prop :=
  ∀ n, P12570033107743433263.a n = (A025181 (n + 3) : ℚ)

end A025181

/-! ## A025181.P7034561994794619377

`A026069(n+4)-A024997(n+4)/2`
-/

namespace A025181.P7034561994794619377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026069 (n + 4) : ℚ) - (A024997 (n + 4) : ℚ) / 2

end

end A025181.P7034561994794619377

namespace A025181

/-- `A026069(n+4)-A024997(n+4)/2` -/
def P7034561994794619377.Spec : Prop :=
  ∀ n, P7034561994794619377.a n = (A025181 (n + 3) : ℚ)

end A025181

/-! ## A025181.P8552243906028223030

`A014532(n+1)+A005717(n+2)-A025180(n+3)`
-/

namespace A025181.P8552243906028223030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 1) + (A005717 (n + 2) - A025180 (n + 3))

end

end A025181.P8552243906028223030

namespace A025181

/-- `A014532(n+1)+A005717(n+2)-A025180(n+3)` -/
def P8552243906028223030.Spec : Prop :=
  ∀ n, P8552243906028223030.a n = A025181 (n + 3)

end A025181

/-! ## A025181.P4155496959928816513

`A014532(n+2)-(A026070(n+4)+A014532(n+1))`
-/

namespace A025181.P4155496959928816513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 2) - (A026070 (n + 4) + A014532 (n + 1))

end

end A025181.P4155496959928816513

namespace A025181

/-- `A014532(n+2)-(A026070(n+4)+A014532(n+1))` -/
def P4155496959928816513.Spec : Prop :=
  ∀ n, P4155496959928816513.a n = A025181 (n + 3)

end A025181

/-!
# A025182: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is an integer, s(0) = 0, |s(1)| = 1, |s(i) - s(i-1)| <= 1 for i >= 2, s(n) = 4. Also a(n) = T(n,n-4), where T is the array defined in A025177.

The programs for A025182, the canonical program `A025182.P9629458430133393997` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025182 has offset 4).

The definition of A025182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025182.P6683816910352365129

`∑[A026071(n+4)]`
-/

namespace A025182.P6683816910352365129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026071 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025182.P6683816910352365129

namespace A025182

/-- `∑[A026071(n+4)]` -/
def P6683816910352365129.Spec : Prop :=
  ∀ n, P6683816910352365129.a n = A025182 (n + 4)

end A025182

/-! ## A025182.P9629458430133393997

`∑[∑[A026087(n+4)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A025182

/-- `∑[∑[A026087(n+4)]]` -/
def P9629458430133393997.Spec : Prop :=
  ∀ n, P9629458430133393997.a n = A025182 (n + 4)

theorem P9629458430133393997.correct : P9629458430133393997.Spec := by
  intro n
  simp only [A025182, Nat.add_sub_cancel]

end A025182

/-! ## A025182.P16328743561580784979

`A014533(n+1)+A014531(n+2)-A025181(n+4)`
-/

namespace A025182.P16328743561580784979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014533 (n + 1) + (A014531 (n + 2) - A025181 (n + 4))

end

end A025182.P16328743561580784979

namespace A025182

/-- `A014533(n+1)+A014531(n+2)-A025181(n+4)` -/
def P16328743561580784979.Spec : Prop :=
  ∀ n, P16328743561580784979.a n = A025182 (n + 4)

end A025182

/-! ## A025182.P17758100340543193895

`A014533(n+2)-(A026071(n+5)+A014533(n+1))`
-/

namespace A025182.P17758100340543193895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014533 (n + 2) - (A026071 (n + 5) + A014533 (n + 1))

end

end A025182.P17758100340543193895

namespace A025182

/-- `A014533(n+2)-(A026071(n+5)+A014533(n+1))` -/
def P17758100340543193895.Spec : Prop :=
  ∀ n, P17758100340543193895.a n = A025182 (n + 4)

end A025182

/-! ## A025182.P14870689050974106605

`A025177((n+5)²-(n+1))`
-/

namespace A025182.P14870689050974106605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 ((n + 5) ^ 2 - (n + 1))

end

end A025182.P14870689050974106605

namespace A025182

/-- `A025177((n+5)²-(n+1))` -/
def P14870689050974106605.Spec : Prop :=
  ∀ n, P14870689050974106605.a n = A025182 (n + 4)

end A025182

/-! ## A025182.P15837150306135061764

`∑[A024996(A027689(n+4))]`
-/

namespace A025182.P15837150306135061764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024996 (A027689 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025182.P15837150306135061764

namespace A025182

/-- `∑[A024996(A027689(n+4))]` -/
def P15837150306135061764.Spec : Prop :=
  ∀ n, P15837150306135061764.a n = A025182 (n + 4)

end A025182

/-! ## A025182.P9138036160856188867

`Δ[A082601(A090288(n))]`
-/

namespace A025182.P9138036160856188867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 (A090288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025182.P9138036160856188867

namespace A025182

/-- `Δ[A082601(A090288(n))]` -/
def P9138036160856188867.Spec : Prop :=
  ∀ n, P9138036160856188867.a n = A025182 (n + 4)

end A025182

/-!
# A025183: a(n) = T(2n-1,n), where T is the array defined in A025177.

The programs for A025183, there is no canonical definition to state claims against.
-/

/-! ## A025183.P2415282060012310761

`A025177(A054552(n+1))`
-/

namespace A025183.P2415282060012310761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A054552 (n + 1)).toNat

end

end A025183.P2415282060012310761

/-! ## A025183.P10563234039530880615

`A025177(A185950(n+1))`
-/

namespace A025183.P10563234039530880615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A185950 (n + 1)).toNat

end

end A025183.P10563234039530880615

/-! ## A025183.P4827123686609005101

`A025177(A069894(n)+n)`
-/

namespace A025183.P4827123686609005101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A069894 n + (n : ℤ)).toNat

end

end A025183.P4827123686609005101

/-! ## A025183.P17580455724577655000

`A025177(2*A001844(n)+n)`
-/

namespace A025183.P17580455724577655000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (2 * A001844 n + (n : ℤ)).toNat

end

end A025183.P17580455724577655000

/-! ## A025183.P15888361375056059704

`A025177(∑[A008574(2*n)+1])`
-/

namespace A025183.P15888361375056059704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025183.P15888361375056059704

/-! ## A025183.P3213867767341960367

`A025177(∑[A016825(2*n)]+n)`
-/

namespace A025183.P3213867767341960367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A025183.P3213867767341960367

/-! ## A025183.P15048682512804993698

`A025177(A035608(2*n+1)+1)`
-/

namespace A025183.P15048682512804993698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A035608 (2 * n + 1) + 1).toNat

end

end A025183.P15048682512804993698

/-! ## A025183.P7351102690115427513

`A025177(A004202(∑[A008574(n)]))`
-/

namespace A025183.P7351102690115427513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A004202 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A025183.P7351102690115427513

/-! ## A025183.P9614965097415088816

`A025177(∑[A004280(A016825(n))])`
-/

namespace A025183.P9614965097415088816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025183.P9614965097415088816

/-! ## A025183.P17566369592703242676

`A025177(A001844(n)+A001844(n)+n)`
-/

namespace A025183.P17566369592703242676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A001844 n + (A001844 n + (n : ℤ))).toNat

end

end A025183.P17566369592703242676

/-!
# A025184: a(n) = T(2n,n), where T is the array defined in A025177.

The programs for A025184, there is no canonical definition to state claims against.
-/

/-! ## A025184.P10218461343207146247

`A025189(2*n)`
-/

namespace A025184.P10218461343207146247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025189 (2 * n)

end

end A025184.P10218461343207146247

/-! ## A025184.P309202388278435142

`abs(A025183(n+1)-A026072(n+1))`
-/

namespace A025184.P309202388278435142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A025183 (n + 1) - A026072 (n + 1)|

end

end A025184.P309202388278435142

/-! ## A025184.P5576809211317612017

`A025189(A004277(n))%A248836(n+1)`
-/

namespace A025184.P5576809211317612017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025189 (A004277 n).toNat) (A248836 (n + 1))

end

end A025184.P5576809211317612017

/-! ## A025184.P4370354647152939969

`A025177(n*(4*n+3))`
-/

namespace A025184.P4370354647152939969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (n * (4 * n + 3))

end

end A025184.P4370354647152939969

/-! ## A025184.P12765642960979114138

`abs(A024996(A054552((2^n+1)%2+n))-A025183(n+1))`
-/

namespace A025184.P12765642960979114138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024996 (A054552 ((2 ^ n + 1) % 2 + n)).toNat - A025183 (n + 1)|

end

end A025184.P12765642960979114138

/-!
# A025185: a(n) = T(3n,n), where T is the array defined in A025177.

The programs for A025185, there is no canonical definition to state claims against.
-/

/-! ## A025185.P6132838680579875920

`A025177(n*(9*n+5))`
-/

namespace A025185.P6132838680579875920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (n * (9 * n + 5))

end

end A025185.P6132838680579875920

/-! ## A025185.P15215127159655556904

`A064911(A026158(n))+A026158(n)`
-/

namespace A025185.P15215127159655556904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A026158 n).toNat + A026158 n

end

end A025185.P15215127159655556904

/-! ## A025185.P12293481609038539487

`A289110(A011782(n))+A026158(n)`
-/

namespace A025185.P12293481609038539487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289110 (A011782 n).toNat + A026158 n

end

end A025185.P12293481609038539487

/-!
# A025186: T(4n,n), where T is the array defined in A025177.

The programs for A025186, there is no canonical definition to state claims against.
-/

/-! ## A025186.P11756242376917861847

`A025177((4*n)²+n)`
-/

namespace A025186.P11756242376917861847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 ((4 * n) ^ 2 + n)

end

end A025186.P11756242376917861847

/-! ## A025186.P11745429133006886924

`A048793(A052720(n))+A026159(n)`
-/

namespace A025186.P11745429133006886924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A052720 n).toNat + A026159 n

end

end A025186.P11745429133006886924

/-!
# A025187: a(n) = T(2n,n-1), where T is the array defined in A025177.

The programs for A025187, there is no canonical definition to state claims against.
-/

/-! ## A025187.P12370204186318719119

`A025177(A033951(n+1))`
-/

namespace A025187.P12370204186318719119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A033951 (n + 1)).toNat

end

end A025187.P12370204186318719119

/-! ## A025187.P18386467940840750192

`A025177(A182868(n+1))`
-/

namespace A025187.P18386467940840750192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A182868 (n + 1)).toNat

end

end A025187.P18386467940840750192

/-! ## A025187.P2789938071212841567

`A025177(A103517(n)²+n)`
-/

namespace A025187.P2789938071212841567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A103517 n ^ 2 + (n : ℤ)).toNat

end

end A025187.P2789938071212841567

/-! ## A025187.P4381106931678057045

`A025177(Δ[A049778(Δ[n²])])`
-/

namespace A025187.P4381106931678057045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (f1 (n + 1) - f1 n).toNat

end

end A025187.P4381106931678057045

/-! ## A025187.P5588716134078336817

`A025177(A007742(n+1)-1)`
-/

namespace A025187.P5588716134078336817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A007742 (n + 1) - 1).toNat

end

end A025187.P5588716134078336817

/-!
# A025188: a(n) = T(2n,n+1), where T is the array defined in A025177.

The programs for A025188, there is no canonical definition to state claims against.
-/

/-! ## A025188.P6548489929517733013

`A025177(A054567(n+2))`
-/

namespace A025188.P6548489929517733013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A054567 (n + 2)).toNat

end

end A025188.P6548489929517733013

/-! ## A025188.P5256324238379653837

`A025177(A180863(n+2))`
-/

namespace A025188.P5256324238379653837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A180863 (n + 2)).toNat

end

end A025188.P5256324238379653837

/-! ## A025188.P4178323072561682218

`A025177(A007742(n+1)+1)`
-/

namespace A025188.P4178323072561682218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A007742 (n + 1) + 1).toNat

end

end A025188.P4178323072561682218

/-! ## A025188.P5970101295038227814

`A025177(A182868(n+1)+2)`
-/

namespace A025188.P5970101295038227814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A182868 (n + 1) + 2).toNat

end

end A025188.P5970101295038227814

/-! ## A025188.P254016692857169425

`A025177(A033951(n+1)-2)`
-/

namespace A025188.P254016692857169425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A033951 (n + 1) - 2).toNat

end

end A025188.P254016692857169425

/-!
# A025189: a(n) = T(n,[ n/2 ]), where T is the array defined in A025177.

The programs for A025189, there is no canonical definition to state claims against.
-/

/-! ## A025189.P14747418036112226755

`A025177(∑[record[and(n, -3)]])`
-/

namespace A025189.P14747418036112226755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025189.P14747418036112226755

/-! ## A025189.P13641507578436045755

`A025177(floor(n/2)+n²)`
-/

namespace A025189.P13641507578436045755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (⌊(n : ℚ) / 2⌋ + (n ^ 2 : ℤ)).toNat

end

end A025189.P13641507578436045755

/-! ## A025189.P920207734315612742

`A025177(A035608(n))+n%-1`
-/

namespace A025189.P920207734315612742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A035608 n).toNat + Int.tmod (n : ℤ) (-1)

end

end A025189.P920207734315612742

/-! ## A025189.P11983312210430676489

`lcm(A025177(A035608(n)), A033999(n))`
-/

namespace A025189.P11983312210430676489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025177 (A035608 n).toNat) (A033999 n)

end

end A025189.P11983312210430676489

/-! ## A025189.P11874752060565940736

`char[A078898(n)]*A025177(A035608(n))`
-/

namespace A025189.P11874752060565940736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025177 (A035608 n).toNat

end

end A025189.P11874752060565940736

/-! ## A025189.P6876272216995231026

`A025177(A035608(n))+char[A103523(n+1)]`
-/

namespace A025189.P6876272216995231026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103523 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (A035608 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025189.P6876272216995231026

/-! ## A025189.P10555868424493900920

`char[A055396(n+1)]*A025177(A035608(n))`
-/

namespace A025189.P10555868424493900920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025177 (A035608 n).toNat

end

end A025189.P10555868424493900920

/-! ## A025189.P1851953553079695337

`A025177(A035608(n))/A014963(A008458(n))`
-/

namespace A025189.P1851953553079695337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025177 (A035608 n).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A025189.P1851953553079695337

/-!
# A025190: Expansion of 1/((1-x)(1-10x)(1-11x)(1-12x)).

The programs for A025190, the canonical program `A025190.P13319276791424816468` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025190 has offset 0).

The definition of A025190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025190.P13319276791424816468

`(45*12^(n+3)-99*11^(n+3)+55*10^(n+3)-1)/990`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025190

/-- `(45*12^(n+3)-99*11^(n+3)+55*10^(n+3)-1)/990` -/
def P13319276791424816468.Spec : Prop :=
  ∀ n, P13319276791424816468.a n = (A025190 n : ℚ)

end A025190

/-! ## A025190.P2241194218322179680

`∑[A021021(n)]`
-/

namespace A025190.P2241194218322179680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025190.P2241194218322179680

namespace A025190

/-- `∑[A021021(n)]` -/
def P2241194218322179680.Spec : Prop :=
  ∀ n, P2241194218322179680.a n = A025190 n

end A025190

/-! ## A025190.P6321754074118478442

`∑[2*A020984(n)-A020983(n)]`
-/

namespace A025190.P6321754074118478442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020984 n - A020983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025190.P6321754074118478442

namespace A025190

/-- `∑[2*A020984(n)-A020983(n)]` -/
def P6321754074118478442.Spec : Prop :=
  ∀ n, P6321754074118478442.a n = A025190 n

end A025190

/-! ## A025190.P8655741914752050731

`A016267(n+1)-A016265(n+1)`
-/

namespace A025190.P8655741914752050731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016267 (n + 1) - A016265 (n + 1)

end

end A025190.P8655741914752050731

namespace A025190

/-- `A016267(n+1)-A016265(n+1)` -/
def P8655741914752050731.Spec : Prop :=
  ∀ n, P8655741914752050731.a n = A025190 n

end A025190

/-! ## A025190.P16797488763481061203

`A016268(n+1)-A016267(n+1)`
-/

namespace A025190.P16797488763481061203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016268 (n + 1) - A016267 (n + 1)

end

end A025190.P16797488763481061203

namespace A025190

/-- `A016268(n+1)-A016267(n+1)` -/
def P16797488763481061203.Spec : Prop :=
  ∀ n, P16797488763481061203.a n = A025190 n

end A025190

/-! ## A025190.P1135936716378634236

`∑[A016196(n+1)-A016195(n+2)]`
-/

namespace A025190.P1135936716378634236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016196 (n + 1) - A016195 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025190.P1135936716378634236

namespace A025190

/-- `∑[A016196(n+1)-A016195(n+2)]` -/
def P1135936716378634236.Spec : Prop :=
  ∀ n, P1135936716378634236.a n = A025190 n

end A025190

/-! ## A025190.P6660402345912161136

`a(n-1)-A021021(n)/A008836(A000040(n+1))` with `a(0)=1`
-/

namespace A025190.P6660402345912161136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A021021 n : ℚ) / (A008836 (A000040 (n + 1)).toNat : ℚ)

end

end A025190.P6660402345912161136

namespace A025190

/-- `a(n-1)-A021021(n)/A008836(A000040(n+1))` -/
def P6660402345912161136.Spec : Prop :=
  ∀ n, P6660402345912161136.a n = (A025190 n : ℚ)

end A025190

/-! ## A025190.P11427385129203931636

`a(n-1)+A021021(n)/A008683(A014963(n+1))²` with `a(0)=1`
-/

namespace A025190.P11427385129203931636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A021021 n : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A025190.P11427385129203931636

namespace A025190

/-- `a(n-1)+A021021(n)/A008683(A014963(n+1))²` -/
def P11427385129203931636.Spec : Prop :=
  ∀ n, P11427385129203931636.a n = (A025190 n : ℚ)

end A025190

/-!
# A025191: a(n) = Sum_{k=0..n} T(n,k), where T is the array defined in A025177.

The programs for A025191, there is no canonical definition to state claims against.
-/

/-! ## A025191.P17391745968217974718

`A030339(A262594(n))`
-/

namespace A025191.P17391745968217974718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030339 (A262594 n).toNat

end

end A025191.P17391745968217974718

/-! ## A025191.P5221520618562141809

`A108863(n)+A026819(A377241(n))`
-/

namespace A025191.P5221520618562141809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108863 n + A026819 (A377241 n).toNat

end

end A025191.P5221520618562141809

/-!
# A025192: a(0)=1; a(n) = 2*3^(n-1) for n >= 1.

The programs for A025192, the canonical program `A025192.P8781029619259186440` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025192 has offset 0).

The definition of A025192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025192.P8781029619259186440

`3*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025192

/-- `3*a(n-1)` -/
def P8781029619259186440.Spec : Prop :=
  ∀ n, (P8781029619259186440.a n : ℤ) = A025192 n

theorem P8781029619259186440.correct : P8781029619259186440.Spec := by
  intro n
  simp only [A025192]

end A025192

/-! ## A025192.P8094379148951208575

`A000010(A000244(n))`
-/

namespace A025192.P8094379148951208575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000244 n).toNat

end

end A025192.P8094379148951208575

namespace A025192

/-- `A000010(A000244(n))` -/
def P8094379148951208575.Spec : Prop :=
  ∀ n, P8094379148951208575.a n = A025192 n

end A025192

/-! ## A025192.P14397219447497201233

`A002326((3^n-1)/2)`
-/

namespace A025192.P14397219447497201233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway (((3 ^ n : ℤ) - 1 : ℚ) / 2)).toNat

end

end A025192.P14397219447497201233

namespace A025192

/-- `A002326((3^n-1)/2)` -/
def P14397219447497201233.Spec : Prop :=
  ∀ n, P14397219447497201233.a n = A025192 n

end A025192

/-! ## A025192.P8226906487447071065

`ogf((1-x)/(1-3x))`
-/

namespace A025192.P8226906487447071065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3] n

end

end A025192.P8226906487447071065

namespace A025192

/-- `ogf((1-x)/(1-3x))` -/
def P8226906487447071065.Spec : Prop :=
  ∀ n, P8226906487447071065.a n = A025192 n

end A025192

/-! ## A025192.P11183667103982442247

`Δ[floor(3^(n-1))]`
-/

namespace A025192.P11183667103982442247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025192.P11183667103982442247

namespace A025192

/-- `Δ[floor(3^(n-1))]` -/
def P11183667103982442247.Spec : Prop :=
  ∀ n, P11183667103982442247.a n = A025192 n

end A025192

/-! ## A025192.P7660685290730782610

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A025192.P7660685290730782610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A025192.P7660685290730782610

namespace A025192

/-- `abs(∏[-a(n-1)])` -/
def P7660685290730782610.Spec : Prop :=
  ∀ n, P7660685290730782610.a n = A025192 n

end A025192

/-! ## A025192.P3362655525716066080

`a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=2`
-/

namespace A025192.P3362655525716066080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A025192.P3362655525716066080

namespace A025192

/-- `a(n-1)/cot(atan(3))` -/
def P3362655525716066080.Spec : Prop :=
  ∀ n, P3362655525716066080.a n = (A025192 n : ℝ)

end A025192

/-! ## A025192.P12844036406270447073

`a(n-1)/sqrt(1/9)` with `a(0)=1, a(1)=2`
-/

namespace A025192.P12844036406270447073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A025192.P12844036406270447073

namespace A025192

/-- `a(n-1)/sqrt(1/9)` -/
def P12844036406270447073.Spec : Prop :=
  ∀ n, P12844036406270447073.a n = (A025192 n : ℝ)

end A025192

/-! ## A025192.P11317484754219330755

`ceil(Δ[3^((n-1)%(n+2))])`
-/

namespace A025192.P11317484754219330755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A025192.P11317484754219330755

namespace A025192

/-- `ceil(Δ[3^((n-1)%(n+2))])` -/
def P11317484754219330755.Spec : Prop :=
  ∀ n, P11317484754219330755.a n = A025192 n

end A025192

/-! ## A025192.P12288803863673111866

`lcm(3^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A025192.P12288803863673111866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A025192.P12288803863673111866

namespace A025192

/-- `lcm(3^(n-1), a(n-1))` -/
def P12288803863673111866.Spec : Prop :=
  ∀ n, (P12288803863673111866.a n : ℤ) = A025192 n

end A025192

/-! ## A025192.P8978076670475101383

`ceil(3^(n-1)*gcd(2, 2*n))`
-/

namespace A025192.P8978076670475101383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.gcd 2 (2 * n) : ℚ)⌉

end

end A025192.P8978076670475101383

namespace A025192

/-- `ceil(3^(n-1)*gcd(2, 2*n))` -/
def P8978076670475101383.Spec : Prop :=
  ∀ n, P8978076670475101383.a n = A025192 n

end A025192

/-! ## A025192.P15284666628727774903

`lcm(2, a(n-1)+a(n-1)/2)` with `a(0)=1, a(1)=2`
-/

namespace A025192.P15284666628727774903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 2))

end

end A025192.P15284666628727774903

namespace A025192

/-- `lcm(2, a(n-1)+a(n-1)/2)` -/
def P15284666628727774903.Spec : Prop :=
  ∀ n, (P15284666628727774903.a n : ℤ) = A025192 n

end A025192

/-! ## A025192.P13769396366236723462

`a(n-1)/(1/2)²-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A025192.P13769396366236723462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 1)

end

end A025192.P13769396366236723462

namespace A025192

/-- `a(n-1)/(1/2)²-a(n-1)` -/
def P13769396366236723462.Spec : Prop :=
  ∀ n, P13769396366236723462.a n = (A025192 n : ℚ)

end A025192

/-! ## A025192.P16993475769905197759

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A025192.P16993475769905197759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A025192.P16993475769905197759

namespace A025192

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P16993475769905197759.Spec : Prop :=
  ∀ n, (P16993475769905197759.a n : ℤ) = A025192 n

theorem P16993475769905197759.correct : P16993475769905197759.Spec := by
  intro n
  simp only [A025192, Nat.add_sub_cancel, A025192.P16993475769905197759.a, A025192.P8781029619259186440.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A025192

/-! ## A025192.P16224295165891549484

`a(n-1)-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=2`
-/

namespace A025192.P16224295165891549484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A025192.P16224295165891549484

namespace A025192

/-- `a(n-1)-a(n-1)/(1/2-1)` -/
def P16224295165891549484.Spec : Prop :=
  ∀ n, P16224295165891549484.a n = (A025192 n : ℚ)

end A025192

/-! ## A025192.P664925826254252054

`1-floor(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A025192.P664925826254252054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A025192.P664925826254252054

namespace A025192

/-- `1-floor(1-a(n-1)-a(n-1)-a(n-1))` -/
def P664925826254252054.Spec : Prop :=
  ∀ n, P664925826254252054.a n = A025192 n

end A025192

/-! ## A025192.P1144104581076791418

`a(n-1)-(a(n-1)%2-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A025192.P1144104581076791418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 1) - a (n - 1))

end

end A025192.P1144104581076791418

namespace A025192

/-- `a(n-1)-(a(n-1)%2-a(n-1)-a(n-1))` -/
def P1144104581076791418.Spec : Prop :=
  ∀ n, P1144104581076791418.a n = A025192 n

end A025192

/-! ## A025192.P15656645339938392393

`∑[A052156(n)]`
-/

namespace A025192.P15656645339938392393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025192.P15656645339938392393

namespace A025192

/-- `∑[A052156(n)]` -/
def P15656645339938392393.Spec : Prop :=
  ∀ n, P15656645339938392393.a n = A025192 n

end A025192

/-! ## A025192.P5893501797948586297

`A052919(n)-1`
-/

namespace A025192.P5893501797948586297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 n - 1

end

end A025192.P5893501797948586297

namespace A025192

/-- `A052919(n)-1` -/
def P5893501797948586297.Spec : Prop :=
  ∀ n, P5893501797948586297.a n = A025192 n

end A025192

/-! ## A025192.P8282629983124329426

`A182522(2*n)`
-/

namespace A025192.P8282629983124329426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * n)

end

end A025192.P8282629983124329426

namespace A025192

/-- `A182522(2*n)` -/
def P8282629983124329426.Spec : Prop :=
  ∀ n, P8282629983124329426.a n = A025192 n

end A025192

/-!
# A025193: a(n) = [ 2nd elementary symmetric function of {sqrt(k)} ], k = 1,2,...,n.

The programs for A025193, there is no canonical definition to state claims against.
-/

/-! ## A025193.P10109147989942107347

`∑[A239235(∑[A257408(n+1)])]`
-/

namespace A025193.P10109147989942107347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025193.P10109147989942107347

/-! ## A025193.P17300251963202645375

`∑[A239235(∑[A325130(n+1)])]`
-/

namespace A025193.P17300251963202645375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025193.P17300251963202645375

/-! ## A025193.P16382605785559862705

`∑[A356944(A007095(∑[n+2]-1))]`
-/

namespace A025193.P16382605785559862705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A007095 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025193.P16382605785559862705

/-! ## A025193.P12136645892471216585

`∑[∑[A001221(A135343(n)+1)+n+1]-1]`
-/

namespace A025193.P12136645892471216585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135343 n + 1).toNat + (n : ℤ) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025193.P12136645892471216585

/-! ## A025193.P5586811520429880363

`A299259(n)+A091245(A335471(n))`
-/

namespace A025193.P5586811520429880363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299259 n + A091245 (A335471 n).toNat

end

end A025193.P5586811520429880363

/-!
# A025194: a(n) = [ 3rd elementary symmetric function of {sqrt(k)} ], k = 1,2,...,n.

The programs for A025194, there is no canonical definition to state claims against.
-/

/-! ## A025194.P5439902183954602302

`∑[A023193(∑[A086113(n+1)])]`
-/

namespace A025194.P5439902183954602302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025194.P5439902183954602302

/-!
# A025196: a(n) = floor(Sum_{1<=i

The programs for A025196, there is no canonical definition to state claims against.
-/

/-! ## A025196.P18278219303774762372

`∑[A036042(Δ[A184785(n)])]`
-/

namespace A025196.P18278219303774762372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184785 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025196.P18278219303774762372

/-! ## A025196.P6893977659606327355

`ceil(log(A321229(n))²)`
-/

namespace A025196.P6893977659606327355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A321229 n : ℝ) ^ 2⌉

end

end A025196.P6893977659606327355

/-! ## A025196.P8900283061041796987

`A259361(A293934(2*n)+A196199(n))`
-/

namespace A025196.P8900283061041796987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A293934 (2 * n) + A196199 n).toNat

end

end A025196.P8900283061041796987

/-! ## A025196.P2061898384845191462

`A259361(A293934(2*n)-A053615(n))`
-/

namespace A025196.P2061898384845191462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A293934 (2 * n) - A053615 n).toNat

end

end A025196.P2061898384845191462

/-! ## A025196.P5913518805188927437

`A259361(A293934(2*n)-A100047(n))`
-/

namespace A025196.P5913518805188927437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A293934 (2 * n) - A100047 n).toNat

end

end A025196.P5913518805188927437

/-!
# A025197: a(n) = floor( Sum_{1 <= i < j <= n} ((sqrt(j)-sqrt(i))^3) ).

The programs for A025197, there is no canonical definition to state claims against.
-/

/-! ## A025197.P6407363682984882771

`floor(A340558(n+1)/31)`
-/

namespace A025197.P6407363682984882771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340558 (n + 1) : ℚ) / 31⌋

end

end A025197.P6407363682984882771

/-! ## A025197.P12482781166068226187

`∑[A337502(n+1)-comp[2*(n+2)]]`
-/

namespace A025197.P12482781166068226187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337502 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025197.P12482781166068226187

/-! ## A025197.P11589767314425321828

`A054898(A087051(n)+A084382(n))`
-/

namespace A025197.P11589767314425321828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (A087051 n + A084382 n).toNat

end

end A025197.P11589767314425321828

/-! ## A025197.P7808705076507499774

`A110656(A000578(n))%A027851(n)`
-/

namespace A025197.P7808705076507499774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110656 (A000578 n).toNat) (A027851 n)

end

end A025197.P7808705076507499774

/-! ## A025197.P15392138886824434930

`A141730(A128768(n))`
-/

namespace A025197.P15392138886824434930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141730 (A128768 n).toNat

end

end A025197.P15392138886824434930

/-!
# A025198: [ (n-1)st elementary symmetric function of {sqrt(k)} ], k = 1,2,...,n.

The programs for A025198, there is no canonical definition to state claims against.
-/

/-! ## A025198.P14033774205281645318

`xor(ceil(2^(n-1)+3^(n-1)), A185284(n²))`
-/

namespace A025198.P14033774205281645318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (A185284 (n ^ 2))

end

end A025198.P14033774205281645318

/-! ## A025198.P3525307953185678533

`A066490(A071740(n+1))`
-/

namespace A025198.P3525307953185678533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A071740 (n + 1)).toNat

end

end A025198.P3525307953185678533

/-! ## A025198.P7638839484794794162

`A066490(A241393(n+1))`
-/

namespace A025198.P7638839484794794162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A241393 (n + 1)).toNat

end

end A025198.P7638839484794794162

/-!
# A025199: a(n) = floor(floor(S2)/floor(S1)), where S2 and S1 are, respectively, the 2nd and first elementary symmetric functions of {sqrt(k), k = 1,2,...,n}.

The programs for A025199, there is no canonical definition to state claims against.
-/

/-! ## A025199.P11028179079366757986

`floor(A025193(n+2)/A025224(n+2))`
-/

namespace A025199.P11028179079366757986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025193 (n + 2) : ℚ) / (A025224 (n + 2) : ℚ)⌋

end

end A025199.P11028179079366757986

/-! ## A025199.P5369771856578970187

`A259361(A037461(n+1)+∑[A235269(n+1)])`
-/

namespace A025199.P5369771856578970187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A037461 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025199.P5369771856578970187

/-! ## A025199.P12756611364971103516

`floor(A003056(∑[A133694(n+1)])/3)`
-/

namespace A025199.P12756611364971103516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3⌋

end

end A025199.P12756611364971103516

/-! ## A025199.P2608754178584108054

`floor(A003056(Δ[A211905(n+1)])/3)`
-/

namespace A025199.P2608754178584108054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (f1 (n + 1) - f1 n).toNat : ℚ) / 3⌋

end

end A025199.P2608754178584108054

/-! ## A025199.P6537215802800276332

`A002264(A003056((n+1)*(∑[n+2]-1)))`
-/

namespace A025199.P6537215802800276332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003056 ((n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat).toNat

end

end A025199.P6537215802800276332

