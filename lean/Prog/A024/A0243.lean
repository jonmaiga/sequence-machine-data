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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A024300: Expansion of tan(sin(x))*sin(x)/2.

The programs for A024300, there is no canonical definition to state claims against.
-/

/-! ## A024300.P10620565917983732417

`A009665(n)/2`
-/

namespace A024300.P10620565917983732417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009665 n : ℚ) / 2

end

end A024300.P10620565917983732417

/-! ## A024300.P2897222507220292943

`A009803(2*n)*A062157(n)/2`
-/

namespace A024300.P2897222507220292943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009803 (2 * n) * A062157 n : ℚ) / 2

end

end A024300.P2897222507220292943

/-! ## A024300.P11894364411186344753

`A009803(A005843(n))/2*A062157(n)`
-/

namespace A024300.P11894364411186344753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009803 (A005843 n).toNat : ℚ) / 2 * (A062157 n : ℚ)

end

end A024300.P11894364411186344753

/-!
# A024301: E.g.f.: sin(x)*sin(tan(x))/2 (even powers only).

The programs for A024301, there is no canonical definition to state claims against.
-/

/-! ## A024301.P5242477798613328866

`A009548(n)/2`
-/

namespace A024301.P5242477798613328866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009548 n : ℚ) / 2

end

end A024301.P5242477798613328866

/-! ## A024301.P14299801285940421989

`(A009072(n)-A009505(n))/2`
-/

namespace A024301.P14299801285940421989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009072 n - A009505 n : ℚ) / 2

end

end A024301.P14299801285940421989

/-! ## A024301.P16438598683593790838

`((-1)^n*A009265(2*n)-A009505(n))/2`
-/

namespace A024301.P16438598683593790838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A009265 (2 * n) - A009505 n : ℚ) / 2

end

end A024301.P16438598683593790838

/-! ## A024301.P123081342185145589

`(A009072(n)-A009187(2*n+1)*A033999(n+1))/2`
-/

namespace A024301.P123081342185145589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009072 n - A009187 (2 * n + 1) * A033999 (n + 1) : ℚ) / 2

end

end A024301.P123081342185145589

/-!
# A024302: Expansion of sin(sinh(x))*x/2.

The programs for A024302, there is no canonical definition to state claims against.
-/

/-! ## A024302.P3704457680064422226

`n*A003722(abs(1-n))`
-/

namespace A024302.P3704457680064422226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003722 |1 - (n : ℤ)|.toNat

end

end A024302.P3704457680064422226

/-! ## A024302.P17826306614649017464

`A009493(n)/2`
-/

namespace A024302.P17826306614649017464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009493 n : ℚ) / 2

end

end A024302.P17826306614649017464

/-! ## A024302.P10403080814908033489

`A009206(2*n)/(2*A033999(n+1))`
-/

namespace A024302.P10403080814908033489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024302.P10403080814908033489

/-!
# A024303: Expansion of tan(tanh(x))*x/2.

The programs for A024303, there is no canonical definition to state claims against.
-/

/-! ## A024303.P1551688256083716129

`A009718(n)/2`
-/

namespace A024303.P1551688256083716129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009718 n : ℚ) / 2

end

end A024303.P1551688256083716129

/-! ## A024303.P8235391826287144322

`n*A003721(abs(1-n))`
-/

namespace A024303.P8235391826287144322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003721 |1 - (n : ℤ)|.toNat

end

end A024303.P8235391826287144322

/-! ## A024303.P1548147066836087494

`(A133707(n+1)+1)^-1*A009718(n)`
-/

namespace A024303.P1548147066836087494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133707 (n + 1) + 1 : ℚ) ^ (-1 : ℤ) * (A009718 n : ℚ)

end

end A024303.P1548147066836087494

/-!
# A024304: Expansion of tan(x)*sin(sin(x))/2.

The programs for A024304, there is no canonical definition to state claims against.
-/

/-! ## A024304.P8251950717249560109

`A009740(n)/2`
-/

namespace A024304.P8251950717249560109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009740 n : ℚ) / 2

end

end A024304.P8251950717249560109

/-! ## A024304.P15689080156715332878

`abs(A009829(2*n)/2)`
-/

namespace A024304.P15689080156715332878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009829 (2 * n) : ℚ) / 2|

end

end A024304.P15689080156715332878

/-! ## A024304.P8793043841172851021

`lcm(A000079(n), A009829(2*n))/2`
-/

namespace A024304.P8793043841172851021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A009829 (2 * n)) : ℚ) / 2

end

end A024304.P8793043841172851021

/-! ## A024304.P15968141991904681318

`A009829(2*n)/(2*A033999(n+1))`
-/

namespace A024304.P15968141991904681318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009829 (2 * n) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A024304.P15968141991904681318

/-!
# A024305: a(n) = 2*(n+1) + 3*n + ... + (k+1)*(n+2-k), where k = floor((n+1)/2).

The programs for A024305, the canonical program `A024305.P9851003365253708199` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024305 has offset 1).

The definition of A024305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024305.P9851003365253708199

`A023857(n+1)+∑[A008619(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A024305

/-- `A023857(n+1)+∑[A008619(n)]` -/
def P9851003365253708199.Spec : Prop :=
  ∀ n, P9851003365253708199.a n = A024305 (n + 1)

theorem P9851003365253708199.correct : P9851003365253708199.Spec := by
  intro n
  simp only [A024305, Nat.add_sub_cancel]

end A024305

/-! ## A024305.P14134384533904342673

`A087811(n+1)+A023857(n+1)`
-/

namespace A024305.P14134384533904342673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A023857 (n + 1)

end

end A024305.P14134384533904342673

namespace A024305

/-- `A087811(n+1)+A023857(n+1)` -/
def P14134384533904342673.Spec : Prop :=
  ∀ n, P14134384533904342673.a n = A024305 (n + 1)

end A024305

/-! ## A024305.P9542848501419572138

`A024869(n+2)-2*A000096(A008619(n))`
-/

namespace A024305.P9542848501419572138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) - 2 * A000096 (A008619 n).toNat

end

end A024305.P9542848501419572138

namespace A024305

/-- `A024869(n+2)-2*A000096(A008619(n))` -/
def P9542848501419572138.Spec : Prop :=
  ∀ n, P9542848501419572138.a n = A024305 (n + 1)

end A024305

/-! ## A024305.P4019524842121644904

`A023857(n+1)+A002620(n+2)`
-/

namespace A024305.P4019524842121644904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (n + 1) + A002620 (n + 2)

end

end A024305.P4019524842121644904

namespace A024305

/-- `A023857(n+1)+A002620(n+2)` -/
def P4019524842121644904.Spec : Prop :=
  ∀ n, P4019524842121644904.a n = A024305 (n + 1)

end A024305

/-! ## A024305.P15130403306717721937

`A023855(n+3)-(n+3)`
-/

namespace A024305.P15130403306717721937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 3) - (n + 3 : ℤ)

end

end A024305.P15130403306717721937

namespace A024305

/-- `A023855(n+3)-(n+3)` -/
def P15130403306717721937.Spec : Prop :=
  ∀ n, P15130403306717721937.a n = A024305 (n + 1)

end A024305

/-! ## A024305.P16829235835691631112

`Δ[A213850(n+2)]-(n+3)`
-/

namespace A024305.P16829235835691631112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 3 : ℤ)

end

end A024305.P16829235835691631112

namespace A024305

/-- `Δ[A213850(n+2)]-(n+3)` -/
def P16829235835691631112.Spec : Prop :=
  ∀ n, P16829235835691631112.a n = A024305 (n + 1)

end A024305

/-! ## A024305.P4836017372226806270

`∑[A245288(n+4)-1]`
-/

namespace A024305.P4836017372226806270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024305.P4836017372226806270

namespace A024305

/-- `∑[A245288(n+4)-1]` -/
def P4836017372226806270.Spec : Prop :=
  ∀ n, P4836017372226806270.a n = A024305 (n + 1)

end A024305

/-! ## A024305.P11610766045242491315

`A293452(A000124(n+3))-(n+3)`
-/

namespace A024305.P11610766045242491315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293452 (A000124 (n + 3)).toNat - (n + 3 : ℤ)

end

end A024305.P11610766045242491315

namespace A024305

/-- `A293452(A000124(n+3))-(n+3)` -/
def P11610766045242491315.Spec : Prop :=
  ∀ n, P11610766045242491315.a n = A024305 (n + 1)

end A024305

/-!
# A024306: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k=[ (n+1)/2 ], s = (natural numbers >= 2), t = (natural numbers >= 3).

The programs for A024306, the canonical program `A024306.P12588528845389365373` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024306 has offset 1).

The definition of A024306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024306.P12588528845389365373

`(4*(n+1)^3+45*(n+1)²+116*(n+1)+48-3*(n+5)²*(-1)^(n+1))/48`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024306

/-- `(4*(n+1)^3+45*(n+1)²+116*(n+1)+48-3*(n+5)²*(-1)^(n+1))/48` -/
def P12588528845389365373.Spec : Prop :=
  ∀ n, P12588528845389365373.a n = (A024306 (n + 1) : ℚ)

end A024306

/-! ## A024306.P5509811652634944958

`A024869(n+2)-A000096(A008619(n))`
-/

namespace A024306.P5509811652634944958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) - A000096 (A008619 n).toNat

end

end A024306.P5509811652634944958

namespace A024306

/-- `A024869(n+2)-A000096(A008619(n))` -/
def P5509811652634944958.Spec : Prop :=
  ∀ n, P5509811652634944958.a n = A024306 (n + 1)

end A024306

/-! ## A024306.P12319263228253453196

`A024305(n+1)+A008805(n)+A008619(n)`
-/

namespace A024306.P12319263228253453196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024305 (n + 1) + (A008805 n + A008619 n)

end

end A024306.P12319263228253453196

namespace A024306

/-- `A024305(n+1)+A008805(n)+A008619(n)` -/
def P12319263228253453196.Spec : Prop :=
  ∀ n, P12319263228253453196.a n = A024306 (n + 1)

end A024306

/-! ## A024306.P11911353076060601879

`A294139(n+1)+A159469(n+3)-A294473(n+1)`
-/

namespace A024306.P11911353076060601879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294139 (n + 1) + (A159469 (n + 3) - A294473 (n + 1))

end

end A024306.P11911353076060601879

namespace A024306

/-- `A294139(n+1)+A159469(n+3)-A294473(n+1)` -/
def P11911353076060601879.Spec : Prop :=
  ∀ n, P11911353076060601879.a n = A024306 (n + 1)

end A024306

/-! ## A024306.P1129706179368444998

`A024869(n+2)-(A024871(n+2)+A024870(n+2))`
-/

namespace A024306.P1129706179368444998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) - (A024871 (n + 2) + A024870 (n + 2))

end

end A024306.P1129706179368444998

namespace A024306

/-- `A024869(n+2)-(A024871(n+2)+A024870(n+2))` -/
def P1129706179368444998.Spec : Prop :=
  ∀ n, P1129706179368444998.a n = A024306 (n + 1)

end A024306

/-! ## A024306.P3414620702721556276

`A035106(n+2)+A024854(n+2)`
-/

namespace A024306.P3414620702721556276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 2) + A024854 (n + 2)

end

end A024306.P3414620702721556276

namespace A024306

/-- `A035106(n+2)+A024854(n+2)` -/
def P3414620702721556276.Spec : Prop :=
  ∀ n, P3414620702721556276.a n = A024306 (n + 1)

end A024306

/-! ## A024306.P3084758749873537895

`A023856(n+3)-(n+4)`
-/

namespace A024306.P3084758749873537895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 3) - (n + 4 : ℤ)

end

end A024306.P3084758749873537895

namespace A024306

/-- `A023856(n+3)-(n+4)` -/
def P3084758749873537895.Spec : Prop :=
  ∀ n, P3084758749873537895.a n = A024306 (n + 1)

end A024306

/-!
# A024307: a(n) = 2*t(n) + 3*t(n-1) + ... + (k+1)*t(n+1-k), where k=floor((n+1)/2) and t = A023531.

The programs for A024307, there is no canonical definition to state claims against.
-/

/-! ## A024307.P8821007125874892685

`A000096(floor(n/2)+1)-A024308(n+1)`
-/

namespace A024307.P8821007125874892685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (⌊(n : ℚ) / 2⌋ + 1).toNat - A024308 (n + 1)

end

end A024307.P8821007125874892685

/-! ## A024307.P3510843673483767932

`A008619(n)+A008805(n)-A024308(n+1)`
-/

namespace A024307.P3510843673483767932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A008805 n - A024308 (n + 1))

end

end A024307.P3510843673483767932

/-! ## A024307.P14507620874211804003

`A024306(n+1)-(A024308(n+1)+A024305(n+1))`
-/

namespace A024307.P14507620874211804003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024306 (n + 1) - (A024308 (n + 1) + A024305 (n + 1))

end

end A024307.P14507620874211804003

/-! ## A024307.P8191927906854687307

`A008805(n+2)-A024308(n+1)-1`
-/

namespace A024307.P8191927906854687307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 2) - A024308 (n + 1) - 1

end

end A024307.P8191927906854687307

/-! ## A024307.P7886274889277046552

`A008805(n+2)+A001478(A024308(n+1)+1)`
-/

namespace A024307.P7886274889277046552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 2) + A001478 (A024308 (n + 1) + 1).toNat

end

end A024307.P7886274889277046552

/-!
# A024308: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k=[ (n+1)/2 ], s = (natural numbers >= 2), t = A023532.

The programs for A024308, there is no canonical definition to state claims against.
-/

/-! ## A024308.P13066278516347796638

`A000096(floor(n/2)+1)-A024307(n+1)`
-/

namespace A024308.P13066278516347796638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (⌊(n : ℚ) / 2⌋ + 1).toNat - A024307 (n + 1)

end

end A024308.P13066278516347796638

/-! ## A024308.P7460165693977928402

`A024306(n+1)-(A024307(n+1)+A024305(n+1))`
-/

namespace A024308.P7460165693977928402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024306 (n + 1) - (A024307 (n + 1) + A024305 (n + 1))

end

end A024308.P7460165693977928402

/-!
# A024309: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 2), t = (Fibonacci numbers).

The programs for A024309, the canonical program `A024309.P18160775639560700928` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024309 has offset 1).

The definition of A024309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024309.P18160775639560700928

`A129361(n)+A023860(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024309

/-- `A129361(n)+A023860(n+1)` -/
def P18160775639560700928.Spec : Prop :=
  ∀ n, P18160775639560700928.a n = A024309 (n + 1)

theorem P18160775639560700928.correct : P18160775639560700928.Spec := by
  intro n
  simp only [A024309, Nat.add_sub_cancel]

end A024309

/-! ## A024309.P13039682145748335393

`A024313(n+1)-A129361(n)`
-/

namespace A024309.P13039682145748335393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024313 (n + 1) - A129361 n

end

end A024309.P13039682145748335393

namespace A024309

/-- `A024313(n+1)-A129361(n)` -/
def P13039682145748335393.Spec : Prop :=
  ∀ n, P13039682145748335393.a n = A024309 (n + 1)

theorem P13039682145748335393.correct : P13039682145748335393.Spec := by
  intro n
  simp only [A024309, Nat.add_sub_cancel, A024309.P13039682145748335393.a, A024309.P18160775639560700928.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024313, A024313.P16585731645068603023.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024309

/-! ## A024309.P284743846040383275

`round(A024874(n+2)/ϕ²)`
-/

namespace A024309.P284743846040383275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024874 (n + 2) : ℝ) / Real.goldenRatio ^ 2)

end

end A024309.P284743846040383275

namespace A024309

/-- `round(A024874(n+2)/ϕ²)` -/
def P284743846040383275.Spec : Prop :=
  ∀ n, P284743846040383275.a n = A024309 (n + 1)

end A024309

/-! ## A024309.P15483291533018482196

`A024874(n+2)-A024872(n+2)`
-/

namespace A024309.P15483291533018482196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024874 (n + 2) - A024872 (n + 2)

end

end A024309.P15483291533018482196

namespace A024309

/-- `A024874(n+2)-A024872(n+2)` -/
def P15483291533018482196.Spec : Prop :=
  ∀ n, P15483291533018482196.a n = A024309 (n + 1)

theorem P15483291533018482196.correct : P15483291533018482196.Spec := by
  intro n
  simp only [A024309, Nat.add_sub_cancel, A024309.P15483291533018482196.a, A024309.P18160775639560700928.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024872, A024872.P6809425359056890803.a, A024874, A024874.P7651549887830111041.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A020695, A020695.P5292720263086745780.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024309

/-! ## A024309.P13927889896645105981

`A024873(n+2)-A024874(n+2)`
-/

namespace A024309.P13927889896645105981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024873 (n + 2) - A024874 (n + 2)

end

end A024309.P13927889896645105981

namespace A024309

/-- `A024873(n+2)-A024874(n+2)` -/
def P13927889896645105981.Spec : Prop :=
  ∀ n, P13927889896645105981.a n = A024309 (n + 1)

theorem P13927889896645105981.correct : P13927889896645105981.Spec := by
  intro n
  simp only [A024309, Nat.add_sub_cancel, A024309.P13927889896645105981.a, A024309.P18160775639560700928.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024873, A024873.P15411452994750175105.a, A024874, A024874.P7651549887830111041.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A024872, A024872.P6809425359056890803.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, A020695, A020695.P5292720263086745780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024309

/-!
# A024310: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 2), t = (Lucas numbers).

The programs for A024310, the canonical program `A024310.P6708413732183315017` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024310 has offset 1).

The definition of A024310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024310.P6708413732183315017

`2*A024872(n+2)-A024309(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024310

/-- `2*A024872(n+2)-A024309(n+1)` -/
def P6708413732183315017.Spec : Prop :=
  ∀ n, P6708413732183315017.a n = A024310 (n + 1)

theorem P6708413732183315017.correct : P6708413732183315017.Spec := by
  intro n
  simp only [A024310, Nat.add_sub_cancel]

end A024310

/-! ## A024310.P13795908130330756561

`A023864(n+1)+A024315(n+1)-A024309(n+1)`
-/

namespace A024310.P13795908130330756561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (n + 1) + (A024315 (n + 1) - A024309 (n + 1))

end

end A024310.P13795908130330756561

namespace A024310

/-- `A023864(n+1)+A024315(n+1)-A024309(n+1)` -/
def P13795908130330756561.Spec : Prop :=
  ∀ n, P13795908130330756561.a n = A024310 (n + 1)

theorem P13795908130330756561.correct : P13795908130330756561.Spec := by
  intro n
  simp only [A024310, Nat.add_sub_cancel, A024310.P13795908130330756561.a, A024310.P6708413732183315017.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024315, A024315.P2335891269979573061.a, A024872, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024310

/-! ## A024310.P3917891377687874494

`(A024314(n+1)+A023861(n+1))/2`
-/

namespace A024310.P3917891377687874494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024314 (n + 1) + A023861 (n + 1) : ℚ) / 2

end

end A024310.P3917891377687874494

namespace A024310

/-- `(A024314(n+1)+A023861(n+1))/2` -/
def P3917891377687874494.Spec : Prop :=
  ∀ n, P3917891377687874494.a n = (A024310 (n + 1) : ℚ)

theorem P3917891377687874494.correct : P3917891377687874494.Spec := by
  intro n
  simp only [A024310, Nat.add_sub_cancel, A024310.P3917891377687874494.a, A024310.P6708413732183315017.a, A023861, A023861.P14188661982875319503.a, A024309, A024309.P18160775639560700928.a, A024314, A024314.P2143404515256360905.a, A024872, A024872.P6809425359056890803.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024310

/-! ## A024310.P12426674295988829677

`3*A024872(n+2)-A024874(n+2)`
-/

namespace A024310.P12426674295988829677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024872 (n + 2) - A024874 (n + 2)

end

end A024310.P12426674295988829677

namespace A024310

/-- `3*A024872(n+2)-A024874(n+2)` -/
def P12426674295988829677.Spec : Prop :=
  ∀ n, P12426674295988829677.a n = A024310 (n + 1)

theorem P12426674295988829677.correct : P12426674295988829677.Spec := by
  intro n
  simp only [A024310, Nat.add_sub_cancel, A024310.P12426674295988829677.a, A024310.P6708413732183315017.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A024874, A024874.P7651549887830111041.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024310

/-! ## A024310.P6235968045656480032

`(5*A024874(n+2))%A024873(n+2)`
-/

namespace A024310.P6235968045656480032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A024874 (n + 2)) (A024873 (n + 2))

end

end A024310.P6235968045656480032

namespace A024310

/-- `(5*A024874(n+2))%A024873(n+2)` -/
def P6235968045656480032.Spec : Prop :=
  ∀ n, P6235968045656480032.a n = A024310 (n + 1)

end A024310

/-!
# A024311: Catacondensed simply-connected monopentapolyhexes.

The programs for A024311, there is no canonical definition to state claims against.
-/

/-! ## A024311.P1885958210058940269

`A045908(n)-A044045(n)`
-/

namespace A024311.P1885958210058940269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n - A044045 n

end

end A024311.P1885958210058940269

/-! ## A024311.P16997870578521779828

`A045868(n)-A044045(n+1)`
-/

namespace A024311.P16997870578521779828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A044045 (n + 1)

end

end A024311.P16997870578521779828

/-! ## A024311.P512742392791906793

`A045868(n)-A038392(n+2)`
-/

namespace A024311.P512742392791906793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A038392 (n + 2)

end

end A024311.P512742392791906793

/-! ## A024311.P12601673073694278438

`Δ[A030529(n+2)]-A044045(n)`
-/

namespace A024311.P12601673073694278438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A044045 n

end

end A024311.P12601673073694278438

/-! ## A024311.P275830345749407275

`A030520(n+2)%Δ[A044045(n)]`
-/

namespace A024311.P275830345749407275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030520 (n + 2)) (f1 (n + 1) - f1 n)

end

end A024311.P275830345749407275

/-! ## A024311.P1882768886168294124

`A046697(n+1)-A055879(n+1)`
-/

namespace A024311.P1882768886168294124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) - A055879 (n + 1)

end

end A024311.P1882768886168294124

/-! ## A024311.P17061155047242199210

`A030520(n+2)-Δ[A038392(n+1)]`
-/

namespace A024311.P17061155047242199210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2) - (f1 (n + 1) - f1 n)

end

end A024311.P17061155047242199210

/-! ## A024311.P4668101246676977277

`A045868(n)+∑[A045908(n)-A045868(n)]`
-/

namespace A024311.P4668101246676977277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n - A045868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024311.P4668101246676977277

/-! ## A024311.P18384322462556738375

`A038392(n+1)+A044046(n)-A055879(n+1)`
-/

namespace A024311.P18384322462556738375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + (A044046 n - A055879 (n + 1))

end

end A024311.P18384322462556738375

/-! ## A024311.P2033429765201999951

`A002212(n+1)-(A122737(n+1)+A046697(n+1))`
-/

namespace A024311.P2033429765201999951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) - (A122737 (n + 1) + A046697 (n + 1))

end

end A024311.P2033429765201999951

/-!
# A024312: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3).

The programs for A024312, the canonical program `A024312.P16770968988271834341` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024312 has offset 1).

The definition of A024312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024312.P16770968988271834341

`A024869(n+2)+∑[A008619(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024312

/-- `A024869(n+2)+∑[A008619(n)]` -/
def P16770968988271834341.Spec : Prop :=
  ∀ n, P16770968988271834341.a n = A024312 (n + 1)

theorem P16770968988271834341.correct : P16770968988271834341.Spec := by
  intro n
  simp only [A024312, Nat.add_sub_cancel]

end A024312

/-! ## A024312.P10704842458843059023

`A087811(n+1)+A024869(n+2)`
-/

namespace A024312.P10704842458843059023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) + A024869 (n + 2)

end

end A024312.P10704842458843059023

namespace A024312

/-- `A087811(n+1)+A024869(n+2)` -/
def P10704842458843059023.Spec : Prop :=
  ∀ n, P10704842458843059023.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P18431564495847208289

`A024869(n+2)+A002620(n+2)`
-/

namespace A024312.P18431564495847208289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + A002620 (n + 2)

end

end A024312.P18431564495847208289

namespace A024312

/-- `A024869(n+2)+A002620(n+2)` -/
def P18431564495847208289.Spec : Prop :=
  ∀ n, P18431564495847208289.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P3445240348175543215

`∑[Δ[A023855(n+4)]-3]`
-/

namespace A024312.P3445240348175543215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024312.P3445240348175543215

namespace A024312

/-- `∑[Δ[A023855(n+4)]-3]` -/
def P3445240348175543215.Spec : Prop :=
  ∀ n, P3445240348175543215.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P15613278387910989108

`∑[A245288(n+6)-3]`
-/

namespace A024312.P15613278387910989108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 6) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024312.P15613278387910989108

namespace A024312

/-- `∑[A245288(n+6)-3]` -/
def P15613278387910989108.Spec : Prop :=
  ∀ n, P15613278387910989108.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P1445211844148105476

`A024869(n+2)+record[A008797(n)]`
-/

namespace A024312.P1445211844148105476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024312.P1445211844148105476

namespace A024312

/-- `A024869(n+2)+record[A008797(n)]` -/
def P1445211844148105476.Spec : Prop :=
  ∀ n, P1445211844148105476.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P13607567790217850840

`A024869(n+2)+A008642(2*n)`
-/

namespace A024312.P13607567790217850840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + A008642 (2 * n)

end

end A024312.P13607567790217850840

namespace A024312

/-- `A024869(n+2)+A008642(2*n)` -/
def P13607567790217850840.Spec : Prop :=
  ∀ n, P13607567790217850840.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P18292847644725279736

`A024869(n+2)+A008797(2*n)`
-/

namespace A024312.P18292847644725279736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + A008797 (2 * n)

end

end A024312.P18292847644725279736

namespace A024312

/-- `A024869(n+2)+A008797(2*n)` -/
def P18292847644725279736.Spec : Prop :=
  ∀ n, P18292847644725279736.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P7004574891804984758

`A024869(n+2)+A008619(A008619(n)+A000096(n))`
-/

namespace A024312.P7004574891804984758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + A008619 (A008619 n + A000096 n).toNat

end

end A024312.P7004574891804984758

namespace A024312

/-- `A024869(n+2)+A008619(A008619(n)+A000096(n))` -/
def P7004574891804984758.Spec : Prop :=
  ∀ n, P7004574891804984758.a n = A024312 (n + 1)

end A024312

/-! ## A024312.P5500881409475506030

`A024869(n+2)+A008619(A008619(n²))+n`
-/

namespace A024312.P5500881409475506030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024869 (n + 2) + (A008619 (A008619 (n ^ 2)).toNat + (n : ℤ))

end

end A024312.P5500881409475506030

namespace A024312

/-- `A024869(n+2)+A008619(A008619(n²))+n` -/
def P5500881409475506030.Spec : Prop :=
  ∀ n, P5500881409475506030.a n = A024312 (n + 1)

end A024312

/-!
# A024313: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3), t = A023531.

The programs for A024313, the canonical program `A024313.P16585731645068603023` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024313 has offset 1).

The definition of A024313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024313.P16585731645068603023

`A129361(n)+A024309(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024313

/-- `A129361(n)+A024309(n+1)` -/
def P16585731645068603023.Spec : Prop :=
  ∀ n, P16585731645068603023.a n = A024313 (n + 1)

theorem P16585731645068603023.correct : P16585731645068603023.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel]

end A024313

/-! ## A024313.P12741357773727281567

`A023860(n+1)+2*A129361(n)`
-/

namespace A024313.P12741357773727281567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023860 (n + 1) + 2 * A129361 n

end

end A024313.P12741357773727281567

namespace A024313

/-- `A023860(n+1)+2*A129361(n)` -/
def P12741357773727281567.Spec : Prop :=
  ∀ n, P12741357773727281567.a n = A024313 (n + 1)

theorem P12741357773727281567.correct : P12741357773727281567.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel, A024313.P12741357773727281567.a, A024313.P16585731645068603023.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024313

/-! ## A024313.P14531318335419894114

`2*A024309(n+1)-A023860(n+1)`
-/

namespace A024313.P14531318335419894114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024309 (n + 1) - A023860 (n + 1)

end

end A024313.P14531318335419894114

namespace A024313

/-- `2*A024309(n+1)-A023860(n+1)` -/
def P14531318335419894114.Spec : Prop :=
  ∀ n, P14531318335419894114.a n = A024313 (n + 1)

theorem P14531318335419894114.correct : P14531318335419894114.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel, A024313.P14531318335419894114.a, A024313.P16585731645068603023.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024309, A024309.P18160775639560700928.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024313

/-! ## A024313.P8114810618232676180

`A024315(n+1)+A024315(n+1)-A024314(n+1)`
-/

namespace A024313.P8114810618232676180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024315 (n + 1) + (A024315 (n + 1) - A024314 (n + 1))

end

end A024313.P8114810618232676180

namespace A024313

/-- `A024315(n+1)+A024315(n+1)-A024314(n+1)` -/
def P8114810618232676180.Spec : Prop :=
  ∀ n, P8114810618232676180.a n = A024313 (n + 1)

theorem P8114810618232676180.correct : P8114810618232676180.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel, A024313.P8114810618232676180.a, A024313.P16585731645068603023.a, A024309, A024309.P18160775639560700928.a, A024314, A024314.P2143404515256360905.a, A024315, A024315.P2335891269979573061.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023861, A023861.P14188661982875319503.a, A024310, A024310.P6708413732183315017.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A023864, A023864.P1322139053120086111.a, A024872, A024872.P6809425359056890803.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024313

/-! ## A024313.P1627762237865600856

`A024878(n+2)-A024315(n+1)`
-/

namespace A024313.P1627762237865600856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) - A024315 (n + 1)

end

end A024313.P1627762237865600856

namespace A024313

/-- `A024878(n+2)-A024315(n+1)` -/
def P1627762237865600856.Spec : Prop :=
  ∀ n, P1627762237865600856.a n = A024313 (n + 1)

theorem P1627762237865600856.correct : P1627762237865600856.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel, A024313.P1627762237865600856.a, A024313.P16585731645068603023.a, A024309, A024309.P18160775639560700928.a, A024315, A024315.P2335891269979573061.a, A024878, A024878.P13264414261582248090.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024313

/-! ## A024313.P4979886764677057307

`A024877(n+2)-A024878(n+2)`
-/

namespace A024313.P4979886764677057307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024877 (n + 2) - A024878 (n + 2)

end

end A024313.P4979886764677057307

namespace A024313

/-- `A024877(n+2)-A024878(n+2)` -/
def P4979886764677057307.Spec : Prop :=
  ∀ n, P4979886764677057307.a n = A024313 (n + 1)

theorem P4979886764677057307.correct : P4979886764677057307.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel, A024313.P4979886764677057307.a, A024313.P16585731645068603023.a, A024309, A024309.P18160775639560700928.a, A024877, A024877.P16584012869159844224.a, A024878, A024878.P13264414261582248090.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024315, A024315.P2335891269979573061.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A020695, A020695.P5292720263086745780.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024313

/-! ## A024313.P17671165756152002524

`2*A024315(n+1)-A024314(n+1)`
-/

namespace A024313.P17671165756152002524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024315 (n + 1) - A024314 (n + 1)

end

end A024313.P17671165756152002524

namespace A024313

/-- `2*A024315(n+1)-A024314(n+1)` -/
def P17671165756152002524.Spec : Prop :=
  ∀ n, P17671165756152002524.a n = A024313 (n + 1)

theorem P17671165756152002524.correct : P17671165756152002524.Spec := by
  intro n
  simp only [A024313, Nat.add_sub_cancel, A024313.P17671165756152002524.a, A024313.P16585731645068603023.a, A024309, A024309.P18160775639560700928.a, A024314, A024314.P2143404515256360905.a, A024315, A024315.P2335891269979573061.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023861, A023861.P14188661982875319503.a, A024310, A024310.P6708413732183315017.a, A103609, A103609.P15544429394990847361.a, A014286, A014286.P3857901398610574397.a, A023864, A023864.P1322139053120086111.a, A024872, A024872.P6809425359056890803.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024313

/-! ## A024313.P6307449463566783824

`A094585(A099392(n+1))+A024309(n+1)`
-/

namespace A024313.P6307449463566783824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (A099392 (n + 1)).toNat + A024309 (n + 1)

end

end A024313.P6307449463566783824

namespace A024313

/-- `A094585(A099392(n+1))+A024309(n+1)` -/
def P6307449463566783824.Spec : Prop :=
  ∀ n, P6307449463566783824.a n = A024313 (n + 1)

end A024313

/-! ## A024313.P2912460324884419431

`A204922(A080827(n+1))+A024309(n+1)`
-/

namespace A024313.P2912460324884419431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A080827 (n + 1)).toNat + A024309 (n + 1)

end

end A024313.P2912460324884419431

namespace A024313

/-- `A204922(A080827(n+1))+A024309(n+1)` -/
def P2912460324884419431.Spec : Prop :=
  ∀ n, P2912460324884419431.a n = A024313 (n + 1)

end A024313

/-!
# A024314: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = (natural numbers >= 3), t = A023532.

The programs for A024314, the canonical program `A024314.P2143404515256360905` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024314 has offset 1).

The definition of A024314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024314.P6676162823954114393

`A024310(n+1)+A024368(n+1)+A024319(n+1)`
-/

namespace A024314.P6676162823954114393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) + (A024368 (n + 1) + A024319 (n + 1))

end

end A024314.P6676162823954114393

namespace A024314

/-- `A024310(n+1)+A024368(n+1)+A024319(n+1)` -/
def P6676162823954114393.Spec : Prop :=
  ∀ n, P6676162823954114393.a n = A024314 (n + 1)

end A024314

/-! ## A024314.P2143404515256360905

`A024310(n+1)+A024310(n+1)-A023861(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024314

/-- `A024310(n+1)+A024310(n+1)-A023861(n+1)` -/
def P2143404515256360905.Spec : Prop :=
  ∀ n, P2143404515256360905.a n = A024314 (n + 1)

theorem P2143404515256360905.correct : P2143404515256360905.Spec := by
  intro n
  simp only [A024314, Nat.add_sub_cancel]

end A024314

/-! ## A024314.P2680606165466286971

`A024315(n+1)+A024315(n+1)-A024313(n+1)`
-/

namespace A024314.P2680606165466286971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024315 (n + 1) + (A024315 (n + 1) - A024313 (n + 1))

end

end A024314.P2680606165466286971

namespace A024314

/-- `A024315(n+1)+A024315(n+1)-A024313(n+1)` -/
def P2680606165466286971.Spec : Prop :=
  ∀ n, P2680606165466286971.a n = A024314 (n + 1)

theorem P2680606165466286971.correct : P2680606165466286971.Spec := by
  intro n
  simp only [A024314, Nat.add_sub_cancel, A024314.P2680606165466286971.a, A024314.P2143404515256360905.a, A023861, A023861.P14188661982875319503.a, A024310, A024310.P6708413732183315017.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024314

/-! ## A024314.P8433550382099317435

`2*A024310(n+1)-A023861(n+1)`
-/

namespace A024314.P8433550382099317435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024310 (n + 1) - A023861 (n + 1)

end

end A024314.P8433550382099317435

namespace A024314

/-- `2*A024310(n+1)-A023861(n+1)` -/
def P8433550382099317435.Spec : Prop :=
  ∀ n, P8433550382099317435.a n = A024314 (n + 1)

theorem P8433550382099317435.correct : P8433550382099317435.Spec := by
  intro n
  simp only [A024314, Nat.add_sub_cancel, A024314.P8433550382099317435.a, A024314.P2143404515256360905.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A024314

/-! ## A024314.P13996915036377030089

`2*A024315(n+1)-A024313(n+1)`
-/

namespace A024314.P13996915036377030089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024315 (n + 1) - A024313 (n + 1)

end

end A024314.P13996915036377030089

namespace A024314

/-- `2*A024315(n+1)-A024313(n+1)` -/
def P13996915036377030089.Spec : Prop :=
  ∀ n, P13996915036377030089.a n = A024314 (n + 1)

theorem P13996915036377030089.correct : P13996915036377030089.Spec := by
  intro n
  simp only [A024314, Nat.add_sub_cancel, A024314.P13996915036377030089.a, A024314.P2143404515256360905.a, A023861, A023861.P14188661982875319503.a, A024310, A024310.P6708413732183315017.a, A024313, A024313.P16585731645068603023.a, A024315, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024314

/-! ## A024314.P11973739966274384112

`3*A024315(n+1)-A024878(n+2)`
-/

namespace A024314.P11973739966274384112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024315 (n + 1) - A024878 (n + 2)

end

end A024314.P11973739966274384112

namespace A024314

/-- `3*A024315(n+1)-A024878(n+2)` -/
def P11973739966274384112.Spec : Prop :=
  ∀ n, P11973739966274384112.a n = A024314 (n + 1)

theorem P11973739966274384112.correct : P11973739966274384112.Spec := by
  intro n
  simp only [A024314, Nat.add_sub_cancel, A024314.P11973739966274384112.a, A024314.P2143404515256360905.a, A023861, A023861.P14188661982875319503.a, A024310, A024310.P6708413732183315017.a, A024315, A024315.P2335891269979573061.a, A024878, A024878.P13264414261582248090.a, A020695, A020695.P5292720263086745780.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024872, A024872.P6809425359056890803.a, A014286, A014286.P3857901398610574397.a, A110654, A110654.P360289776162656549.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A103609, A103609.P15544429394990847361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024314

/-! ## A024314.P13301973538841769144

`(5*A024878(n+2))%A024877(n+2)`
-/

namespace A024314.P13301973538841769144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A024878 (n + 2)) (A024877 (n + 2))

end

end A024314.P13301973538841769144

namespace A024314

/-- `(5*A024878(n+2))%A024877(n+2)` -/
def P13301973538841769144.Spec : Prop :=
  ∀ n, P13301973538841769144.a n = A024314 (n + 1)

end A024314

/-!
# A024315: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n-k+1), where k = floor(n/2), s = (natural numbers >= 3), t = (Fibonacci numbers).

The programs for A024315, the canonical program `A024315.P2335891269979573061` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024315 has offset 1).

The definition of A024315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024315.P2335891269979573061

`A024309(n+3)-2*A020695(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A024315

/-- `A024309(n+3)-2*A020695(n)` -/
def P2335891269979573061.Spec : Prop :=
  ∀ n, P2335891269979573061.a n = A024315 (n + 1)

theorem P2335891269979573061.correct : P2335891269979573061.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel]

end A024315

/-! ## A024315.P590082338801961856

`A024309(n+3)-Δ[A090991(n+1)]`
-/

namespace A024315.P590082338801961856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 3) - (f1 (n + 1) - f1 n)

end

end A024315.P590082338801961856

namespace A024315

/-- `A024309(n+3)-Δ[A090991(n+1)]` -/
def P590082338801961856.Spec : Prop :=
  ∀ n, P590082338801961856.a n = A024315 (n + 1)

end A024315

/-! ## A024315.P9194720638961449282

`2*A024872(n+2)-A023864(n+1)`
-/

namespace A024315.P9194720638961449282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024872 (n + 2) - A023864 (n + 1)

end

end A024315.P9194720638961449282

namespace A024315

/-- `2*A024872(n+2)-A023864(n+1)` -/
def P9194720638961449282.Spec : Prop :=
  ∀ n, P9194720638961449282.a n = A024315 (n + 1)

theorem P9194720638961449282.correct : P9194720638961449282.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel, A024315.P9194720638961449282.a, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A023864, A023864.P1322139053120086111.a, A024309, A024309.P18160775639560700928.a, A024872, A024872.P6809425359056890803.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024315

/-! ## A024315.P2819988267632198455

`A024309(n+3)-(A212804(n+2)+A020695(n+1))`
-/

namespace A024315.P2819988267632198455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 3) - (A212804 (n + 2) + A020695 (n + 1))

end

end A024315.P2819988267632198455

namespace A024315

/-- `A024309(n+3)-(A212804(n+2)+A020695(n+1))` -/
def P2819988267632198455.Spec : Prop :=
  ∀ n, P2819988267632198455.a n = A024315 (n + 1)

end A024315

/-! ## A024315.P15857223842661257601

`A024878(n+2)-A024313(n+1)`
-/

namespace A024315.P15857223842661257601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) - A024313 (n + 1)

end

end A024315.P15857223842661257601

namespace A024315

/-- `A024878(n+2)-A024313(n+1)` -/
def P15857223842661257601.Spec : Prop :=
  ∀ n, P15857223842661257601.a n = A024315 (n + 1)

theorem P15857223842661257601.correct : P15857223842661257601.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel, A024315.P15857223842661257601.a, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024878, A024878.P13264414261582248090.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024315

/-! ## A024315.P1902287520846036425

`(A024314(n+1)+A024313(n+1))/2`
-/

namespace A024315.P1902287520846036425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024314 (n + 1) + A024313 (n + 1) : ℚ) / 2

end

end A024315.P1902287520846036425

namespace A024315

/-- `(A024314(n+1)+A024313(n+1))/2` -/
def P1902287520846036425.Spec : Prop :=
  ∀ n, P1902287520846036425.a n = (A024315 (n + 1) : ℚ)

theorem P1902287520846036425.correct : P1902287520846036425.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel, A024315.P1902287520846036425.a, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024314, A024314.P2143404515256360905.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A023861, A023861.P14188661982875319503.a, A024310, A024310.P6708413732183315017.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A023864, A023864.P1322139053120086111.a, A024872, A024872.P6809425359056890803.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024315

/-! ## A024315.P17249163183533547880

`A024877(n+2)-2*A024313(n+1)`
-/

namespace A024315.P17249163183533547880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024877 (n + 2) - 2 * A024313 (n + 1)

end

end A024315.P17249163183533547880

namespace A024315

/-- `A024877(n+2)-2*A024313(n+1)` -/
def P17249163183533547880.Spec : Prop :=
  ∀ n, P17249163183533547880.a n = A024315 (n + 1)

theorem P17249163183533547880.correct : P17249163183533547880.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel, A024315.P17249163183533547880.a, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A024313, A024313.P16585731645068603023.a, A024877, A024877.P16584012869159844224.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024315

/-! ## A024315.P14553025540465670717

`A024878(n+2)+A024878(n+2)-A024877(n+2)`
-/

namespace A024315.P14553025540465670717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024878 (n + 2) + (A024878 (n + 2) - A024877 (n + 2))

end

end A024315.P14553025540465670717

namespace A024315

/-- `A024878(n+2)+A024878(n+2)-A024877(n+2)` -/
def P14553025540465670717.Spec : Prop :=
  ∀ n, P14553025540465670717.a n = A024315 (n + 1)

theorem P14553025540465670717.correct : P14553025540465670717.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel, A024315.P14553025540465670717.a, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A024877, A024877.P16584012869159844224.a, A024878, A024878.P13264414261582248090.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024313, A024313.P16585731645068603023.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024315

/-! ## A024315.P4601940286276537423

`2*A024878(n+2)-A024877(n+2)`
-/

namespace A024315.P4601940286276537423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024878 (n + 2) - A024877 (n + 2)

end

end A024315.P4601940286276537423

namespace A024315

/-- `2*A024878(n+2)-A024877(n+2)` -/
def P4601940286276537423.Spec : Prop :=
  ∀ n, P4601940286276537423.a n = A024315 (n + 1)

theorem P4601940286276537423.correct : P4601940286276537423.Spec := by
  intro n
  simp only [A024315, Nat.add_sub_cancel, A024315.P4601940286276537423.a, A024315.P2335891269979573061.a, A020695, A020695.P5292720263086745780.a, A024309, A024309.P18160775639560700928.a, A024877, A024877.P16584012869159844224.a, A024878, A024878.P13264414261582248090.a, A023860, A023860.P8444578760860381817.f1, A023860.P8444578760860381817.a, A024313, A024313.P16585731645068603023.a, A129361, A129361.P14000498497627899100.a, A000045, A000045.P11838749114346432762.a, A014286, A014286.P3857901398610574397.a, A103609, A103609.P15544429394990847361.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A024315

/-!
# A024316: a(n) = s(1)*s(n) + s(2)*s(n-1) + ... + s(k)*s(n+1-k), where k = floor((n+1)/2), s = A023531.

The programs for A024316, the canonical program `A024316.P4230804038874915829` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024316 has offset 1).

The definition of A024316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024316.P4608287683921581608

`ceil(A023555(n+1)/2)`
-/

namespace A024316.P4608287683921581608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023555 (n + 1) : ℚ) / 2⌉

end

end A024316.P4608287683921581608

namespace A024316

/-- `ceil(A023555(n+1)/2)` -/
def P4608287683921581608.Spec : Prop :=
  ∀ n, P4608287683921581608.a n = A024316 (n + 1)

end A024316

/-! ## A024316.P13645455538676606689

`A024317(n+2)+A024879(n+2)-A024317(n+1)`
-/

namespace A024316.P13645455538676606689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (n + 2) + (A024879 (n + 2) - A024317 (n + 1))

end

end A024316.P13645455538676606689

namespace A024316

/-- `A024317(n+2)+A024879(n+2)-A024317(n+1)` -/
def P13645455538676606689.Spec : Prop :=
  ∀ n, P13645455538676606689.a n = A024316 (n + 1)

end A024316

/-! ## A024316.P363970558662590931

`A052344(n+4)-char[A055998(n)]`
-/

namespace A024316.P363970558662590931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (n + 4) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A024316.P363970558662590931

namespace A024316

/-- `A052344(n+4)-char[A055998(n)]` -/
def P363970558662590931.Spec : Prop :=
  ∀ n, P363970558662590931.a n = A024316 (n + 1)

end A024316

/-! ## A024316.P4230804038874915829

`A052344(n+4)-A010054(n+3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A024316

/-- `A052344(n+4)-A010054(n+3)` -/
def P4230804038874915829.Spec : Prop :=
  ∀ n, P4230804038874915829.a n = A024316 (n + 1)

theorem P4230804038874915829.correct : P4230804038874915829.Spec := by
  intro n
  simp only [A024316, Nat.add_sub_cancel]

end A024316

/-! ## A024316.P4870153731987547060

`A052344(n+4)+1-A035214(n+3)`
-/

namespace A024316.P4870153731987547060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (n + 4) + (1 - A035214 (n + 3))

end

end A024316.P4870153731987547060

namespace A024316

/-- `A052344(n+4)+1-A035214(n+3)` -/
def P4870153731987547060.Spec : Prop :=
  ∀ n, P4870153731987547060.a n = A024316 (n + 1)

theorem P4870153731987547060.correct : P4870153731987547060.Spec := by
  intro n
  simp only [A024316, Nat.add_sub_cancel, A024316.P4870153731987547060.a, A024316.P4230804038874915829.a, A010054, A010054.P18347828677204923252.a, A035214, A035214.P16301326444238280714.a, A052344, A052344.P15195332241825076864.a, A005369, A005369.P10796159359873341658.a, A053603, A053603.P8228624408487937013.a, A008441, A008441.P257068461411472066.a, A046698, A046698.P7385547556069971027.a, A198954, A198954.P2690440958221023727.a, A002654, A002654.P11574922253888480122.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A024316

/-! ## A024316.P4879561762948653122

`A110654(A053603(n+4))-A010054(n+3)`
-/

namespace A024316.P4879561762948653122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053603 (n + 4)).toNat - A010054 (n + 3)

end

end A024316.P4879561762948653122

namespace A024316

/-- `A110654(A053603(n+4))-A010054(n+3)` -/
def P4879561762948653122.Spec : Prop :=
  ∀ n, P4879561762948653122.a n = A024316 (n + 1)

end A024316

/-! ## A024316.P11693667079542751547

`A319797(A133263(n+4))-A010054(n+3)`
-/

namespace A024316.P11693667079542751547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A133263 (n + 4)).toNat - A010054 (n + 3)

end

end A024316.P11693667079542751547

namespace A024316

/-- `A319797(A133263(n+4))-A010054(n+3)` -/
def P11693667079542751547.Spec : Prop :=
  ∀ n, P11693667079542751547.a n = A024316 (n + 1)

end A024316

/-!
# A024318: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (Fibonacci numbers).

The programs for A024318, there is no canonical definition to state claims against.
-/

/-! ## A024318.P8971329725661839643

`round(A024322(n+1)/ϕ)`
-/

namespace A024318.P8971329725661839643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024322 (n + 1) : ℝ) / Real.goldenRatio)

end

end A024318.P8971329725661839643

/-! ## A024318.P861969022590523531

`round(A024319(n+1)/sqrt(5))`
-/

namespace A024318.P861969022590523531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024319 (n + 1) : ℝ) / Real.sqrt (5 : ℝ))

end

end A024318.P861969022590523531

/-! ## A024318.P4587238329339119964

`A129361(n)-A024367(n+1)`
-/

namespace A024318.P4587238329339119964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n - A024367 (n + 1)

end

end A024318.P4587238329339119964

/-! ## A024318.P13376455309986102557

`A024885(n+2)-A024322(n+1)`
-/

namespace A024318.P13376455309986102557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024885 (n + 2) - A024322 (n + 1)

end

end A024318.P13376455309986102557

/-! ## A024318.P12365396636701293408

`2*A024322(n+1)-A024319(n+1)`
-/

namespace A024318.P12365396636701293408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024322 (n + 1) - A024319 (n + 1)

end

end A024318.P12365396636701293408

/-! ## A024318.P1081712042380382201

`A024882(n+2)-A024885(n+2)`
-/

namespace A024318.P1081712042380382201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024882 (n + 2) - A024885 (n + 2)

end

end A024318.P1081712042380382201

/-!
# A024319: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (Lucas numbers).

The programs for A024319, there is no canonical definition to state claims against.
-/

/-! ## A024319.P16807254292712606164

`2*A024322(n+1)-A024318(n+1)`
-/

namespace A024319.P16807254292712606164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024322 (n + 1) - A024318 (n + 1)

end

end A024319.P16807254292712606164

/-! ## A024319.P9646568277045234087

`3*A024322(n+1)-A024885(n+2)`
-/

namespace A024319.P9646568277045234087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024322 (n + 1) - A024885 (n + 2)

end

end A024319.P9646568277045234087

/-! ## A024319.P13316214233556756165

`A024310(n+1)-(A024368(n+1)+A023861(n+1))`
-/

namespace A024319.P13316214233556756165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) - (A024368 (n + 1) + A023861 (n + 1))

end

end A024319.P13316214233556756165

/-! ## A024319.P14901790640733277764

`A024314(n+1)-(A024368(n+1)+A024310(n+1))`
-/

namespace A024319.P14901790640733277764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024314 (n + 1) - (A024368 (n + 1) + A024310 (n + 1))

end

end A024319.P14901790640733277764

/-! ## A024319.P9953697462414034847

`A024322(n+1)+A005206(A024318(n+1))`
-/

namespace A024319.P9953697462414034847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024322 (n + 1) + A005206 (A024318 (n + 1)).toNat

end

end A024319.P9953697462414034847

/-!
# A024322: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (F(2), F(3), ...).

The programs for A024322, there is no canonical definition to state claims against.
-/

/-! ## A024322.P3200699297540897139

`round(ϕ*A024318(n+1))`
-/

namespace A024322.P3200699297540897139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A024318 (n + 1) : ℝ))

end

end A024322.P3200699297540897139

/-! ## A024322.P7905988249798627808

`round(A024885(n+2)/ϕ)`
-/

namespace A024322.P7905988249798627808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024885 (n + 2) : ℝ) / Real.goldenRatio)

end

end A024322.P7905988249798627808

/-! ## A024322.P2876432883707399159

`A024885(n+2)-A024318(n+1)`
-/

namespace A024322.P2876432883707399159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024885 (n + 2) - A024318 (n + 1)

end

end A024322.P2876432883707399159

/-! ## A024322.P2924056486193631687

`(A024319(n+1)+A024318(n+1))/2`
-/

namespace A024322.P2924056486193631687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024319 (n + 1) + A024318 (n + 1) : ℚ) / 2

end

end A024322.P2924056486193631687

/-! ## A024322.P718577273271834989

`A024367(n+1)+A024885(n+2)-A129361(n)`
-/

namespace A024322.P718577273271834989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024367 (n + 1) + (A024885 (n + 2) - A129361 n)

end

end A024322.P718577273271834989

/-! ## A024322.P13148033832264808239

`A024882(n+2)-2*A024318(n+1)`
-/

namespace A024322.P13148033832264808239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024882 (n + 2) - 2 * A024318 (n + 1)

end

end A024322.P13148033832264808239

/-! ## A024322.P1732563267652126894

`(A024885(n+2)+A024319(n+1))/3`
-/

namespace A024322.P1732563267652126894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024885 (n + 2) + A024319 (n + 1) : ℚ) / 3

end

end A024322.P1732563267652126894

/-! ## A024322.P17299345797934977572

`2*A024885(n+2)-A024882(n+2)`
-/

namespace A024322.P17299345797934977572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024885 (n + 2) - A024882 (n + 2)

end

end A024322.P17299345797934977572

/-!
# A024323: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = (odd natural numbers).

The programs for A024323, there is no canonical definition to state claims against.
-/

/-! ## A024323.P17328806117726028129

`A014255(n)-A024372(n+1)`
-/

namespace A024323.P17328806117726028129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n - A024372 (n + 1)

end

end A024323.P17328806117726028129

/-! ## A024323.P6498816668300371327

`A014255(n)%A024372(A000027(n+1))`
-/

namespace A024323.P6498816668300371327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014255 n) (A024372 (A000027 (n + 1)).toNat)

end

end A024323.P6498816668300371327

/-! ## A024323.P1480655333079814122

`(A014255(n)+A000007(n))%A024372(n+1)`
-/

namespace A024323.P1480655333079814122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014255 n + A000007 n) (A024372 (n + 1))

end

end A024323.P1480655333079814122

/-! ## A024323.P1769895651494217342

`∑[n*gcd(2, n)+1]%A024372(3*n+5)-A024372(n+1)`
-/

namespace A024323.P1769895651494217342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A024372 (3 * n + 5)) - A024372 (n + 1)

end

end A024323.P1769895651494217342

/-! ## A024323.P17592369133960983733

`(A014963(4*n+2)*A014255(n))%A024372(n+1)`
-/

namespace A024323.P17592369133960983733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (4 * n + 2) * A014255 n) (A024372 (n + 1))

end

end A024323.P17592369133960983733

/-!
# A024324: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A000201 (lower Wythoff sequence).

The programs for A024324, there is no canonical definition to state claims against.
-/

/-! ## A024324.P9587810011257234857

`A001511(A319249(n+1))*A060143(A024325(n+1))`
-/

namespace A024324.P9587810011257234857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A319249 (n + 1)).toNat * A060143 (A024325 (n + 1)).toNat

end

end A024324.P9587810011257234857

/-! ## A024324.P627119336796628117

`A060143(A024325(n+1))+A000038(n+1)*A075202(n+1)`
-/

namespace A024324.P627119336796628117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A024325 (n + 1)).toNat + A000038 (n + 1) * A075202 (n + 1)

end

end A024324.P627119336796628117

/-! ## A024324.P11810765888824689570

`A060143(A024325(n+1))+A000038(A051435(n))`
-/

namespace A024324.P11810765888824689570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A024325 (n + 1)).toNat + A000038 (A051435 n).toNat

end

end A024324.P11810765888824689570

/-! ## A024324.P8921133544377124284

`A057365(A024325(n+1)-A185284(2*n+3))`
-/

namespace A024324.P8921133544377124284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A024325 (n + 1) - A185284 (2 * n + 3)).toNat

end

end A024324.P8921133544377124284

/-! ## A024324.P17598390445568526418

`A060143(C(A024325(n+1), A107711(n)))`
-/

namespace A024324.P17598390445568526418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (Nat.choose (A024325 (n + 1)).toNat (A107711 n).toNat)

end

end A024324.P17598390445568526418

/-!
# A024325: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A001950 (upper Wythoff sequence).

The programs for A024325, there is no canonical definition to state claims against.
-/

/-! ## A024325.P6778393099112312503

`A004956(A024324(n+1)%A024351(n+1))`
-/

namespace A024325.P6778393099112312503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (Int.tmod (A024324 (n + 1)) (A024351 (n + 1))).toNat

end

end A024325.P6778393099112312503

/-!
# A024326: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023531, t = A023533.

The programs for A024326, there is no canonical definition to state claims against.
-/

/-! ## A024326.P11045900122167369811

`A024316(n+1)+A024317(n+1)-A024327(n+1)`
-/

namespace A024326.P11045900122167369811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) + (A024317 (n + 1) - A024327 (n + 1))

end

end A024326.P11045900122167369811

/-! ## A024326.P13517457658164949009

`A024889(A254667(n+1))^A209655(n+1)`
-/

namespace A024326.P13517457658164949009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024889 (A254667 (n + 1)).toNat : ℚ) ^ (A209655 (n + 1) : ℤ)

end

end A024326.P13517457658164949009

/-! ## A024326.P15220201867993294826

`A337462(A047427(2*n+1))%A209655(n+1)`
-/

namespace A024326.P15220201867993294826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337462 (A047427 (2 * n + 1)).toNat) (A209655 (n + 1))

end

end A024326.P15220201867993294826

/-! ## A024326.P4784617243765784174

`A024889(n-A278505((3*n+1)²+1)%2+2)`
-/

namespace A024326.P4784617243765784174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024889 ((n : ℤ) - Int.tmod (A278505 ((3 * n + 1) ^ 2 + 1)) 2 + 2).toNat

end

end A024326.P4784617243765784174

/-! ## A024326.P13092372942278875736

`and(A272170(n+3), A333332(n+1))`
-/

namespace A024326.P13092372942278875736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A272170 (n + 3)) (A333332 (n + 1))

end

end A024326.P13092372942278875736

/-!
# A024327: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor( (n+1)/2 ), s = A023531, t = A014306.

The programs for A024327, there is no canonical definition to state claims against.
-/

/-! ## A024327.P10833999573027413372

`A024316(n+1)+A024317(n+1)-A024326(n+1)`
-/

namespace A024327.P10833999573027413372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024316 (n + 1) + (A024317 (n + 1) - A024326 (n + 1))

end

end A024327.P10833999573027413372

/-! ## A024327.P4140761746469324037

`A024693(n+1)+A024695(n+1)-A024376(n+1)`
-/

namespace A024327.P4140761746469324037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (n + 1) + (A024695 (n + 1) - A024376 (n + 1))

end

end A024327.P4140761746469324037

/-! ## A024327.P7488367462089487894

`A007895(A024318(n+1))-A024326(n+1)`
-/

namespace A024327.P7488367462089487894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A024318 (n + 1)).toNat - A024326 (n + 1)

end

end A024327.P7488367462089487894

/-! ## A024327.P6549926280679890521

`A007895(A024322(n+1))-A024326(n+1)`
-/

namespace A024327.P6549926280679890521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A024322 (n + 1)).toNat - A024326 (n + 1)

end

end A024327.P6549926280679890521

/-!
# A024328: a(n) = Sum_{j=1..floor((n+1)/2)} A023531(j)*prime(n-j+1).

The programs for A024328, there is no canonical definition to state claims against.
-/

/-! ## A024328.P6248521228703689989

`record[A097505(n+1)]-A024377(n+1)`
-/

namespace A024328.P6248521228703689989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024377 (n + 1)

end

end A024328.P6248521228703689989

/-! ## A024328.P14398423928080150268

`record[A097505(A000027(n+1))]%A024377(n+1)`
-/

namespace A024328.P14398423928080150268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A024377 (n + 1))

end

end A024328.P14398423928080150268

/-! ## A024328.P7348749748403466490

`record[A097505(A065855(n+1)+1)]%A024377(n+1)`
-/

namespace A024328.P7348749748403466490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (A065855 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A024377 (n + 1))

end

end A024328.P7348749748403466490

/-! ## A024328.P15304426923408776212

`record[A097505(A161908(n+1))]%A024377(n+1)`
-/

namespace A024328.P15304426923408776212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (A161908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A024377 (n + 1))

end

end A024328.P15304426923408776212

/-! ## A024328.P9874243101637792538

`record[A097505(A112798(n+2))]%A024377(n+1)`
-/

namespace A024328.P9874243101637792538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (A112798 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A024377 (n + 1))

end

end A024328.P9874243101637792538

/-!
# A024329: Expansion of log(1+log(1+x)^2)/2.

The programs for A024329, there is no canonical definition to state claims against.
-/

/-! ## A024329.P16773858905852172529

`A009325(n)/2`
-/

namespace A024329.P16773858905852172529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009325 n : ℚ) / 2

end

end A024329.P16773858905852172529

/-!
# A024330: Expansion of tanh(log(1+x))*log(1+x)/2.

The programs for A024330, there is no canonical definition to state claims against.
-/

/-! ## A024330.P9390945361805400267

`A009779(n)/2`
-/

namespace A024330.P9390945361805400267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009779 n : ℚ) / 2

end

end A024330.P9390945361805400267

/-!
# A024331: Expansion of log(1+x)*log(1+tanh(x))/2.

The programs for A024331, there is no canonical definition to state claims against.
-/

/-! ## A024331.P18354162293566028913

`A009423(n)/2`
-/

namespace A024331.P18354162293566028913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009423 n : ℚ) / 2

end

end A024331.P18354162293566028913

/-!
# A024332: E.g.f.: sin(log(1+x))*log(1+x)/2.

The programs for A024332, there is no canonical definition to state claims against.
-/

/-! ## A024332.P9078484431754049755

`A009458(n)/2`
-/

namespace A024332.P9078484431754049755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009458 n : ℚ) / 2

end

end A024332.P9078484431754049755

/-! ## A024332.P10862115951105641241

`A198243(A209100(n+1))-A091699(n)`
-/

namespace A024332.P10862115951105641241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198243 (A209100 (n + 1)).toNat - A091699 n

end

end A024332.P10862115951105641241

/-!
# A024333: Expansion of e.g.f: tanh(log(1+x)^2)/2.

The programs for A024333, there is no canonical definition to state claims against.
-/

/-! ## A024333.P12080010569134494282

`A009789(n)/2`
-/

namespace A024333.P12080010569134494282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009789 n : ℚ) / 2

end

end A024333.P12080010569134494282

/-! ## A024333.P11213292916382516650

`A012269(A087019(n))/2`
-/

namespace A024333.P11213292916382516650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012269 (A087019 n).toNat : ℚ) / 2

end

end A024333.P11213292916382516650

/-! ## A024333.P4340614496512851104

`A012269(A087051(n))/2`
-/

namespace A024333.P4340614496512851104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012269 (A087051 n).toNat : ℚ) / 2

end

end A024333.P4340614496512851104

/-! ## A024333.P2010715665599702

`A012269(n)/A020639(A109153(n))`
-/

namespace A024333.P2010715665599702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012269 n : ℚ) / (A020639 (A109153 n).toNat : ℚ)

end

end A024333.P2010715665599702

/-!
# A024334: Expansion of e.g.f.: sin(log(1+x)^2)/2.

The programs for A024334, there is no canonical definition to state claims against.
-/

/-! ## A024334.P17323544911535108443

`A009468(n)/2`
-/

namespace A024334.P17323544911535108443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009468 n : ℚ) / 2

end

end A024334.P17323544911535108443

/-! ## A024334.P9155948205645365083

`A012271(A082216(n))/2`
-/

namespace A024334.P9155948205645365083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012271 (A082216 n).toNat : ℚ) / 2

end

end A024334.P9155948205645365083

/-! ## A024334.P8451578521550613287

`A012271(A087051(n))/2`
-/

namespace A024334.P8451578521550613287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012271 (A087051 n).toNat : ℚ) / 2

end

end A024334.P8451578521550613287

/-! ## A024334.P9213385814368022562

`A012271(A004915(n+1))/2`
-/

namespace A024334.P9213385814368022562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012271 (A004915 (n + 1)).toNat : ℚ) / 2

end

end A024334.P9213385814368022562

/-! ## A024334.P1543101585392076245

`A012271(n)/A020639(4*3^n)`
-/

namespace A024334.P1543101585392076245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012271 n : ℚ) / (A020639 (4 * 3 ^ n) : ℚ)

end

end A024334.P1543101585392076245

/-!
# A024335: Expansion of sinh(log(1+x)^2)/2.

The programs for A024335, there is no canonical definition to state claims against.
-/

/-! ## A024335.P12457296240596239417

`A009585(n)/2`
-/

namespace A024335.P12457296240596239417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009585 n : ℚ) / 2

end

end A024335.P12457296240596239417

/-! ## A024335.P5292438957526770338

`A012267(A056143(n))/2`
-/

namespace A024335.P5292438957526770338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012267 (A056143 n).toNat : ℚ) / 2

end

end A024335.P5292438957526770338

/-! ## A024335.P8823192056523160692

`A012267(A087051(n))/2`
-/

namespace A024335.P8823192056523160692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012267 (A087051 n).toNat : ℚ) / 2

end

end A024335.P8823192056523160692

/-! ## A024335.P6086758672553792351

`A012267(n)/A020639(A047849(n))`
-/

namespace A024335.P6086758672553792351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012267 n : ℚ) / (A020639 (A047849 n).toNat : ℚ)

end

end A024335.P6086758672553792351

/-! ## A024335.P13294451858113051206

`(A012267(n)+A012245(A271269(3*(n+1))))/2`
-/

namespace A024335.P13294451858113051206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012267 n + A012245 (A271269 (3 * (n + 1))).toNat : ℚ) / 2

end

end A024335.P13294451858113051206

/-!
# A024336: Expansion of e.g.f.: tan(log(1+x)^2)/2.

The programs for A024336, there is no canonical definition to state claims against.
-/

/-! ## A024336.P12851640255658155376

`A009655(n)/2`
-/

namespace A024336.P12851640255658155376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009655 n : ℚ) / 2

end

end A024336.P12851640255658155376

/-!
# A024337: Expansion of sinh(log(1+x))*log(1+x)/2.

The programs for A024337, there is no canonical definition to state claims against.
-/

/-! ## A024337.P6478357752990852476

`A009575(n)/2`
-/

namespace A024337.P6478357752990852476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009575 n : ℚ) / 2

end

end A024337.P6478357752990852476

/-! ## A024337.P3153279266686695763

`(A009411(n)-A081048(n))/2`
-/

namespace A024337.P3153279266686695763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009411 n - A081048 n : ℚ) / 2

end

end A024337.P3153279266686695763

/-!
# A024338: Expansion of log(1+x)*log(1+tan(x))/2.

The programs for A024338, there is no canonical definition to state claims against.
-/

/-! ## A024338.P10886977770267587945

`A009422(n)/2`
-/

namespace A024338.P10886977770267587945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009422 n : ℚ) / 2

end

end A024338.P10886977770267587945

/-!
# A024339: Expansion of tan(log(1+x))*log(1+x)/2.

The programs for A024339, there is no canonical definition to state claims against.
-/

/-! ## A024339.P7691904017182835033

`A009645(n)/2`
-/

namespace A024339.P7691904017182835033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009645 n : ℚ) / 2

end

end A024339.P7691904017182835033

/-!
# A024342: Expansion of e.g.f. tanh(x)*tan(x), coefficients of powers x^(4*n+2).

The programs for A024342, there is no canonical definition to state claims against.
-/

/-! ## A024342.P2312319770787629896

`2*A009837(n)`
-/

namespace A024342.P2312319770787629896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009837 n

end

end A024342.P2312319770787629896

/-! ## A024342.P15643527240270954715

`A009837(n)-A009837(n)/A134824(n+2)`
-/

namespace A024342.P15643527240270954715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009837 n : ℚ) - (A009837 n : ℚ) / (A134824 (n + 2) : ℚ)

end

end A024342.P15643527240270954715

/-!
# A024343: Expansion of e.g.f. sin(x^2) in powers of x^(4*n + 2).

The programs for A024343, the canonical program `A024343.P17272563614750685771` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024343 has offset 0).

The definition of A024343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024343.P17272563614750685771

`(-1)^n*(2*n+1)!*C(4*n+2, 2*n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024343

/-- `(-1)^n*(2*n+1)!*C(4*n+2, 2*n+1)` -/
def P17272563614750685771.Spec : Prop :=
  ∀ n, P17272563614750685771.a n = A024343 n

theorem P17272563614750685771.correct : P17272563614750685771.Spec := by
  intro n
  simp only [A024343]

end A024343

/-! ## A024343.P9974823911181091762

`(4-(8*n)²)*a(n-1)` with `a(0)=2`
-/

namespace A024343.P9974823911181091762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 - ((8 * n) ^ 2 : ℤ)) * a (n - 1)

end

end A024343.P9974823911181091762

namespace A024343

/-- `(4-(8*n)²)*a(n-1)` -/
def P9974823911181091762.Spec : Prop :=
  ∀ n, P9974823911181091762.a n = A024343 n

end A024343

/-! ## A024343.P2729467052052426489

`2*A009564(n)`
-/

namespace A024343.P2729467052052426489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009564 n

end

end A024343.P2729467052052426489

namespace A024343

/-- `2*A009564(n)` -/
def P2729467052052426489.Spec : Prop :=
  ∀ n, P2729467052052426489.a n = A024343 n

end A024343

/-! ## A024343.P9352282685581824431

`A092973(8*n+2)`
-/

namespace A024343.P9352282685581824431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092973 (8 * n + 2)

end

end A024343.P9352282685581824431

namespace A024343

/-- `A092973(8*n+2)` -/
def P9352282685581824431.Spec : Prop :=
  ∀ n, P9352282685581824431.a n = A024343 n

end A024343

/-! ## A024343.P2684063093479763935

`(-1)^n*A001813(2*n+1)`
-/

namespace A024343.P2684063093479763935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001813 (2 * n + 1)

end

end A024343.P2684063093479763935

namespace A024343

/-- `(-1)^n*A001813(2*n+1)` -/
def P2684063093479763935.Spec : Prop :=
  ∀ n, P2684063093479763935.a n = A024343 n

end A024343

/-!
# A024346: Expansion of 1/((1-x)*(1-6*x)*(1-9*x)*(1-11*x)).

The programs for A024346, the canonical program `A024346.P12233827678687389849` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024346 has offset 0).

The definition of A024346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024346.P12233827678687389849

`(4*11^(n+3)-75*9^(n+2)+32*6^(n+2)-1)/400`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024346

/-- `(4*11^(n+3)-75*9^(n+2)+32*6^(n+2)-1)/400` -/
def P12233827678687389849.Spec : Prop :=
  ∀ n, P12233827678687389849.a n = (A024346 n : ℚ)

end A024346

/-! ## A024346.P12775937884602067824

`∑[A020606(n)]`
-/

namespace A024346.P12775937884602067824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024346.P12775937884602067824

namespace A024346

/-- `∑[A020606(n)]` -/
def P12775937884602067824.Spec : Prop :=
  ∀ n, P12775937884602067824.a n = A024346 n

end A024346

/-! ## A024346.P1314657981848874960

`2*A021694(n)-A021524(n)`
-/

namespace A024346.P1314657981848874960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021694 n - A021524 n

end

end A024346.P1314657981848874960

namespace A024346

/-- `2*A021694(n)-A021524(n)` -/
def P1314657981848874960.Spec : Prop :=
  ∀ n, P1314657981848874960.a n = A024346 n

end A024346

/-! ## A024346.P13850701148433496896

`2*A023952(n)-A023950(n)`
-/

namespace A024346.P13850701148433496896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023952 n - A023950 n

end

end A024346.P13850701148433496896

namespace A024346

/-- `2*A023952(n)-A023950(n)` -/
def P13850701148433496896.Spec : Prop :=
  ∀ n, P13850701148433496896.a n = A024346 n

end A024346

/-! ## A024346.P13771662783135184966

`A021684(n)+A021714(n)-A021524(n)`
-/

namespace A024346.P13771662783135184966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021684 n + (A021714 n - A021524 n)

end

end A024346.P13771662783135184966

namespace A024346

/-- `A021684(n)+A021714(n)-A021524(n)` -/
def P13771662783135184966.Spec : Prop :=
  ∀ n, P13771662783135184966.a n = A024346 n

end A024346

/-! ## A024346.P17533153839456136314

`A021834(n)+A021964(n)-A021824(n)`
-/

namespace A024346.P17533153839456136314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021834 n + (A021964 n - A021824 n)

end

end A024346.P17533153839456136314

namespace A024346

/-- `A021834(n)+A021964(n)-A021824(n)` -/
def P17533153839456136314.Spec : Prop :=
  ∀ n, P17533153839456136314.a n = A024346 n

end A024346

/-!
# A024347: Expansion of 1/((1-x)*(1-6*x)*(1-9*x)*(1-12*x)).

The programs for A024347, there is no canonical definition to state claims against.
-/

/-! ## A024347.P843696475090041489

`∑[A020724(n)]`
-/

namespace A024347.P843696475090041489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024347.P843696475090041489

/-! ## A024347.P9383704411231282270

`∑[3^n*A016269(n)]`
-/

namespace A024347.P9383704411231282270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024347.P9383704411231282270

/-! ## A024347.P1387348312645086543

`∑[3^n*∑[A027650(n)]]`
-/

namespace A024347.P1387348312645086543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024347.P1387348312645086543

/-! ## A024347.P20181268351864310

`A020724(C(2, n²)*C(n, 2)+n)+a(n-1)` with `a(0)=1`
-/

namespace A024347.P20181268351864310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020724 (Nat.choose 2 (n ^ 2) * Nat.choose n 2 + n) + a (n - 1)

end

end A024347.P20181268351864310

/-! ## A024347.P7091465058104551049

`2*A016263(n)-A016244(n)`
-/

namespace A024347.P7091465058104551049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016263 n - A016244 n

end

end A024347.P7091465058104551049

/-! ## A024347.P7071237035323056496

`∑[∑[A027650(n)]*A000244(n)]`
-/

namespace A024347.P7071237035323056496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024347.P7071237035323056496

/-! ## A024347.P15040617842315090575

`∑[A016269(n)*A166552(2*n+1)]`
-/

namespace A024347.P15040617842315090575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n * A166552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024347.P15040617842315090575

/-! ## A024347.P1270491688857420816

`∑[A038721(n+1)/2*A000244(n)]`
-/

namespace A024347.P1270491688857420816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2 * (A000244 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024347.P1270491688857420816

/-!
# A024348: Expansion of tan(x^2).

The programs for A024348, there is no canonical definition to state claims against.
-/

/-! ## A024348.P808690921596672013

`2*A009767(n)`
-/

namespace A024348.P808690921596672013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A009767 n

end

end A024348.P808690921596672013

/-! ## A024348.P4528064111062264350

`A000182(n+1)*A001813(2*n+1)`
-/

namespace A024348.P4528064111062264350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000182 (n + 1) * A001813 (2 * n + 1)

end

end A024348.P4528064111062264350

/-! ## A024348.P18162202118695731340

`A000111(2*n+1)*A001813(2*n+1)`
-/

namespace A024348.P18162202118695731340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (2 * n + 1) * A001813 (2 * n + 1)

end

end A024348.P18162202118695731340

/-!
# A024351: Primes forming a 3 X 3 magic square with prime entries and minimal constant 177 = A164843(3).

The programs for A024351, there is no canonical definition to state claims against.
-/

/-! ## A024351.P6296424765559317965

`a(n-3)+42` with `a(0)=5, a(1)=17, a(2)=29`
-/

namespace A024351.P6296424765559317965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 17, 29] fun n a =>
  a (n - 3) + 42

end

end A024351.P6296424765559317965

/-! ## A024351.P6179728517704078643

`∑[floor(a(n-3))]` with `a(0)=5, a(1)=12, a(2)=12, a(3)=18`

`floor` is left out, it is the identity on integers.
-/

namespace A024351.P6179728517704078643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 12, 12, 18] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024351.P6179728517704078643

/-! ## A024351.P7200351721457430910

`p?[6*n-∑[n]²%7]`
-/

namespace A024351.P7200351721457430910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 7 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024351.P7200351721457430910

/-! ## A024351.P10492588826656445776

`p?[∑[(n%2+4*n)%7]]`
-/

namespace A024351.P10492588826656445776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 4 * n) % 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A024351.P10492588826656445776

/-! ## A024351.P1700956400209853651

`p?[6*n-Δ[ceil(10*n/7)]]`
-/

namespace A024351.P1700956400209853651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 * ((n : ℚ) / 7)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A024351.P1700956400209853651

/-!
# A024352: Numbers which are the difference of two positive squares, c^2 - b^2 with 1 <= b < c.

The programs for A024352, the canonical program `A024352.P11056505033976629028` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024352 has offset 1).

The definition of A024352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024352.P11056505033976629028

`a(n-3)+4` with `a(0)=3, a(1)=5, a(2)=7, a(3)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024352

/-- `a(n-3)+4` -/
def P11056505033976629028.Spec : Prop :=
  ∀ n, (P11056505033976629028.a n : ℤ) = A024352 (n + 1)

theorem P11056505033976629028.correct : P11056505033976629028.Spec := by
  intro n
  simp only [A024352, Nat.add_sub_cancel]

end A024352

/-! ## A024352.P7253087579023948851

`comp[abs(1-4*n)]+3`
-/

namespace A024352.P7253087579023948851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3

end

end A024352.P7253087579023948851

namespace A024352

/-- `comp[abs(1-4*n)]+3` -/
def P7253087579023948851.Spec : Prop :=
  ∀ n, (P7253087579023948851.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P5593421210678629855

`lt[(-n)^and(3, n), n-3]`
-/

namespace A024352.P5593421210678629855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ Nat.land 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024352.P5593421210678629855

namespace A024352

/-- `lt[(-n)^and(3, n), n-3]` -/
def P5593421210678629855.Spec : Prop :=
  ∀ n, (P5593421210678629855.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P10949000682108219570

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A024352.P10949000682108219570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P10949000682108219570

namespace A024352

/-- `∑[abs(a(n-3))]` -/
def P10949000682108219570.Spec : Prop :=
  ∀ n, (P10949000682108219570.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P11374221724917045605

`∑[a(n-3)!]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A024352.P11374221724917045605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P11374221724917045605

namespace A024352

/-- `∑[a(n-3)!]` -/
def P11374221724917045605.Spec : Prop :=
  ∀ n, (P11374221724917045605.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P10620000643999537054

`∑[dr(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A024352.P10620000643999537054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P10620000643999537054

namespace A024352

/-- `∑[dr(a(n-3))]` -/
def P10620000643999537054.Spec : Prop :=
  ∀ n, (P10620000643999537054.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P6876093622889149716

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A024352.P6876093622889149716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P6876093622889149716

namespace A024352

/-- `∑[floor(a(n-3))]` -/
def P6876093622889149716.Spec : Prop :=
  ∀ n, (P6876093622889149716.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P5049657068507036395

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A024352.P5049657068507036395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P5049657068507036395

namespace A024352

/-- `∑[ceil(a(n-3))]` -/
def P5049657068507036395.Spec : Prop :=
  ∀ n, (P5049657068507036395.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P12122445764743475789

`∑[round(a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A024352.P12122445764743475789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P12122445764743475789

namespace A024352

/-- `∑[round(a(n-3))]` -/
def P12122445764743475789.Spec : Prop :=
  ∀ n, (P12122445764743475789.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P1379502794799965844

`∑[5%a((n+1)%3)]` with `a(0)=3, a(1)=2`
-/

namespace A024352.P1379502794799965844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  5 % f1 ((n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P1379502794799965844

namespace A024352

/-- `∑[5%a((n+1)%3)]` -/
def P1379502794799965844.Spec : Prop :=
  ∀ n, (P1379502794799965844.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P15428772690451683035

`∪[2*n+3, 4*(n+2)]`
-/

namespace A024352.P15428772690451683035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A024352.P15428772690451683035

namespace A024352

/-- `∪[2*n+3, 4*(n+2)]` -/
def P15428772690451683035.Spec : Prop :=
  ∀ n, (P15428772690451683035.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P17083204606996225555

`lt[1, or(7, 2*n)%(n+1)]`
-/

namespace A024352.P17083204606996225555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 (2 * n) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A024352.P17083204606996225555

namespace A024352

/-- `lt[1, or(7, 2*n)%(n+1)]` -/
def P17083204606996225555.Spec : Prop :=
  ∀ n, (P17083204606996225555.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P6570953185573797640

`lt[xor(3, n)%(n+1), n-2]`
-/

namespace A024352.P6570953185573797640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n % (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024352.P6570953185573797640

namespace A024352

/-- `lt[xor(3, n)%(n+1), n-2]` -/
def P6570953185573797640.Spec : Prop :=
  ∀ n, (P6570953185573797640.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P12667404305225099497

`∑[gcd(2, a(n-3))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A024352.P12667404305225099497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  Nat.gcd 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P12667404305225099497

namespace A024352

/-- `∑[gcd(2, a(n-3))]` -/
def P12667404305225099497.Spec : Prop :=
  ∀ n, (P12667404305225099497.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P13130989587284241907

`∑[a(n-3)%3]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A024352.P13130989587284241907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P13130989587284241907

namespace A024352

/-- `∑[a(n-3)%3]` -/
def P13130989587284241907.Spec : Prop :=
  ∀ n, (P13130989587284241907.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P11296644522796112678

`∑[2/a(gcd(3, n+1))]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A024352.P11296644522796112678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2, 2] fun n f1 =>
  2 / f1 (Nat.gcd 3 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P11296644522796112678

namespace A024352

/-- `∑[2/a(gcd(3, n+1))]` -/
def P11296644522796112678.Spec : Prop :=
  ∀ n, P11296644522796112678.a n = (A024352 (n + 1) : ℚ)

end A024352

/-! ## A024352.P4115710478758027833

`∑[3-a(n-a(n-2))]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A024352.P4115710478758027833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2] fun n f1 =>
  3 - f1 ((n : ℤ) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024352.P4115710478758027833

namespace A024352

/-- `∑[3-a(n-a(n-2))]` -/
def P4115710478758027833.Spec : Prop :=
  ∀ n, P4115710478758027833.a n = A024352 (n + 1)

end A024352

/-! ## A024352.P5341592795447446081

`lt[(2*n+1)^val(n+2, 2), (1-n)²]`
-/

namespace A024352.P5341592795447446081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024352.P5341592795447446081

namespace A024352

/-- `lt[(2*n+1)^val(n+2, 2), (1-n)²]` -/
def P5341592795447446081.Spec : Prop :=
  ∀ n, (P5341592795447446081.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P12582348307383399428

`lt[1, A349444(n+2)²]`
-/

namespace A024352.P12582348307383399428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024352.P12582348307383399428

namespace A024352

/-- `lt[1, A349444(n+2)²]` -/
def P12582348307383399428.Spec : Prop :=
  ∀ n, (P12582348307383399428.a n : ℤ) = A024352 (n + 1)

end A024352

/-! ## A024352.P6664093753791112200

`A323161(A047623(n+2))`
-/

namespace A024352.P6664093753791112200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A047623 (n + 2)).toNat

end

end A024352.P6664093753791112200

namespace A024352

/-- `A323161(A047623(n+2))` -/
def P6664093753791112200.Spec : Prop :=
  ∀ n, P6664093753791112200.a n = A024352 (n + 1)

end A024352

/-!
# A024354: Consider primitive Pythagorean triangles (A^2 + B^2 = C^2, (A, B) = 1, A <= B); sequence gives values of B, sorted and duplicates removed (first differs from A020883 at 420).

The programs for A024354, there is no canonical definition to state claims against.
-/

/-! ## A024354.P249089894464259082

`record[A020883(A324343(n))]`
-/

namespace A024354.P249089894464259082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (A324343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P249089894464259082

/-! ## A024354.P499270109955496315

`record[A020883(A323897(n+1))]`
-/

namespace A024354.P499270109955496315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (A323897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P499270109955496315

/-! ## A024354.P3428858350323975046

`record[A020883((n+1)/A020639(n+1))]`
-/

namespace A024354.P3428858350323975046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P3428858350323975046

/-! ## A024354.P1834029547803668396

`record[A020883(n+1)%A020883(n+2)]`
-/

namespace A024354.P1834029547803668396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020883 (n + 1)) (A020883 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P1834029547803668396

/-! ## A024354.P1283156789426379362

`record[A020883(1-A140472(n)+n)]`
-/

namespace A024354.P1283156789426379362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (1 - A140472 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P1283156789426379362

/-! ## A024354.P12548232475408487210

`record[A020883(1-(A140472(n)-n))]`
-/

namespace A024354.P12548232475408487210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (1 - (A140472 n - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P12548232475408487210

/-! ## A024354.P16658659654100940532

`record[A343891(n+1)/A130196(n)]`
-/

namespace A024354.P16658659654100940532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343891 (n + 1) : ℚ) / (A130196 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P16658659654100940532

/-! ## A024354.P6908125871938477874

`record[A020883(gcd(n, A042965(n+1))+1)]`
-/

namespace A024354.P6908125871938477874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (Int.gcd (n : ℤ) (A042965 (n + 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024354.P6908125871938477874

/-! ## A024354.P5160876686110774373

`lt[1, A024360(A028310(n))+1]`
-/

namespace A024354.P5160876686110774373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A024354.P5160876686110774373

/-!
# A024355: Consider primitive Pythagorean triangles (A^2 + B^2 = C^2, (A, B) = 1, A <= B); sequence gives values of AUB, sorted.

The programs for A024355, there is no canonical definition to state claims against.
-/

/-! ## A024355.P7380071177444289842

`A122906(A000720(3*(n+1))%A117416(n))`
-/

namespace A024355.P7380071177444289842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122906 (Int.tmod (A000720 (3 * (n + 1))) (A117416 n)).toNat

end

end A024355.P7380071177444289842

/-! ## A024355.P5179219940161735703

`A004773(A036234(3*n+3))-A001987(A087262(n+1))`
-/

namespace A024355.P5179219940161735703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A036234 (3 * n + 3)).toNat - A001987 (A087262 (n + 1)).toNat

end

end A024355.P5179219940161735703

/-! ## A024355.P4749528774379264222

`A004773(A036234(3*n+3))-A120263(A061195(n+1))`
-/

namespace A024355.P4749528774379264222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A036234 (3 * n + 3)).toNat - A120263 (A061195 (n + 1)).toNat

end

end A024355.P4749528774379264222

/-! ## A024355.P3349918845116119058

`A183147(A000720(3*n+3)%A183147(3*n+4))`
-/

namespace A024355.P3349918845116119058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (Int.tmod (A000720 (3 * n + 3)) (A183147 (3 * n + 4))).toNat

end

end A024355.P3349918845116119058

/-! ## A024355.P13871231628163445859

`A183147(A000720(3*(n+1))*A322361(3*n+4))`
-/

namespace A024355.P13871231628163445859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (A000720 (3 * (n + 1)) * A322361 (3 * n + 4)).toNat

end

end A024355.P13871231628163445859

/-!
# A024356: Determinant of Hankel matrix of the first 2n-1 prime numbers.

The programs for A024356, there is no canonical definition to state claims against.
-/

/-! ## A024356.P16829963643901938977

`A350200(∑[n]+n)`
-/

namespace A024356.P16829963643901938977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A024356.P16829963643901938977

/-! ## A024356.P17468049126151385116

`A350200(A000096(n))+A025466(n)`
-/

namespace A024356.P17468049126151385116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (A000096 n).toNat + A025466 n

end

end A024356.P17468049126151385116

/-! ## A024356.P3463171078544691569

`A278657(n)*A350200(A000096(n))`
-/

namespace A024356.P3463171078544691569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A350200 (A000096 n).toNat

end

end A024356.P3463171078544691569

/-! ## A024356.P5260703604441559440

`A350200(A000096(n))%A267438(n+1)`
-/

namespace A024356.P5260703604441559440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350200 (A000096 n).toNat) (A267438 (n + 1))

end

end A024356.P5260703604441559440

/-!
# A024357: Consider primitive Pythagorean triangles (A^2 + B^2 = C^2, (A, B) = 1, A <= B); sequence gives values of AUBUC, sorted.

The programs for A024357, there is no canonical definition to state claims against.
-/

/-! ## A024357.P7317647719025327621

`A080405(2*(n+2))+A055642(A343440(n+1))`
-/

namespace A024357.P7317647719025327621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080405 (2 * (n + 2)) + A055642 (A343440 (n + 1)).toNat

end

end A024357.P7317647719025327621

/-! ## A024357.P5563657772242204220

`A240474(A249552(n+1)+A007661(n))+n+1`
-/

namespace A024357.P5563657772242204220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240474 (A249552 (n + 1) + A007661 n).toNat + (n + 1 : ℤ)

end

end A024357.P5563657772242204220

/-! ## A024357.P9339293397114078000

`A038567(lt[A333500(n+1), A211005(n+4)])`
-/

namespace A024357.P9339293397114078000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A024357.P9339293397114078000

/-!
# A024358: Sum of the sizes of binary subtrees of the perfect binary tree of height n.

The programs for A024358, there is no canonical definition to state claims against.
-/

/-! ## A024358.P12905538979576931107

`A309052(2^n-1)`
-/

namespace A024358.P12905538979576931107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309052 (2 ^ n - 1)

end

end A024358.P12905538979576931107

/-! ## A024358.P1284743094608002373

`∑[A335922(n)]`
-/

namespace A024358.P1284743094608002373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024358.P1284743094608002373

/-! ## A024358.P2278873538498100363

`record[A309052(A135481(n))]`
-/

namespace A024358.P2278873538498100363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309052 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024358.P2278873538498100363

/-! ## A024358.P537442509548188437

`record[A309052(A154436(n))]`
-/

namespace A024358.P537442509548188437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309052 (A154436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024358.P537442509548188437

/-! ## A024358.P4535276151399123896

`record[A309052(n*A036987(n))]`
-/

namespace A024358.P4535276151399123896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309052 ((n : ℤ) * A036987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024358.P4535276151399123896

/-!
# A024359: Number of primitive Pythagorean triangles with short leg n.

The programs for A024359, there is no canonical definition to state claims against.
-/

/-! ## A024359.P9787730217734820458

`A024361(n+1)-A024360(n+1)`
-/

namespace A024359.P9787730217734820458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) - A024360 (n + 1)

end

end A024359.P9787730217734820458

/-! ## A024359.P17578661742813671284

`∑{d}[n+1, A008683(#)*A056138((n+1)/#)]`
-/

namespace A024359.P17578661742813671284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056138 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024359.P17578661742813671284

/-! ## A024359.P9633959740490434988

`A024363(n+1)-(A024362(n+1)+A024360(n+1))`
-/

namespace A024359.P9633959740490434988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) - (A024362 (n + 1) + A024360 (n + 1))

end

end A024359.P9633959740490434988

/-! ## A024359.P1445616053347837325

`A046079(n+1)-(A328708(n+1)+A024360(n+1))`
-/

namespace A024359.P1445616053347837325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - (A328708 (n + 1) + A024360 (n + 1))

end

end A024359.P1445616053347837325

/-! ## A024359.P8966408968239915380

`A024361(n+1)-Δ[A156684(n+1)]`
-/

namespace A024359.P8966408968239915380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) - (f1 (n + 1) - f1 n)

end

end A024359.P8966408968239915380

/-! ## A024359.P16580479276115191205

`A024361(n+1)+A156684(n+1)-A156684(n+2)`
-/

namespace A024359.P16580479276115191205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + (A156684 (n + 1) - A156684 (n + 2))

end

end A024359.P16580479276115191205

/-!
# A024360: Number of primitive Pythagorean triangles with long leg n.

The programs for A024360, there is no canonical definition to state claims against.
-/

/-! ## A024360.P9232529083600860747

`A024361(n+1)-A024359(n+1)`
-/

namespace A024360.P9232529083600860747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) - A024359 (n + 1)

end

end A024360.P9232529083600860747

/-! ## A024360.P2310007028774065209

`∑{d}[n+1, A008683(#)*A056137((n+1)/#)]`
-/

namespace A024360.P2310007028774065209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024360.P2310007028774065209

/-! ## A024360.P6696592385148498429

`A024363(n+1)-(A024362(n+1)+A024359(n+1))`
-/

namespace A024360.P6696592385148498429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) - (A024362 (n + 1) + A024359 (n + 1))

end

end A024360.P6696592385148498429

/-! ## A024360.P1497290013540814027

`Δ[A156684(n+1)]`
-/

namespace A024360.P1497290013540814027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A024360.P1497290013540814027

/-! ## A024360.P11532939020116507444

`A156684(n+2)-A156684(n+1)`
-/

namespace A024360.P11532939020116507444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (n + 2) - A156684 (n + 1)

end

end A024360.P11532939020116507444

/-! ## A024360.P8440540111482403275

`A005359(xor(A156684(n+1)+1, A156684(n+2)))`
-/

namespace A024360.P8440540111482403275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005359 (Int.xor (A156684 (n + 1) + 1) (A156684 (n + 2))).toNat

end

end A024360.P8440540111482403275

/-! ## A024360.P9508578065775741654

`A024359(A225004(n+1))-A024359(n+1)`
-/

namespace A024360.P9508578065775741654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (A225004 (n + 1)).toNat - A024359 (n + 1)

end

end A024360.P9508578065775741654

/-!
# A024361: Number of primitive Pythagorean triangles with leg n.

The programs for A024361, the canonical program `A024361.P1146025692209475519` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024361 has offset 1).

The definition of A024361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024361.P8622786614648130420

`A024359(n+1)+A024360(n+1)`
-/

namespace A024361.P8622786614648130420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1) + A024360 (n + 1)

end

end A024361.P8622786614648130420

namespace A024361

/-- `A024359(n+1)+A024360(n+1)` -/
def P8622786614648130420.Spec : Prop :=
  ∀ n, P8622786614648130420.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P17243455765182115645

`A024363(A097272(n+1))`
-/

namespace A024361.P17243455765182115645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A097272 (n + 1)).toNat

end

end A024361.P17243455765182115645

namespace A024361

/-- `A024363(A097272(n+1))` -/
def P17243455765182115645.Spec : Prop :=
  ∀ n, P17243455765182115645.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P1146025692209475519

`A004526(abs(A317528(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A024361

/-- `A004526(abs(A317528(n+1)))` -/
def P1146025692209475519.Spec : Prop :=
  ∀ n, P1146025692209475519.a n = A024361 (n + 1)

theorem P1146025692209475519.correct : P1146025692209475519.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel]

end A024361

/-! ## A024361.P1546161098265327443

`A024363(n+1)-A024362(n+1)`
-/

namespace A024361.P1546161098265327443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) - A024362 (n + 1)

end

end A024361.P1546161098265327443

namespace A024361

/-- `A024363(n+1)-A024362(n+1)` -/
def P1546161098265327443.Spec : Prop :=
  ∀ n, P1546161098265327443.a n = A024361 (n + 1)

theorem P1546161098265327443.correct : P1546161098265327443.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel, A024361.P1546161098265327443.a, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A024362, A024362.P4327117018867467884.a, A024363, A024363.P18199515356215548539.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A019590, A019590.P10517823757212113743.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024361

/-! ## A024361.P13329112658031075908

`A046079(n+1)-A328708(n+1)`
-/

namespace A024361.P13329112658031075908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) - A328708 (n + 1)

end

end A024361.P13329112658031075908

namespace A024361

/-- `A046079(n+1)-A328708(n+1)` -/
def P13329112658031075908.Spec : Prop :=
  ∀ n, P13329112658031075908.a n = A024361 (n + 1)

theorem P13329112658031075908.correct : P13329112658031075908.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel, A024361.P13329112658031075908.a, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024361

/-! ## A024361.P3033672242390582042

`A007875(n+1)%A060594(n+1)`
-/

namespace A024361.P3033672242390582042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (n + 1)) (A060594 (n + 1))

end

end A024361.P3033672242390582042

namespace A024361

/-- `A007875(n+1)%A060594(n+1)` -/
def P3033672242390582042.Spec : Prop :=
  ∀ n, P3033672242390582042.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P1311584339954049279

`and(A007875(n+1), A155828(n+1))`
-/

namespace A024361.P1311584339954049279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007875 (n + 1)) (A155828 (n + 1))

end

end A024361.P1311584339954049279

namespace A024361

/-- `and(A007875(n+1), A155828(n+1))` -/
def P1311584339954049279.Spec : Prop :=
  ∀ n, P1311584339954049279.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P7514732377600822313

`and(A304182(n+1)-1, A007875(n+1))`
-/

namespace A024361.P7514732377600822313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304182 (n + 1) - 1) (A007875 (n + 1))

end

end A024361.P7514732377600822313

namespace A024361

/-- `and(A304182(n+1)-1, A007875(n+1))` -/
def P7514732377600822313.Spec : Prop :=
  ∀ n, P7514732377600822313.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P8247305199811424754

`∑{d}[n+1, A008683(#)*A046079((n+1)/#)]`
-/

namespace A024361.P8247305199811424754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A046079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024361.P8247305199811424754

namespace A024361

/-- `∑{d}[n+1, A008683(#)*A046079((n+1)/#)]` -/
def P8247305199811424754.Spec : Prop :=
  ∀ n, P8247305199811424754.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P1383343807697452589

`∑{d}[n+1, A007427(#)*A241534((n+1)/#)]`
-/

namespace A024361.P1383343807697452589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A241534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024361.P1383343807697452589

namespace A024361

/-- `∑{d}[n+1, A007427(#)*A241534((n+1)/#)]` -/
def P1383343807697452589.Spec : Prop :=
  ∀ n, P1383343807697452589.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P289220785411696826

`∑{d}[n+1, A154269(#)*A157230((n+1)/#)]`
-/

namespace A024361.P289220785411696826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A157230 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024361.P289220785411696826

namespace A024361

/-- `∑{d}[n+1, A154269(#)*A157230((n+1)/#)]` -/
def P289220785411696826.Spec : Prop :=
  ∀ n, P289220785411696826.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P9292157315657661310

`A004526(lcm(A034947(n+1), A317528(n+1)))`
-/

namespace A024361.P9292157315657661310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm (A034947 (n + 1)) (A317528 (n + 1)))

end

end A024361.P9292157315657661310

namespace A024361

/-- `A004526(lcm(A034947(n+1), A317528(n+1)))` -/
def P9292157315657661310.Spec : Prop :=
  ∀ n, P9292157315657661310.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P10340995398579202464

`A000010(A000005(∏{p}[n+1, #]))%A060594(n+1)`
-/

namespace A024361.P10340995398579202464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat) (A060594 (n + 1))

end

end A024361.P10340995398579202464

namespace A024361

/-- `A000010(A000005(∏{p}[n+1, #]))%A060594(n+1)` -/
def P10340995398579202464.Spec : Prop :=
  ∀ n, P10340995398579202464.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P7010663220105577175

`A046081(n+1)-(A328949(n+1)+A024362(n+1))`
-/

namespace A024361.P7010663220105577175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A328949 (n + 1) + A024362 (n + 1))

end

end A024361.P7010663220105577175

namespace A024361

/-- `A046081(n+1)-(A328949(n+1)+A024362(n+1))` -/
def P7010663220105577175.Spec : Prop :=
  ∀ n, P7010663220105577175.a n = A024361 (n + 1)

theorem P7010663220105577175.correct : P7010663220105577175.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel, A024361.P7010663220105577175.a, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A024362, A024362.P4327117018867467884.a, A046081, A046081.P5098545024402691022.a, A317528, A317528.P12745314278989265988.a, A328949, A328949.P9082150225325732429.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A157228, A157228.P6044199204996125931.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A000089, A000089.P6732950680245443794.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A019590, A019590.P10517823757212113743.a, A063014, A063014.P2435970929241132637.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024361

/-! ## A024361.P10760067023975301511

`A046081(n+1)-(A328708(n+1)+A046080(n+1))`
-/

namespace A024361.P10760067023975301511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A328708 (n + 1) + A046080 (n + 1))

end

end A024361.P10760067023975301511

namespace A024361

/-- `A046081(n+1)-(A328708(n+1)+A046080(n+1))` -/
def P10760067023975301511.Spec : Prop :=
  ∀ n, P10760067023975301511.a n = A024361 (n + 1)

theorem P10760067023975301511.correct : P10760067023975301511.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel, A024361.P10760067023975301511.a, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A046080, A046080.P16111352627053334427.a, A046081, A046081.P5098545024402691022.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A063014, A063014.P2435970929241132637.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024361

/-! ## A024361.P5208109736305613809

`A046079(n+1)+A328712(n+1)-A328949(n+1)`
-/

namespace A024361.P5208109736305613809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + (A328712 (n + 1) - A328949 (n + 1))

end

end A024361.P5208109736305613809

namespace A024361

/-- `A046079(n+1)+A328712(n+1)-A328949(n+1)` -/
def P5208109736305613809.Spec : Prop :=
  ∀ n, P5208109736305613809.a n = A024361 (n + 1)

theorem P5208109736305613809.correct : P5208109736305613809.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel, A024361.P5208109736305613809.a, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A317528, A317528.P12745314278989265988.a, A328712, A328712.P8522307854513457100.a, A328949, A328949.P9082150225325732429.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A024362, A024362.P4327117018867467884.a, A034444, A034444.P6574915864346323298.a, A046080, A046080.P16111352627053334427.a, A328708, A328708.P9117693535644354588.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A019590, A019590.P10517823757212113743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024361

/-! ## A024361.P3570423667967506649

`A221838(n+1)-(A328708(n+1)+A221837(n+1))`
-/

namespace A024361.P3570423667967506649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221838 (n + 1) - (A328708 (n + 1) + A221837 (n + 1))

end

end A024361.P3570423667967506649

namespace A024361

/-- `A221838(n+1)-(A328708(n+1)+A221837(n+1))` -/
def P3570423667967506649.Spec : Prop :=
  ∀ n, P3570423667967506649.a n = A024361 (n + 1)

theorem P3570423667967506649.correct : P3570423667967506649.Spec := by
  intro n
  simp only [A024361, Nat.add_sub_cancel, A024361.P3570423667967506649.a, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A221837, A221837.P10112316691659458481.a, A221838, A221838.P16241372166790464696.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A034444, A034444.P6574915864346323298.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024361

/-! ## A024361.P5772949403689694642

`A034444(A252463(n+1))-A252463(A034444(n+1))`
-/

namespace A024361.P5772949403689694642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A252463 (n + 1)).toNat - A252463 (A034444 (n + 1)).toNat

end

end A024361.P5772949403689694642

namespace A024361

/-- `A034444(A252463(n+1))-A252463(A034444(n+1))` -/
def P5772949403689694642.Spec : Prop :=
  ∀ n, P5772949403689694642.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P17067078222708409999

`A024359(n+1)+A156684(n+2)-A156684(n+1)`
-/

namespace A024361.P17067078222708409999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1) + (A156684 (n + 2) - A156684 (n + 1))

end

end A024361.P17067078222708409999

namespace A024361

/-- `A024359(n+1)+A156684(n+2)-A156684(n+1)` -/
def P17067078222708409999.Spec : Prop :=
  ∀ n, P17067078222708409999.a n = A024361 (n + 1)

end A024361

/-! ## A024361.P16912516941811916392

`A034444(A332893(n+1))-A332893(A034444(n+1))`
-/

namespace A024361.P16912516941811916392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A332893 (n + 1)).toNat - A332893 (A034444 (n + 1)).toNat

end

end A024361.P16912516941811916392

namespace A024361

/-- `A034444(A332893(n+1))-A332893(A034444(n+1))` -/
def P16912516941811916392.Spec : Prop :=
  ∀ n, P16912516941811916392.a n = A024361 (n + 1)

end A024361

/-!
# A024362: Number of primitive Pythagorean triangles with hypotenuse n.

The programs for A024362, the canonical program `A024362.P4327117018867467884` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024362 has offset 1).

The definition of A024362 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157228, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024362.P8266050230037592885

`A046080(n+1)-A328712(n+1)`
-/

namespace A024362.P8266050230037592885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) - A328712 (n + 1)

end

end A024362.P8266050230037592885

namespace A024362

/-- `A046080(n+1)-A328712(n+1)` -/
def P8266050230037592885.Spec : Prop :=
  ∀ n, P8266050230037592885.a n = A024362 (n + 1)

theorem P8266050230037592885.correct : P8266050230037592885.Spec := by
  intro n
  simp only [A024362, Nat.add_sub_cancel, A024362.P8266050230037592885.a, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A157228, A157228.P6044199204996125931.a, A328712, A328712.P8522307854513457100.a, A000089, A000089.P6732950680245443794.a, A019590, A019590.P10517823757212113743.a, A063014, A063014.P2435970929241132637.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, A003557, A003557.P6364735403900941810.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024362

/-! ## A024362.P4327117018867467884

`A157228(2*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A024362

/-- `A157228(2*(n+1))` -/
def P4327117018867467884.Spec : Prop :=
  ∀ n, P4327117018867467884.a n = A024362 (n + 1)

theorem P4327117018867467884.correct : P4327117018867467884.Spec := by
  intro n
  simp only [A024362, Nat.add_sub_cancel]

end A024362

/-! ## A024362.P2480877528785072267

`A001221(∏{p}[n+1, and(2, #+2)]!)`
-/

namespace A024362.P2480877528785072267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (p + 2)))

end

end A024362.P2480877528785072267

namespace A024362

/-- `A001221(∏{p}[n+1, and(2, #+2)]!)` -/
def P2480877528785072267.Spec : Prop :=
  ∀ n, P2480877528785072267.a n = A024362 (n + 1)

end A024362

/-! ## A024362.P3725933899284968570

`A025426(or(1, A007947(n+1)))`
-/

namespace A024362.P3725933899284968570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (Int.lor 1 (A007947 (n + 1))).toNat

end

end A024362.P3725933899284968570

namespace A024362

/-- `A025426(or(1, A007947(n+1)))` -/
def P3725933899284968570.Spec : Prop :=
  ∀ n, P3725933899284968570.a n = A024362 (n + 1)

end A024362

/-! ## A024362.P16631613764031035767

`A024363(n+1)-A024361(n+1)`
-/

namespace A024362.P16631613764031035767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (n + 1) - A024361 (n + 1)

end

end A024362.P16631613764031035767

namespace A024362

/-- `A024363(n+1)-A024361(n+1)` -/
def P16631613764031035767.Spec : Prop :=
  ∀ n, P16631613764031035767.a n = A024362 (n + 1)

theorem P16631613764031035767.correct : P16631613764031035767.Spec := by
  intro n
  simp only [A024362, Nat.add_sub_cancel, A024362.P16631613764031035767.a, A024362.P4327117018867467884.a, A024361, A024361.P1146025692209475519.a, A024363, A024363.P18199515356215548539.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A004526, A004526.P10084182425416171735.a, A019590, A019590.P10517823757212113743.a, A317528, A317528.P12745314278989265988.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A026741, A026741.P7397200255647832146.a, A034444, A034444.P6574915864346323298.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, A000217, A000217.P10269402890581615239.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024362

/-! ## A024362.P8554448548377986724

`∑{d}[n+1, A008683(#)*A046080((n+1)/#)]`
-/

namespace A024362.P8554448548377986724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A046080 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024362.P8554448548377986724

namespace A024362

/-- `∑{d}[n+1, A008683(#)*A046080((n+1)/#)]` -/
def P8554448548377986724.Spec : Prop :=
  ∀ n, P8554448548377986724.a n = A024362 (n + 1)

end A024362

/-! ## A024362.P5086061569376649704

`and(A157228(n+1), A181527(n))`
-/

namespace A024362.P5086061569376649704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157228 (n + 1)) (A181527 n)

end

end A024362.P5086061569376649704

namespace A024362

/-- `and(A157228(n+1), A181527(n))` -/
def P5086061569376649704.Spec : Prop :=
  ∀ n, P5086061569376649704.a n = A024362 (n + 1)

end A024362

/-! ## A024362.P9763617716973160166

`and(A077900(n), A157228(n+1))`
-/

namespace A024362.P9763617716973160166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077900 n) (A157228 (n + 1))

end

end A024362.P9763617716973160166

namespace A024362

/-- `and(A077900(n), A157228(n+1))` -/
def P9763617716973160166.Spec : Prop :=
  ∀ n, P9763617716973160166.a n = A024362 (n + 1)

end A024362

/-! ## A024362.P2961362232737589238

`and(A041098(n), A157228(n+1))`
-/

namespace A024362.P2961362232737589238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041098 n) (A157228 (n + 1))

end

end A024362.P2961362232737589238

namespace A024362

/-- `and(A041098(n), A157228(n+1))` -/
def P2961362232737589238.Spec : Prop :=
  ∀ n, P2961362232737589238.a n = A024362 (n + 1)

end A024362

/-! ## A024362.P2983154906160051497

`and(A027641(n), A157228(n+1))`
-/

namespace A024362.P2983154906160051497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027641 n) (A157228 (n + 1))

end

end A024362.P2983154906160051497

namespace A024362

/-- `and(A027641(n), A157228(n+1))` -/
def P2983154906160051497.Spec : Prop :=
  ∀ n, P2983154906160051497.a n = A024362 (n + 1)

end A024362

/-!
# A024363: Number of primitive Pythagorean triangles with side n.

The programs for A024363, the canonical program `A024363.P18199515356215548539` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024363 has offset 1).

The definition of A024363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A024362, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A024363.P18199515356215548539

`A024361(n+1)+A024362(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A024363

/-- `A024361(n+1)+A024362(n+1)` -/
def P18199515356215548539.Spec : Prop :=
  ∀ n, P18199515356215548539.a n = A024363 (n + 1)

theorem P18199515356215548539.correct : P18199515356215548539.Spec := by
  intro n
  simp only [A024363, Nat.add_sub_cancel]

end A024363

/-! ## A024363.P15114326841963863586

`A046081(n+1)-A328949(n+1)`
-/

namespace A024363.P15114326841963863586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - A328949 (n + 1)

end

end A024363.P15114326841963863586

namespace A024363

/-- `A046081(n+1)-A328949(n+1)` -/
def P15114326841963863586.Spec : Prop :=
  ∀ n, P15114326841963863586.a n = A024363 (n + 1)

theorem P15114326841963863586.correct : P15114326841963863586.Spec := by
  intro n
  simp only [A024363, Nat.add_sub_cancel, A024363.P15114326841963863586.a, A024363.P18199515356215548539.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046081, A046081.P5098545024402691022.a, A328949, A328949.P9082150225325732429.a, A004526, A004526.P10084182425416171735.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A063014, A063014.P2435970929241132637.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024363

/-! ## A024363.P8168079987863016721

`∑{d}[n+1, A008683(#)*A046081((n+1)/#)]`
-/

namespace A024363.P8168079987863016721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A046081 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A024363.P8168079987863016721

namespace A024363

/-- `∑{d}[n+1, A008683(#)*A046081((n+1)/#)]` -/
def P8168079987863016721.Spec : Prop :=
  ∀ n, P8168079987863016721.a n = A024363 (n + 1)

end A024363

/-! ## A024363.P4909780833386022904

`A024359(n+1)+A024362(n+1)+A024360(n+1)`
-/

namespace A024363.P4909780833386022904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024359 (n + 1) + (A024362 (n + 1) + A024360 (n + 1))

end

end A024363.P4909780833386022904

namespace A024363

/-- `A024359(n+1)+A024362(n+1)+A024360(n+1)` -/
def P4909780833386022904.Spec : Prop :=
  ∀ n, P4909780833386022904.a n = A024363 (n + 1)

end A024363

/-! ## A024363.P10683021642057049712

`A024361(n+1)+A046080(n+1)-A328712(n+1)`
-/

namespace A024363.P10683021642057049712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + (A046080 (n + 1) - A328712 (n + 1))

end

end A024363.P10683021642057049712

namespace A024363

/-- `A024361(n+1)+A046080(n+1)-A328712(n+1)` -/
def P10683021642057049712.Spec : Prop :=
  ∀ n, P10683021642057049712.a n = A024363 (n + 1)

theorem P10683021642057049712.correct : P10683021642057049712.Spec := by
  intro n
  simp only [A024363, Nat.add_sub_cancel, A024363.P10683021642057049712.a, A024363.P18199515356215548539.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A328712, A328712.P8522307854513457100.a, A004526, A004526.P10084182425416171735.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024363

/-! ## A024363.P5455388153050229656

`A024362(n+1)+A046079(n+1)-A328708(n+1)`
-/

namespace A024363.P5455388153050229656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1) + (A046079 (n + 1) - A328708 (n + 1))

end

end A024363.P5455388153050229656

namespace A024363

/-- `A024362(n+1)+A046079(n+1)-A328708(n+1)` -/
def P5455388153050229656.Spec : Prop :=
  ∀ n, P5455388153050229656.a n = A024363 (n + 1)

theorem P5455388153050229656.correct : P5455388153050229656.Spec := by
  intro n
  simp only [A024363, Nat.add_sub_cancel, A024363.P5455388153050229656.a, A024363.P18199515356215548539.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A328708, A328708.P9117693535644354588.a, A004526, A004526.P10084182425416171735.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024363

/-! ## A024363.P11969946112326770873

`A046079(n+1)+A046080(n+1)-A328949(n+1)`
-/

namespace A024363.P11969946112326770873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (n + 1) + (A046080 (n + 1) - A328949 (n + 1))

end

end A024363.P11969946112326770873

namespace A024363

/-- `A046079(n+1)+A046080(n+1)-A328949(n+1)` -/
def P11969946112326770873.Spec : Prop :=
  ∀ n, P11969946112326770873.a n = A024363 (n + 1)

theorem P11969946112326770873.correct : P11969946112326770873.Spec := by
  intro n
  simp only [A024363, Nat.add_sub_cancel, A024363.P11969946112326770873.a, A024363.P18199515356215548539.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A328949, A328949.P9082150225325732429.a, A004526, A004526.P10084182425416171735.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024363

/-! ## A024363.P17606879899908846126

`A046081(n+1)-(A328712(n+1)+A328708(n+1))`
-/

namespace A024363.P17606879899908846126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A328712 (n + 1) + A328708 (n + 1))

end

end A024363.P17606879899908846126

namespace A024363

/-- `A046081(n+1)-(A328712(n+1)+A328708(n+1))` -/
def P17606879899908846126.Spec : Prop :=
  ∀ n, P17606879899908846126.a n = A024363 (n + 1)

theorem P17606879899908846126.correct : P17606879899908846126.Spec := by
  intro n
  simp only [A024363, Nat.add_sub_cancel, A024363.P17606879899908846126.a, A024363.P18199515356215548539.a, A024361, A024361.P1146025692209475519.a, A024362, A024362.P4327117018867467884.a, A046081, A046081.P5098545024402691022.a, A328708, A328708.P9117693535644354588.a, A328712, A328712.P8522307854513457100.a, A004526, A004526.P10084182425416171735.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A157228, A157228.P6044199204996125931.a, A317528, A317528.P12745314278989265988.a, A000089, A000089.P6732950680245443794.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A019590, A019590.P10517823757212113743.a, A034444, A034444.P6574915864346323298.a, A063014, A063014.P2435970929241132637.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A026741, A026741.P7397200255647832146.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A024363

/-!
# A024364: Ordered perimeters of primitive Pythagorean triangles.

The programs for A024364, there is no canonical definition to state claims against.
-/

/-! ## A024364.P16786585262299180989

`2*A020886(n+1)`
-/

namespace A024364.P16786585262299180989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020886 (n + 1)

end

end A024364.P16786585262299180989

/-! ## A024364.P10201383333909498263

`A020886(A000027(n+1))+A020886(n+1)`
-/

namespace A024364.P10201383333909498263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (A000027 (n + 1)).toNat + A020886 (n + 1)

end

end A024364.P10201383333909498263

/-! ## A024364.P7147631277488589

`∑{d}[A020886(n+1), A000010(#)+A000010(#)]`
-/

namespace A024364.P7147631277488589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A024364.P7147631277488589

/-! ## A024364.P17174143934390540607

`A020886(n+1)+A020886((n+1)%A005279(n+1))`
-/

namespace A024364.P17174143934390540607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1) + A020886 (Int.tmod (n + 1 : ℤ) (A005279 (n + 1))).toNat

end

end A024364.P17174143934390540607

/-! ## A024364.P256757903473365435

`A020886(n+1)+A020886(n+1)%A024409(n+1)`
-/

namespace A024364.P256757903473365435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1) + Int.tmod (A020886 (n + 1)) (A024409 (n + 1))

end

end A024364.P256757903473365435

/-! ## A024364.P17663207564028615378

`(A020886(n+1)+A020886(n+1))%A024410(n+1)`
-/

namespace A024364.P17663207564028615378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020886 (n + 1) + A020886 (n + 1)) (A024410 (n + 1))

end

end A024364.P17663207564028615378

/-! ## A024364.P16512647292265407791

`A020886(n+1)+A070109(A020882(n+1))+A020886(n+1)`
-/

namespace A024364.P16512647292265407791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1) + (A070109 (A020882 (n + 1)).toNat + A020886 (n + 1))

end

end A024364.P16512647292265407791

/-! ## A024364.P5597739477657404394

`lt[0, A070109(n+2)]+2`
-/

namespace A024364.P5597739477657404394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A024364.P5597739477657404394

/-! ## A024364.P4099136448650378171

`A004277(A020886(n+1))`
-/

namespace A024364.P4099136448650378171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A020886 (n + 1)).toNat

end

end A024364.P4099136448650378171

/-!
# A024365: Areas of right triangles with coprime integer sides.

The programs for A024365, there is no canonical definition to state claims against.
-/

/-! ## A024365.P16618330096587337360

`6*A258151(n+1)`
-/

namespace A024365.P16618330096587337360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A258151 (n + 1)

end

end A024365.P16618330096587337360

/-! ## A024365.P17403418114046790288

`record[A024406(round(lcm(2, n+3)/6))]`
-/

namespace A024365.P17403418114046790288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P17403418114046790288

/-! ## A024365.P935688069928662103

`record[A024406(A322805(n+1))]`
-/

namespace A024365.P935688069928662103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (A322805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P935688069928662103

/-! ## A024365.P732013668776751477

`record[A024406((n+1)/A020639(n+1))]`
-/

namespace A024365.P732013668776751477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P732013668776751477

/-! ## A024365.P12155774559562339353

`record[A024406(n+1)%A024406(n+2)]`
-/

namespace A024365.P12155774559562339353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024406 (n + 1)) (A024406 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P12155774559562339353

/-! ## A024365.P7789351304540386613

`A024406(lt[1, A024406(n+2)-A024406(n+1)]+1)`
-/

namespace A024365.P7789351304540386613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (n + 2) - A024406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A024365.P7789351304540386613

/-! ## A024365.P17668531269044200674

`record[A024406(n-∑[val(n+1, 7)]+1)]`
-/

namespace A024365.P17668531269044200674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P17668531269044200674

/-! ## A024365.P8503703579798388868

`record[A024406(A058933(n+1))]`
-/

namespace A024365.P8503703579798388868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (A058933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P8503703579798388868

/-! ## A024365.P16736805152318643061

`record[A024406(A025480(n)+1)]`
-/

namespace A024365.P16736805152318643061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (A025480 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P16736805152318643061

/-! ## A024365.P5322320263004324806

`A094807(n+1)/2`
-/

namespace A024365.P5322320263004324806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094807 (n + 1) : ℚ) / 2

end

end A024365.P5322320263004324806

/-! ## A024365.P6702463120762072531

`record[A024406(A094193(n+1))]`
-/

namespace A024365.P6702463120762072531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (A094193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P6702463120762072531

/-! ## A024365.P2964264889149350799

`record[A024406(A054531(n+1))]`
-/

namespace A024365.P2964264889149350799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (A054531 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P2964264889149350799

/-! ## A024365.P2738070008433866765

`record[A024406(A226314(n+1))]`
-/

namespace A024365.P2738070008433866765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024406 (A226314 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024365.P2738070008433866765

/-! ## A024365.P10731073465953918038

`A008458(A258151(n+1))`
-/

namespace A024365.P10731073465953918038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A258151 (n + 1)).toNat

end

end A024365.P10731073465953918038

/-! ## A024365.P17048357951731377316

`A014682(A094807(n+1))`
-/

namespace A024365.P17048357951731377316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A094807 (n + 1)).toNat

end

end A024365.P17048357951731377316

/-!
# A024366: a(n) = s(1)s(n) + s(2)s(n-1) + ... + s(k)s(n+1-k), where k = [ (n+1)/2 ], s = A023532.

The programs for A024366, there is no canonical definition to state claims against.
-/

/-! ## A024366.P297081597709662726

`ceil(A023616(n+1)/2)`
-/

namespace A024366.P297081597709662726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023616 (n + 1) : ℚ) / 2⌉

end

end A024366.P297081597709662726

/-! ## A024366.P12515935755500533480

`A110654(A023616(n+1))`
-/

namespace A024366.P12515935755500533480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A023616 (n + 1)).toNat

end

end A024366.P12515935755500533480

/-! ## A024366.P8376829811292648886

`A004526(A023616(n+1)+1)`
-/

namespace A024366.P8376829811292648886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023616 (n + 1) + 1).toNat

end

end A024366.P8376829811292648886

/-! ## A024366.P5417352818063522625

`A123108(A023616(n+1)+1)`
-/

namespace A024366.P5417352818063522625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A023616 (n + 1) + 1).toNat

end

end A024366.P5417352818063522625

/-! ## A024366.P6595531820782936726

`A008619(A023616(n+1)+1)-1`
-/

namespace A024366.P6595531820782936726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A023616 (n + 1) + 1).toNat - 1

end

end A024366.P6595531820782936726

/-! ## A024366.P12550778415763743971

`A065033(A023616(n+1)+2)-1`
-/

namespace A024366.P12550778415763743971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A023616 (n + 1) + 2).toNat - 1

end

end A024366.P12550778415763743971

/-! ## A024366.P526250719328402225

`A004524(or(1, A023616(n+1)+1))`
-/

namespace A024366.P526250719328402225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A023616 (n + 1) + 1)).toNat

end

end A024366.P526250719328402225

/-! ## A024366.P11516777671918375180

`A028242(or(1, A023616(n+1)+1))`
-/

namespace A024366.P11516777671918375180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A023616 (n + 1) + 1)).toNat

end

end A024366.P11516777671918375180

/-! ## A024366.P7860306494077761632

`∑{d}[A001057(A023616(n+1)), A000010(#)]`
-/

namespace A024366.P7860306494077761632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A023616 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A024366.P7860306494077761632

/-!
# A024367: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (Fibonacci numbers).

The programs for A024367, there is no canonical definition to state claims against.
-/

/-! ## A024367.P9421138909420211441

`A129361(n)-A024318(n+1)`
-/

namespace A024367.P9421138909420211441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n - A024318 (n + 1)

end

end A024367.P9421138909420211441

/-! ## A024367.P12005144907732184748

`round(A025071(n+1)/ϕ²)`
-/

namespace A024367.P12005144907732184748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025071 (n + 1) : ℝ) / Real.goldenRatio ^ 2)

end

end A024367.P12005144907732184748

/-! ## A024367.P7902670311005715713

`A025071(n+1)-A024371(n+2)`
-/

namespace A024367.P7902670311005715713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025071 (n + 1) - A024371 (n + 2)

end

end A024367.P7902670311005715713

/-! ## A024367.P5370892747312245422

`A024313(n+1)-(A024318(n+1)+A024309(n+1))`
-/

namespace A024367.P5370892747312245422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024313 (n + 1) - (A024318 (n + 1) + A024309 (n + 1))

end

end A024367.P5370892747312245422

/-! ## A024367.P6550213620834203930

`A204922(A080827(n+1))-A024318(n+1)`
-/

namespace A024367.P6550213620834203930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A080827 (n + 1)).toNat - A024318 (n + 1)

end

end A024367.P6550213620834203930

/-!
# A024368: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (Lucas numbers).

The programs for A024368, there is no canonical definition to state claims against.
-/

/-! ## A024368.P4456329979636430436

`A024310(n+1)-(A024319(n+1)+A023861(n+1))`
-/

namespace A024368.P4456329979636430436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024310 (n + 1) - (A024319 (n + 1) + A023861 (n + 1))

end

end A024368.P4456329979636430436

/-! ## A024368.P14074964710947229877

`A024314(n+1)-(A024319(n+1)+A024310(n+1))`
-/

namespace A024368.P14074964710947229877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024314 (n + 1) - (A024319 (n + 1) + A024310 (n + 1))

end

end A024368.P14074964710947229877

/-!
# A024369: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (1, p(1), p(2), ...).

The programs for A024369, there is no canonical definition to state claims against.
-/

/-! ## A024369.P5141959286376181852

`∑[A182134(∑[A279564(n)])]`
-/

namespace A024369.P5141959286376181852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279564 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024369.P5141959286376181852

/-! ## A024369.P821076357053424686

`record[A173919(n+1)-A198661(n+1)]`
-/

namespace A024369.P821076357053424686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1) - A198661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024369.P821076357053424686

/-! ## A024369.P12603140851925350282

`record[A173919(n+1)-A199149(n+1)]`
-/

namespace A024369.P12603140851925350282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1) - A199149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024369.P12603140851925350282

/-! ## A024369.P15899241974484021079

`A010672(n)+A000120(A357962(n))`
-/

namespace A024369.P15899241974484021079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010672 n + A000120 (A357962 n).toNat

end

end A024369.P15899241974484021079

/-!
# A024371: Sum_{ k=1 ... floor(n/2) } A023532(k)*Fib(n-k).

The programs for A024371, there is no canonical definition to state claims against.
-/

/-! ## A024371.P16082272286981123216

`record[Δ[A270362(A262569(n+3))]]`
-/

namespace A024371.P16082272286981123216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A262569 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024371.P16082272286981123216

/-! ## A024371.P2939714762845245184

`A271315(∑[A270097(n)])`
-/

namespace A024371.P2939714762845245184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024371.P2939714762845245184

/-! ## A024371.P16846705185236867092

`A337270(n)-A175064(A110334(n))`
-/

namespace A024371.P16846705185236867092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337270 n - A175064 (A110334 n).toNat

end

end A024371.P16846705185236867092

/-! ## A024371.P16223866267729919489

`A337270(n)-A063014(A276724(n))`
-/

namespace A024371.P16223866267729919489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337270 n - A063014 (A276724 n).toNat

end

end A024371.P16223866267729919489

/-! ## A024371.P12850397179152093949

`A365737(A129772(n))-A329683(A216219(3*n))`
-/

namespace A024371.P12850397179152093949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365737 (A129772 n).toNat - A329683 (A216219 (3 * n)).toNat

end

end A024371.P12850397179152093949

/-!
# A024372: s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (odd natural numbers).

The programs for A024372, there is no canonical definition to state claims against.
-/

/-! ## A024372.P8230407899755117792

`A014255(n)-A024323(n+1)`
-/

namespace A024372.P8230407899755117792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n - A024323 (n + 1)

end

end A024372.P8230407899755117792

/-! ## A024372.P13691465513498137592

`A014255(n)-Δ[n*A108611(∑[n])]`
-/

namespace A024372.P13691465513498137592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108611 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n - (f1 (n + 1) - f1 n)

end

end A024372.P13691465513498137592

/-!
# A024373: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = A000201 (lower Wythoff sequence).

The programs for A024373, there is no canonical definition to state claims against.
-/

/-! ## A024373.P5205104598262575544

`A177151(A024374(n+1))`
-/

namespace A024373.P5205104598262575544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A024374 (n + 1)).toNat

end

end A024373.P5205104598262575544

/-!
# A024375: a(n) = s(1)*t(n) + s(2)*t(n-1) + ... + s(k)*t(n+1-k), where k = floor((n+1)/2), s = A023532, t = A023533.

The programs for A024375, there is no canonical definition to state claims against.
-/

/-! ## A024375.P5272505137078266157

`A095205(A024595(n+1))%2`
-/

namespace A024375.P5272505137078266157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095205 (A024595 (n + 1)).toNat) 2

end

end A024375.P5272505137078266157

/-! ## A024375.P579977627853232684

`and(A010052(n²), A095205(A024595(n+1)))`
-/

namespace A024375.P579977627853232684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010052 (n ^ 2)) (A095205 (A024595 (n + 1)).toNat)

end

end A024375.P579977627853232684

/-! ## A024375.P4526212821902363672

`and(A014577(n²), A095205(A024595(n+1)))`
-/

namespace A024375.P4526212821902363672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014577 (n ^ 2)) (A095205 (A024595 (n + 1)).toNat)

end

end A024375.P4526212821902363672

/-! ## A024375.P8725332804480134921

`and(A130706(n)!, A095205(A024595(n+1)))`
-/

namespace A024375.P8725332804480134921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A130706 n).toNat : ℤ) (A095205 (A024595 (n + 1)).toNat)

end

end A024375.P8725332804480134921

/-! ## A024375.P795880829068231327

`and(A178334(n)!, A095205(A024595(n+1)))`
-/

namespace A024375.P795880829068231327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A178334 n).toNat : ℤ) (A095205 (A024595 (n + 1)).toNat)

end

end A024375.P795880829068231327

/-!
# A024376: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = A014306.

The programs for A024376, there is no canonical definition to state claims against.
-/

/-! ## A024376.P4795293864940716262

`A024693(n+1)+A024695(n+1)-A024327(n+1)`
-/

namespace A024376.P4795293864940716262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024693 (n + 1) + (A024695 (n + 1) - A024327 (n + 1))

end

end A024376.P4795293864940716262

/-! ## A024376.P7584169881768580633

`A008612(∑[A330371(A271114(n))])`
-/

namespace A024376.P7584169881768580633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330371 (A271114 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A024376.P7584169881768580633

/-! ## A024376.P10699156530917643937

`A101402(n)-A094186(A275918(n))`
-/

namespace A024376.P10699156530917643937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 n - A094186 (A275918 n).toNat

end

end A024376.P10699156530917643937

/-! ## A024376.P11433168475042338946

`∑[char[2*n]]-A196563(A024629(n))`
-/

namespace A024376.P11433168475042338946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A196563 (A024629 n).toNat

end

end A024376.P11433168475042338946

/-! ## A024376.P16500432702708260788

`A054404(n+1)-A296657((n+2)/2^Δ[val(n+1, 2)])`
-/

namespace A024376.P16500432702708260788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 1) - A296657 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (2 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))).toNat

end

end A024376.P16500432702708260788

/-!
# A024377: a(n) = s(1)t(n) + s(2)t(n-1) + ... + s(k)t(n+1-k), where k = [ (n+1)/2 ], s = A023532, t = (primes).

The programs for A024377, there is no canonical definition to state claims against.
-/

/-! ## A024377.P5527400419448658823

`record[A097505(n+1)]-A024328(n+1)`
-/

namespace A024377.P5527400419448658823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A024328 (n + 1)

end

end A024377.P5527400419448658823

/-! ## A024377.P4229048228060423293

`A084438(n+1)-A119338(A084438(n+1))`
-/

namespace A024377.P4229048228060423293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084438 (n + 1) - A119338 (A084438 (n + 1)).toNat

end

end A024377.P4229048228060423293

/-!
# A024378: a(n) = 2nd elementary symmetric function of the first n+1 positive integers congruent to 1 mod 4.

The programs for A024378, the canonical program `A024378.P15674351866931444969` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024378 has offset 1).

The definition of A024378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024378.P15674351866931444969

`(n+1)*(n+2)*(12*(n+1)²+8*(n+1)-5)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024378

/-- `(n+1)*(n+2)*(12*(n+1)²+8*(n+1)-5)/6` -/
def P15674351866931444969.Spec : Prop :=
  ∀ n, P15674351866931444969.a n = (A024378 (n + 1) : ℚ)

end A024378

/-! ## A024378.P3045200648435894727

`∑[(n+1)*A181890(n)]`
-/

namespace A024378.P3045200648435894727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A181890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024378.P3045200648435894727

namespace A024378

/-- `∑[(n+1)*A181890(n)]` -/
def P3045200648435894727.Spec : Prop :=
  ∀ n, P3045200648435894727.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P18268557180492755102

`A076455(n+1)+∑[∑[2*n]]`
-/

namespace A024378.P18268557180492755102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076455 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024378.P18268557180492755102

namespace A024378

/-- `A076455(n+1)+∑[∑[2*n]]` -/
def P18268557180492755102.Spec : Prop :=
  ∀ n, P18268557180492755102.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P6243235948414890397

`A045943(n+1)²-A052149(n+2)`
-/

namespace A024378.P6243235948414890397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) ^ 2 - A052149 (n + 2)

end

end A024378.P6243235948414890397

namespace A024378

/-- `A045943(n+1)²-A052149(n+2)` -/
def P6243235948414890397.Spec : Prop :=
  ∀ n, P6243235948414890397.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P2032527625134228268

`∑[∑[A201279(2*n)]]`
-/

namespace A024378.P2032527625134228268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201279 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024378.P2032527625134228268

namespace A024378

/-- `∑[∑[A201279(2*n)]]` -/
def P2032527625134228268.Spec : Prop :=
  ∀ n, P2032527625134228268.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P1421886110207615624

`A215862(2*n+1)+(n+1)²`
-/

namespace A024378.P1421886110207615624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 (2 * n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A024378.P1421886110207615624

namespace A024378

/-- `A215862(2*n+1)+(n+1)²` -/
def P1421886110207615624.Spec : Prop :=
  ∀ n, P1421886110207615624.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P9874863744949972587

`A002623(2*n)+2*A082289(2*(n+2))`
-/

namespace A024378.P9874863744949972587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * n) + 2 * A082289 (2 * (n + 2))

end

end A024378.P9874863744949972587

namespace A024378

/-- `A002623(2*n)+2*A082289(2*(n+2))` -/
def P9874863744949972587.Spec : Prop :=
  ∀ n, P9874863744949972587.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P5243228453285675122

`A050189(2*n+5)+2*A050189(2*(n+2))`
-/

namespace A024378.P5243228453285675122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050189 (2 * n + 5) + 2 * A050189 (2 * (n + 2))

end

end A024378.P5243228453285675122

namespace A024378

/-- `A050189(2*n+5)+2*A050189(2*(n+2))` -/
def P5243228453285675122.Spec : Prop :=
  ∀ n, P5243228453285675122.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P308290231747266551

`∑[A160378(2*(n+1))]`
-/

namespace A024378.P308290231747266551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024378.P308290231747266551

namespace A024378

/-- `∑[A160378(2*(n+1))]` -/
def P308290231747266551.Spec : Prop :=
  ∀ n, P308290231747266551.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P6333411913002358442

`A001296(2*(n+1))-A002378(n+1)`
-/

namespace A024378.P6333411913002358442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (2 * (n + 1)) - A002378 (n + 1)

end

end A024378.P6333411913002358442

namespace A024378

/-- `A001296(2*(n+1))-A002378(n+1)` -/
def P6333411913002358442.Spec : Prop :=
  ∀ n, P6333411913002358442.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P18427659997751957387

`A001296(2*(n+1))-∑[A005843(n+1)]`
-/

namespace A024378.P18427659997751957387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024378.P18427659997751957387

namespace A024378

/-- `A001296(2*(n+1))-∑[A005843(n+1)]` -/
def P18427659997751957387.Spec : Prop :=
  ∀ n, P18427659997751957387.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P671653701653462816

`∑[A273677(2*n+1)]-n`
-/

namespace A024378.P671653701653462816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273677 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A024378.P671653701653462816

namespace A024378

/-- `∑[A273677(2*n+1)]-n` -/
def P671653701653462816.Spec : Prop :=
  ∀ n, P671653701653462816.a n = A024378 (n + 1)

end A024378

/-! ## A024378.P3169036660675216330

`∑[(n+1)*∩[2*n+1, (2*n+1)*(n-1)]]`
-/

namespace A024378.P3169036660675216330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024378.P3169036660675216330

namespace A024378

/-- `∑[(n+1)*∩[2*n+1, (2*n+1)*(n-1)]]` -/
def P3169036660675216330.Spec : Prop :=
  ∀ n, (P3169036660675216330.a n : ℤ) = A024378 (n + 1)

end A024378

/-!
# A024379: a(n) = 3rd elementary symmetric function of the first n+2 positive integers congruent to 1 mod 4.

The programs for A024379, the canonical program `A024379.P6032714863724392340` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024379 has offset 1).

The definition of A024379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024379.P6032714863724392340

`(n+1)*(2*(n+1)+3)*(n+3)*(n+2)*(4*(n+1)²+8*(n+1)-3)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024379

/-- `(n+1)*(2*(n+1)+3)*(n+3)*(n+2)*(4*(n+1)²+8*(n+1)-3)/6` -/
def P6032714863724392340.Spec : Prop :=
  ∀ n, P6032714863724392340.a n = (A024379 (n + 1) : ℚ)

end A024379

/-! ## A024379.P766993146131382151

`∑[(4*n+9)*A024378(n+1)]`
-/

namespace A024379.P766993146131382151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 9 : ℤ) * A024378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024379.P766993146131382151

namespace A024379

/-- `∑[(4*n+9)*A024378(n+1)]` -/
def P766993146131382151.Spec : Prop :=
  ∀ n, P766993146131382151.a n = A024379 (n + 1)

end A024379

/-! ## A024379.P6151793816028938436

`A290319(∑[n+4]+2)`
-/

namespace A024379.P6151793816028938436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A024379.P6151793816028938436

namespace A024379

/-- `A290319(∑[n+4]+2)` -/
def P6151793816028938436.Spec : Prop :=
  ∀ n, P6151793816028938436.a n = A024379 (n + 1)

end A024379

/-!
# A024380: 4th elementary symmetric function of the first n+3 positive integers congruent to 1 mod 4.

The programs for A024380, there is no canonical definition to state claims against.
-/

/-! ## A024380.P6392422526038689576

`A290319(A052905(n+2))`
-/

namespace A024380.P6392422526038689576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (A052905 (n + 2)).toNat

end

end A024380.P6392422526038689576

/-! ## A024380.P14591161254156711004

`A290319(eq[4, A025581(n)])`
-/

namespace A024380.P14591161254156711004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024380.P14591161254156711004

/-! ## A024380.P16430647105833928895

`A290319(eq[9, A099375(n)])`
-/

namespace A024380.P16430647105833928895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024380.P16430647105833928895

/-! ## A024380.P6894117578588941633

`A290319(eq[16, A130321(n)])`
-/

namespace A024380.P6894117578588941633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024380.P6894117578588941633

/-! ## A024380.P15463570217171347325

`A290319(A000217(n+5)-5)`
-/

namespace A024380.P15463570217171347325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (A000217 (n + 5) - 5).toNat

end

end A024380.P15463570217171347325

/-! ## A024380.P15164158079793467478

`A290319(eq[5, A004736(n+1)])`
-/

namespace A024380.P15164158079793467478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024380.P15164158079793467478

/-!
# A024381: a(n) = sum of squares of first n positive integers congruent to 1 mod 4.

The programs for A024381, the canonical program `A024381.P7878622597498355734` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024381 has offset 1).

The definition of A024381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024381.P7878622597498355734

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=26, a(2)=107, a(3)=276`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024381

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7878622597498355734.Spec : Prop :=
  ∀ n, P7878622597498355734.a n = A024381 (n + 1)

theorem P7878622597498355734.correct : P7878622597498355734.Spec := by
  intro n
  simp only [A024381, Nat.add_sub_cancel]

end A024381

/-! ## A024381.P14789650655595227095

`∑[(4*n+1)²]`
-/

namespace A024381.P14789650655595227095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024381.P14789650655595227095

namespace A024381

/-- `∑[(4*n+1)²]` -/
def P14789650655595227095.Spec : Prop :=
  ∀ n, (P14789650655595227095.a n : ℤ) = A024381 (n + 1)

end A024381

/-! ## A024381.P13121696739306355874

`∑[or(3, 12*n)²]/9`
-/

namespace A024381.P13121696739306355874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (12 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9

end

end A024381.P13121696739306355874

namespace A024381

/-- `∑[or(3, 12*n)²]/9` -/
def P13121696739306355874.Spec : Prop :=
  ∀ n, P13121696739306355874.a n = (A024381 (n + 1) : ℚ)

end A024381

/-! ## A024381.P4571255796409148132

`a(n-1)+(4*n+1)²` with `a(0)=1`
-/

namespace A024381.P4571255796409148132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (4 * n + 1) ^ 2

end

end A024381.P4571255796409148132

namespace A024381

/-- `a(n-1)+(4*n+1)²` -/
def P4571255796409148132.Spec : Prop :=
  ∀ n, (P4571255796409148132.a n : ℤ) = A024381 (n + 1)

end A024381

/-! ## A024381.P12332033208431051192

`∑[lcm(2*n+1, 8*n)]+n+1`
-/

namespace A024381.P12332033208431051192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A024381.P12332033208431051192

namespace A024381

/-- `∑[lcm(2*n+1, 8*n)]+n+1` -/
def P12332033208431051192.Spec : Prop :=
  ∀ n, (P12332033208431051192.a n : ℤ) = A024381 (n + 1)

end A024381

/-! ## A024381.P6406683830941689509

`Δ[(n+1)*C(2*n+1, 3)]-(n+1)`
-/

namespace A024381.P6406683830941689509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A024381.P6406683830941689509

namespace A024381

/-- `Δ[(n+1)*C(2*n+1, 3)]-(n+1)` -/
def P6406683830941689509.Spec : Prop :=
  ∀ n, P6406683830941689509.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P7563703018894465210

`floor(∑[sqrt(A016816(n))])`
-/

namespace A024381.P7563703018894465210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016816 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A024381.P7563703018894465210

namespace A024381

/-- `floor(∑[sqrt(A016816(n))])` -/
def P7563703018894465210.Spec : Prop :=
  ∀ n, P7563703018894465210.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P5018125656597719874

`∑[A017090(n)/2]/2`
-/

namespace A024381.P5018125656597719874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017090 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A024381.P5018125656597719874

namespace A024381

/-- `∑[A017090(n)/2]/2` -/
def P5018125656597719874.Spec : Prop :=
  ∀ n, P5018125656597719874.a n = (A024381 (n + 1) : ℚ)

end A024381

/-! ## A024381.P16656753917710743814

`A016814(n)+a(n-1)` with `a(0)=1`
-/

namespace A024381.P16656753917710743814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016814 n + a (n - 1)

end

end A024381.P16656753917710743814

namespace A024381

/-- `A016814(n)+a(n-1)` -/
def P16656753917710743814.Spec : Prop :=
  ∀ n, P16656753917710743814.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P11149697252397137262

`abs(∑[A016813(n)²]-1)+1`
-/

namespace A024381.P11149697252397137262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A024381.P11149697252397137262

namespace A024381

/-- `abs(∑[A016813(n)²]-1)+1` -/
def P11149697252397137262.Spec : Prop :=
  ∀ n, P11149697252397137262.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P5422541579629424011

`2*A100157(n+1)-(n+1)`
-/

namespace A024381.P5422541579629424011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100157 (n + 1) - (n + 1 : ℤ)

end

end A024381.P5422541579629424011

namespace A024381

/-- `2*A100157(n+1)-(n+1)` -/
def P5422541579629424011.Spec : Prop :=
  ∀ n, P5422541579629424011.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P8785295494218654029

`4*A135036(n+1)+n+1`
-/

namespace A024381.P8785295494218654029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135036 (n + 1) + (n + 1 : ℤ)

end

end A024381.P8785295494218654029

namespace A024381

/-- `4*A135036(n+1)+n+1` -/
def P8785295494218654029.Spec : Prop :=
  ∀ n, P8785295494218654029.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P15244464724284258452

`∑[2*(2-A004767(n))²]/2`
-/

namespace A024381.P15244464724284258452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - A004767 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A024381.P15244464724284258452

namespace A024381

/-- `∑[2*(2-A004767(n))²]/2` -/
def P15244464724284258452.Spec : Prop :=
  ∀ n, P15244464724284258452.a n = (A024381 (n + 1) : ℚ)

end A024381

/-! ## A024381.P7304411202145359152

`A114254(n)+A000384(n)`
-/

namespace A024381.P7304411202145359152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114254 n + A000384 n

end

end A024381.P7304411202145359152

namespace A024381

/-- `A114254(n)+A000384(n)` -/
def P7304411202145359152.Spec : Prop :=
  ∀ n, P7304411202145359152.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P4192776714630814172

`A137931(n)+A080860(n)`
-/

namespace A024381.P4192776714630814172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137931 n + A080860 n

end

end A024381.P4192776714630814172

namespace A024381

/-- `A137931(n)+A080860(n)` -/
def P4192776714630814172.Spec : Prop :=
  ∀ n, P4192776714630814172.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P11072986656203731291

`A139276(n)+A085474(n)`
-/

namespace A024381.P11072986656203731291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n + A085474 n

end

end A024381.P11072986656203731291

namespace A024381

/-- `A139276(n)+A085474(n)` -/
def P11072986656203731291.Spec : Prop :=
  ∀ n, P11072986656203731291.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P2267027182386487484

`A016755(n)-A063523(n)`
-/

namespace A024381.P2267027182386487484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A063523 n

end

end A024381.P2267027182386487484

namespace A024381

/-- `A016755(n)-A063523(n)` -/
def P2267027182386487484.Spec : Prop :=
  ∀ n, P2267027182386487484.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P9570017961908621366

`A063496(n+1)+A033954(n)`
-/

namespace A024381.P9570017961908621366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1) + A033954 n

end

end A024381.P9570017961908621366

namespace A024381

/-- `A063496(n+1)+A033954(n)` -/
def P9570017961908621366.Spec : Prop :=
  ∀ n, P9570017961908621366.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P15359937956453073517

`A163815(n)+A034720(n+1)`
-/

namespace A024381.P15359937956453073517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A034720 (n + 1)

end

end A024381.P15359937956453073517

namespace A024381

/-- `A163815(n)+A034720(n+1)` -/
def P15359937956453073517.Spec : Prop :=
  ∀ n, P15359937956453073517.a n = A024381 (n + 1)

end A024381

/-! ## A024381.P4174804177207722822

`A213842(n+1)+A002378(n)`
-/

namespace A024381.P4174804177207722822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213842 (n + 1) + A002378 n

end

end A024381.P4174804177207722822

namespace A024381

/-- `A213842(n+1)+A002378(n)` -/
def P4174804177207722822.Spec : Prop :=
  ∀ n, P4174804177207722822.a n = A024381 (n + 1)

end A024381

/-!
# A024382: a(n) = n-th elementary symmetric function of the first n+1 positive integers congruent to 1 mod 4.

The programs for A024382, the canonical program `A024382.P9370012575924908555` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024382 has offset 0).

The definition of A024382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024382.P9370012575924908555

`(8*n-2)*a(n-1)-(4*n-3)²*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024382

/-- `(8*n-2)*a(n-1)-(4*n-3)²*a(n-2)` -/
def P9370012575924908555.Spec : Prop :=
  ∀ n, P9370012575924908555.a n = A024382 n

theorem P9370012575924908555.correct : P9370012575924908555.Spec := by
  intro n
  simp only [A024382]

end A024382

/-! ## A024382.P13086488967781299607

`A290319(∑[n+1]+1)`
-/

namespace A024382.P13086488967781299607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024382.P13086488967781299607

namespace A024382

/-- `A290319(∑[n+1]+1)` -/
def P13086488967781299607.Spec : Prop :=
  ∀ n, P13086488967781299607.a n = A024382 n

end A024382

/-! ## A024382.P16695966997974605425

`record[A290319(∑[A035214(n)])]`
-/

namespace A024382.P16695966997974605425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P16695966997974605425

namespace A024382

/-- `record[A290319(∑[A035214(n)])]` -/
def P16695966997974605425.Spec : Prop :=
  ∀ n, P16695966997974605425.a n = A024382 n

end A024382

/-! ## A024382.P6444078545202991169

`record[A290319(A014132(n+1))]`
-/

namespace A024382.P6444078545202991169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P6444078545202991169

namespace A024382

/-- `record[A290319(A014132(n+1))]` -/
def P6444078545202991169.Spec : Prop :=
  ∀ n, P6444078545202991169.a n = A024382 n

end A024382

/-! ## A024382.P8163747254724229272

`record[A290319(A256188(n+1))]`
-/

namespace A024382.P8163747254724229272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (A256188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P8163747254724229272

namespace A024382

/-- `record[A290319(A256188(n+1))]` -/
def P8163747254724229272.Spec : Prop :=
  ∀ n, P8163747254724229272.a n = A024382 n

end A024382

/-! ## A024382.P16796871421894830032

`record[A290319(eq[1, A048993(n)])]`
-/

namespace A024382.P16796871421894830032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P16796871421894830032

namespace A024382

/-- `record[A290319(eq[1, A048993(n)])]` -/
def P16796871421894830032.Spec : Prop :=
  ∀ n, P16796871421894830032.a n = A024382 n

end A024382

/-! ## A024382.P11138751312650323890

`record[A290319(gcd(n, A100257(n)))]`
-/

namespace A024382.P11138751312650323890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (Int.gcd (n : ℤ) (A100257 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P11138751312650323890

namespace A024382

/-- `record[A290319(gcd(n, A100257(n)))]` -/
def P11138751312650323890.Spec : Prop :=
  ∀ n, P11138751312650323890.a n = A024382 n

end A024382

/-! ## A024382.P17641835644203794328

`record[A290319(Δ[A255879(n+1)])]`
-/

namespace A024382.P17641835644203794328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P17641835644203794328

namespace A024382

/-- `record[A290319(Δ[A255879(n+1)])]` -/
def P17641835644203794328.Spec : Prop :=
  ∀ n, P17641835644203794328.a n = A024382 n

end A024382

/-! ## A024382.P18341720247032436254

`record[A290319(A255879(n+1)+1)]`
-/

namespace A024382.P18341720247032436254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (A255879 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P18341720247032436254

namespace A024382

/-- `record[A290319(A255879(n+1)+1)]` -/
def P18341720247032436254.Spec : Prop :=
  ∀ n, P18341720247032436254.a n = A024382 n

end A024382

/-! ## A024382.P13706899298520806508

`record[A290319(A035214(n+1)+n)]`
-/

namespace A024382.P13706899298520806508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290319 (A035214 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024382.P13706899298520806508

namespace A024382

/-- `record[A290319(A035214(n+1)+n)]` -/
def P13706899298520806508.Spec : Prop :=
  ∀ n, P13706899298520806508.a n = A024382 n

end A024382

/-!
# A024383: a(n) = s(1)*s(2)*...*s(n)*(1/s(1) - 1/s(2) + ... + c/s(n)), where c = (-1)^(n+1) and s(k) = 4*k - 3 for k = 1, 2, 3, ....

The programs for A024383, the canonical program `A024383.P832128493432860667` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024383 has offset 1).

The definition of A024383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024383.P832128493432860667

`4*a(n-1)+(4*n-3)²*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024383

/-- `4*a(n-1)+(4*n-3)²*a(n-2)` -/
def P832128493432860667.Spec : Prop :=
  ∀ n, P832128493432860667.a n = A024383 (n + 1)

theorem P832128493432860667.correct : P832128493432860667.Spec := by
  intro n
  simp only [A024383, Nat.add_sub_cancel]

end A024383

/-!
# A024384: a(n) = s(1)*s(2)*...*s(n+1)*(1/s(2) - 1/s(3) + ... + c/s(n+1)), where c = (-1)^(n+1) and s(k) = 4k-3 for k = 1,2,3,...

The programs for A024384, there is no canonical definition to state claims against.
-/

/-! ## A024384.P12990418071800603084

`4*a(n-1)+(4*(n+1)-3)²*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A024384.P12990418071800603084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) + ((4 * (n + 1) : ℤ) - 3) ^ 2 * a (n - 2)

end

end A024384.P12990418071800603084

/-!
# A024385: a(n) = [ (2nd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+1 positive integers congruent to 1 mod 4}.

The programs for A024385, the canonical program `A024385.P8523660482394333050` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024385 has offset 1).

The definition of A024385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024385.P8523660482394333050

`floor(A024378(n+1)/A000384(n+2))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A024385

/-- `floor(A024378(n+1)/A000384(n+2))` -/
def P8523660482394333050.Spec : Prop :=
  ∀ n, P8523660482394333050.a n = A024385 (n + 1)

theorem P8523660482394333050.correct : P8523660482394333050.Spec := by
  intro n
  simp only [A024385, Nat.add_sub_cancel]

end A024385

/-! ## A024385.P12741936962529547024

`record[n²-round(11*n/6)]`
-/

namespace A024385.P12741936962529547024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - SequenceMachineLib.roundAway (11 * ((n : ℚ) / 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024385.P12741936962529547024

namespace A024385

/-- `record[n²-round(11*n/6)]` -/
def P12741936962529547024.Spec : Prop :=
  ∀ n, P12741936962529547024.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P15153900903424016629

`round((1/12+n+1)²)-1`
-/

namespace A024385.P15153900903424016629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 12 + (n + 1 : ℚ)) ^ 2) - 1

end

end A024385.P15153900903424016629

namespace A024385

/-- `round((1/12+n+1)²)-1` -/
def P15153900903424016629.Spec : Prop :=
  ∀ n, P15153900903424016629.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P16470849981813581327

`round(∑[2*n]+or(1, 7*n)/6)`
-/

namespace A024385.P16470849981813581327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (Nat.lor 1 (7 * n) : ℚ) / 6)

end

end A024385.P16470849981813581327

namespace A024385

/-- `round(∑[2*n]+or(1, 7*n)/6)` -/
def P16470849981813581327.Spec : Prop :=
  ∀ n, P16470849981813581327.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P3883956740847959160

`∑[or(A014601(n), A101825(n))]`
-/

namespace A024385.P3883956740847959160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014601 n) (A101825 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024385.P3883956740847959160

namespace A024385

/-- `∑[or(A014601(n), A101825(n))]` -/
def P3883956740847959160.Spec : Prop :=
  ∀ n, P3883956740847959160.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P8792786186510310411

`∑[A133624(A020639(n+1))+A005843(n)]`
-/

namespace A024385.P8792786186510310411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133624 (A020639 (n + 1)).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024385.P8792786186510310411

namespace A024385

/-- `∑[A133624(A020639(n+1))+A005843(n)]` -/
def P8792786186510310411.Spec : Prop :=
  ∀ n, P8792786186510310411.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P10487919831577715159

`round(A005563(n)+A005563(n)/A016921(n))`
-/

namespace A024385.P10487919831577715159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005563 n : ℚ) + (A005563 n : ℚ) / (A016921 n : ℚ))

end

end A024385.P10487919831577715159

namespace A024385

/-- `round(A005563(n)+A005563(n)/A016921(n))` -/
def P10487919831577715159.Spec : Prop :=
  ∀ n, P10487919831577715159.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P8974582424700073425

`∑[A103517(n)-A000035(A118306(n+1))]`
-/

namespace A024385.P8974582424700073425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A000035 (A118306 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024385.P8974582424700073425

namespace A024385

/-- `∑[A103517(n)-A000035(A118306(n+1))]` -/
def P8974582424700073425.Spec : Prop :=
  ∀ n, P8974582424700073425.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P13186556961145958958

`A004526(A260708(2*n+1)+n)`
-/

namespace A024385.P13186556961145958958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A260708 (2 * n + 1) + (n : ℤ)).toNat

end

end A024385.P13186556961145958958

namespace A024385

/-- `A004526(A260708(2*n+1)+n)` -/
def P13186556961145958958.Spec : Prop :=
  ∀ n, P13186556961145958958.a n = A024385 (n + 1)

end A024385

/-! ## A024385.P12125861067364095188

`A004526(A264041(2*n+1)+n)`
-/

namespace A024385.P12125861067364095188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A264041 (2 * n + 1) + (n : ℤ)).toNat

end

end A024385.P12125861067364095188

namespace A024385

/-- `A004526(A264041(2*n+1)+n)` -/
def P12125861067364095188.Spec : Prop :=
  ∀ n, P12125861067364095188.a n = A024385 (n + 1)

end A024385

/-!
# A024386: [ (3rd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 1 mod 4}.

The programs for A024386, the canonical program `A024386.P10204394403226986768` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024386 has offset 1).

The definition of A024386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024386.P10204394403226986768

`(n+1)*(n+2)*(4*(n+1)²+8*(n+1)-3)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024386

/-- `(n+1)*(n+2)*(4*(n+1)²+8*(n+1)-3)/6` -/
def P10204394403226986768.Spec : Prop :=
  ∀ n, P10204394403226986768.a n = (A024386 (n + 1) : ℚ)

end A024386

/-! ## A024386.P17378387828991101734

`C(2*n+5, 2*n+1)-(n+1)*(n+2)`
-/

namespace A024386.P17378387828991101734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 5) (2 * n + 1) : ℤ) - ((n + 1) * (n + 2) : ℤ)

end

end A024386.P17378387828991101734

namespace A024386

/-- `C(2*n+5, 2*n+1)-(n+1)*(n+2)` -/
def P17378387828991101734.Spec : Prop :=
  ∀ n, P17378387828991101734.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P12531494938159614378

`∑[A269342(n)]`
-/

namespace A024386.P12531494938159614378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024386.P12531494938159614378

namespace A024386

/-- `∑[A269342(n)]` -/
def P12531494938159614378.Spec : Prop :=
  ∀ n, P12531494938159614378.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P9986550940834615283

`A098077(n+1)+A002414(n+1)`
-/

namespace A024386.P9986550940834615283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098077 (n + 1) + A002414 (n + 1)

end

end A024386.P9986550940834615283

namespace A024386

/-- `A098077(n+1)+A002414(n+1)` -/
def P9986550940834615283.Spec : Prop :=
  ∀ n, P9986550940834615283.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P10871622759238625724

`A213840(n+1)+A213820(n+1)`
-/

namespace A024386.P10871622759238625724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) + A213820 (n + 1)

end

end A024386.P10871622759238625724

namespace A024386

/-- `A213840(n+1)+A213820(n+1)` -/
def P10871622759238625724.Spec : Prop :=
  ∀ n, P10871622759238625724.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P2080643182214592957

`A051662(n)+2*A178073(n+1)`
-/

namespace A024386.P2080643182214592957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + 2 * A178073 (n + 1)

end

end A024386.P2080643182214592957

namespace A024386

/-- `A051662(n)+2*A178073(n+1)` -/
def P2080643182214592957.Spec : Prop :=
  ∀ n, P2080643182214592957.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P4707454959000864250

`A213840(n+1)+2*A002414(n+1)`
-/

namespace A024386.P4707454959000864250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213840 (n + 1) + 2 * A002414 (n + 1)

end

end A024386.P4707454959000864250

namespace A024386

/-- `A213840(n+1)+2*A002414(n+1)` -/
def P4707454959000864250.Spec : Prop :=
  ∀ n, P4707454959000864250.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P13873791148637649431

`A002412(n+1)+A006324(n+1)+A006324(n+1)`
-/

namespace A024386.P13873791148637649431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + (A006324 (n + 1) + A006324 (n + 1))

end

end A024386.P13873791148637649431

namespace A024386

/-- `A002412(n+1)+A006324(n+1)+A006324(n+1)` -/
def P13873791148637649431.Spec : Prop :=
  ∀ n, P13873791148637649431.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P11863195415180307786

`A053126(n+4)-(A000217(n+1)+A000217(n+1))`
-/

namespace A024386.P11863195415180307786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053126 (n + 4) - (A000217 (n + 1) + A000217 (n + 1))

end

end A024386.P11863195415180307786

namespace A024386

/-- `A053126(n+4)-(A000217(n+1)+A000217(n+1))` -/
def P11863195415180307786.Spec : Prop :=
  ∀ n, P11863195415180307786.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P16154575351496698064

`A033488(n+1)+A033486(n)-A000217(n+1)`
-/

namespace A024386.P16154575351496698064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 (n + 1) + (A033486 n - A000217 (n + 1))

end

end A024386.P16154575351496698064

namespace A024386

/-- `A033488(n+1)+A033486(n)-A000217(n+1)` -/
def P16154575351496698064.Spec : Prop :=
  ∀ n, P16154575351496698064.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P15896154988215356703

`A000292(n+1)*A008586(n+1)-A000217(n+1)`
-/

namespace A024386.P15896154988215356703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A008586 (n + 1) - A000217 (n + 1)

end

end A024386.P15896154988215356703

namespace A024386

/-- `A000292(n+1)*A008586(n+1)-A000217(n+1)` -/
def P15896154988215356703.Spec : Prop :=
  ∀ n, P15896154988215356703.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P4173881986697251462

`∑[∑[A195241(n+2)]]`
-/

namespace A024386.P4173881986697251462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195241 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024386.P4173881986697251462

namespace A024386

/-- `∑[∑[A195241(n+2)]]` -/
def P4173881986697251462.Spec : Prop :=
  ∀ n, P4173881986697251462.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P7031509589130761979

`A328152(n+3)+A264850(n+1)`
-/

namespace A024386.P7031509589130761979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328152 (n + 3) + A264850 (n + 1)

end

end A024386.P7031509589130761979

namespace A024386

/-- `A328152(n+3)+A264850(n+1)` -/
def P7031509589130761979.Spec : Prop :=
  ∀ n, P7031509589130761979.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P9606922227565093926

`A002412(n+1)+2*A001752(2*n)`
-/

namespace A024386.P9606922227565093926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 1) + 2 * A001752 (2 * n)

end

end A024386.P9606922227565093926

namespace A024386

/-- `A002412(n+1)+2*A001752(2*n)` -/
def P9606922227565093926.Spec : Prop :=
  ∀ n, P9606922227565093926.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P11482797529338422464

`∑[∑[A132209(2*n+1)]]`
-/

namespace A024386.P11482797529338422464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024386.P11482797529338422464

namespace A024386

/-- `∑[∑[A132209(2*n+1)]]` -/
def P11482797529338422464.Spec : Prop :=
  ∀ n, P11482797529338422464.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P13662240039541355837

`∑[∑[A142463(2*n+1)]]`
-/

namespace A024386.P13662240039541355837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024386.P13662240039541355837

namespace A024386

/-- `∑[∑[A142463(2*n+1)]]` -/
def P13662240039541355837.Spec : Prop :=
  ∀ n, P13662240039541355837.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P11482601096081639565

`A005718(2*n)-∑[2*n]`
-/

namespace A024386.P11482601096081639565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A024386.P11482601096081639565

namespace A024386

/-- `A005718(2*n)-∑[2*n]` -/
def P11482601096081639565.Spec : Prop :=
  ∀ n, P11482601096081639565.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P12240637575099655175

`A005582(2*n+1)+(n+1)²`
-/

namespace A024386.P12240637575099655175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (2 * n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A024386.P12240637575099655175

namespace A024386

/-- `A005582(2*n+1)+(n+1)²` -/
def P12240637575099655175.Spec : Prop :=
  ∀ n, P12240637575099655175.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P15485806373691952939

`A063258(2*n)-A028387(n)`
-/

namespace A024386.P15485806373691952939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 (2 * n) - A028387 n

end

end A024386.P15485806373691952939

namespace A024386

/-- `A063258(2*n)-A028387(n)` -/
def P15485806373691952939.Spec : Prop :=
  ∀ n, P15485806373691952939.a n = A024386 (n + 1)

end A024386

/-! ## A024386.P1176299664996814019

`A166805(2*n+1)-A028552(n)`
-/

namespace A024386.P1176299664996814019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166805 (2 * n + 1) - A028552 n

end

end A024386.P1176299664996814019

namespace A024386

/-- `A166805(2*n+1)-A028552(n)` -/
def P1176299664996814019.Spec : Prop :=
  ∀ n, P1176299664996814019.a n = A024386 (n + 1)

end A024386

/-!
# A024387: [ (4th elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 4}.

The programs for A024387, there is no canonical definition to state claims against.
-/

/-! ## A024387.P12396864042860707138

`floor(A024380(n+1)/A000384(n+4))`
-/

namespace A024387.P12396864042860707138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024380 (n + 1) : ℚ) / (A000384 (n + 4) : ℚ)⌋

end

end A024387.P12396864042860707138

/-!
# A024388: [ (3rd elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 1 mod 4}.

The programs for A024388, the canonical program `A024388.P6387569724511021267` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024388 has offset 1).

The definition of A024388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024388.P6387569724511021267

`floor(A024379(n+2)/A024378(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A024388

/-- `floor(A024379(n+2)/A024378(n+3))` -/
def P6387569724511021267.Spec : Prop :=
  ∀ n, P6387569724511021267.a n = A024388 (n + 1)

theorem P6387569724511021267.correct : P6387569724511021267.Spec := by
  intro n
  simp only [A024388, Nat.add_sub_cancel]

end A024388

/-! ## A024388.P14258126641434432456

`A051889(A005899(n))+Δ[A187710(n)]`
-/

namespace A024388.P14258126641434432456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A005899 n).toNat + (f1 (n + 1) - f1 n)

end

end A024388.P14258126641434432456

namespace A024388

/-- `A051889(A005899(n))+Δ[A187710(n)]` -/
def P14258126641434432456.Spec : Prop :=
  ∀ n, P14258126641434432456.a n = A024388 (n + 1)

end A024388

/-! ## A024388.P12869818357156858733

`A051889(A005899(n))+A005843(n+1)`
-/

namespace A024388.P12869818357156858733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A005899 n).toNat + A005843 (n + 1)

end

end A024388.P12869818357156858733

namespace A024388

/-- `A051889(A005899(n))+A005843(n+1)` -/
def P12869818357156858733.Spec : Prop :=
  ∀ n, P12869818357156858733.a n = A024388 (n + 1)

end A024388

/-! ## A024388.P12547392294945679351

`A002264(A000217(2*(n+2))+floor(A339113(3*n+1)/86))`
-/

namespace A024388.P12547392294945679351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000217 (2 * (n + 2)) + ⌊(A339113 (3 * n + 1) : ℚ) / 86⌋).toNat

end

end A024388.P12547392294945679351

namespace A024388

/-- `A002264(A000217(2*(n+2))+floor(A339113(3*n+1)/86))` -/
def P12547392294945679351.Spec : Prop :=
  ∀ n, P12547392294945679351.a n = A024388 (n + 1)

end A024388

/-!
# A024389: [ (4th elementary symmetric function of S(n))/(2nd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 4}.

The programs for A024389, there is no canonical definition to state claims against.
-/

/-! ## A024389.P12445132661549859779

`floor(A024380(n+1)/A024378(n+3))`
-/

namespace A024389.P12445132661549859779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024380 (n + 1) : ℚ) / (A024378 (n + 3) : ℚ)⌋

end

end A024389.P12445132661549859779

/-!
# A024390: [ (4th elementary symmetric function of S(n))/(3rd elementary symmetric function of S(n)) ], where S(n) = {first n+3 positive integers congruent to 1 mod 4}.

The programs for A024390, there is no canonical definition to state claims against.
-/

/-! ## A024390.P4520242980722096142

`floor(A024380(n+1)/A024379(n+2))`
-/

namespace A024390.P4520242980722096142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024380 (n + 1) : ℚ) / (A024379 (n + 2) : ℚ)⌋

end

end A024390.P4520242980722096142

/-! ## A024390.P12388389332216641809

`floor(A024387(n+1)/A024386(n+2))`
-/

namespace A024390.P12388389332216641809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024387 (n + 1) : ℚ) / (A024386 (n + 2) : ℚ)⌋

end

end A024390.P12388389332216641809

/-! ## A024390.P13221602622869695522

`A027379(n)-A095791(A094947(n))`
-/

namespace A024390.P13221602622869695522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A095791 (A094947 n).toNat

end

end A024390.P13221602622869695522

/-! ## A024390.P5908804955156862038

`A046691(n+1)-A105224(A046092(3*n+4))`
-/

namespace A024390.P5908804955156862038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 1) - A105224 (A046092 (3 * n + 4)).toNat

end

end A024390.P5908804955156862038

/-! ## A024390.P8058121952327442092

`A309077(2*(n+1))+∑[n]-2`
-/

namespace A024390.P8058121952327442092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309077 (2 * (n + 1)) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A024390.P8058121952327442092

/-!
# A024391: 2nd elementary symmetric function of the first n+1 positive integers congruent to 2 mod 3.

The programs for A024391, the canonical program `A024391.P12557809243327147267` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024391 has offset 1).

The definition of A024391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024391.P12557809243327147267

`(n+1)*(n+2)*(3*(n+1)+2)*(3*(n+1)+5)/8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024391

/-- `(n+1)*(n+2)*(3*(n+1)+2)*(3*(n+1)+5)/8` -/
def P12557809243327147267.Spec : Prop :=
  ∀ n, P12557809243327147267.a n = (A024391 (n + 1) : ℚ)

end A024391

/-! ## A024391.P12552046888580619751

`∑[C(3*n+5, 3)]`
-/

namespace A024391.P12552046888580619751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 5) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024391.P12552046888580619751

namespace A024391

/-- `∑[C(3*n+5, 3)]` -/
def P12552046888580619751.Spec : Prop :=
  ∀ n, (P12552046888580619751.a n : ℤ) = A024391 (n + 1)

end A024391

/-! ## A024391.P8792138484223897477

`C(∑[n+5]+n², 2)`
-/

namespace A024391.P8792138484223897477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2) 2

end

end A024391.P8792138484223897477

namespace A024391

/-- `C(∑[n+5]+n², 2)` -/
def P8792138484223897477.Spec : Prop :=
  ∀ n, (P8792138484223897477.a n : ℤ) = A024391 (n + 1)

end A024391

/-! ## A024391.P16978624375492094317

`∑[A228888(n+1)]`
-/

namespace A024391.P16978624375492094317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024391.P16978624375492094317

namespace A024391

/-- `∑[A228888(n+1)]` -/
def P16978624375492094317.Spec : Prop :=
  ∀ n, P16978624375492094317.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P11060772896695853493

`A269641(n+1)+A267707(n)`
-/

namespace A024391.P11060772896695853493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269641 (n + 1) + A267707 n

end

end A024391.P11060772896695853493

namespace A024391

/-- `A269641(n+1)+A267707(n)` -/
def P11060772896695853493.Spec : Prop :=
  ∀ n, P11060772896695853493.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P9864589145596425797

`A085788(n+1)+A024212(n+1)`
-/

namespace A024391.P9864589145596425797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1) + A024212 (n + 1)

end

end A024391.P9864589145596425797

namespace A024391

/-- `A085788(n+1)+A024212(n+1)` -/
def P9864589145596425797.Spec : Prop :=
  ∀ n, P9864589145596425797.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P14841322836381567415

`A269410(n+1)+A004255(n+1)`
-/

namespace A024391.P14841322836381567415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269410 (n + 1) + A004255 (n + 1)

end

end A024391.P14841322836381567415

namespace A024391

/-- `A269410(n+1)+A004255(n+1)` -/
def P14841322836381567415.Spec : Prop :=
  ∀ n, P14841322836381567415.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P2568205228458519916

`A116689(n+2)-A004188(n+2)`
-/

namespace A024391.P2568205228458519916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116689 (n + 2) - A004188 (n + 2)

end

end A024391.P2568205228458519916

namespace A024391

/-- `A116689(n+2)-A004188(n+2)` -/
def P2568205228458519916.Spec : Prop :=
  ∀ n, P2568205228458519916.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P15445514812242819328

`A260810(n+2)-A236770(n+2)`
-/

namespace A024391.P15445514812242819328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260810 (n + 2) - A236770 (n + 2)

end

end A024391.P15445514812242819328

namespace A024391

/-- `A260810(n+2)-A236770(n+2)` -/
def P15445514812242819328.Spec : Prop :=
  ∀ n, P15445514812242819328.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P3592440844971794203

`∑[A000292(3*(n+1))]`
-/

namespace A024391.P3592440844971794203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024391.P3592440844971794203

namespace A024391

/-- `∑[A000292(3*(n+1))]` -/
def P3592440844971794203.Spec : Prop :=
  ∀ n, P3592440844971794203.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P4137136754544181463

`A216172(3*(n+1)+2)`
-/

namespace A024391.P4137136754544181463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (3 * (n + 1) + 2)

end

end A024391.P4137136754544181463

namespace A024391

/-- `A216172(3*(n+1)+2)` -/
def P4137136754544181463.Spec : Prop :=
  ∀ n, P4137136754544181463.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P10236786261495299823

`A115264(A016969(n))`
-/

namespace A024391.P10236786261495299823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 (A016969 n).toNat

end

end A024391.P10236786261495299823

namespace A024391

/-- `A115264(A016969(n))` -/
def P10236786261495299823.Spec : Prop :=
  ∀ n, P10236786261495299823.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P4145943882747528962

`A115264(A101328(n+3))`
-/

namespace A024391.P4145943882747528962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 (A101328 (n + 3)).toNat

end

end A024391.P4145943882747528962

namespace A024391

/-- `A115264(A101328(n+3))` -/
def P4145943882747528962.Spec : Prop :=
  ∀ n, P4145943882747528962.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P3789639127415102782

`A115264(A045944(2*n+1)/(2*n+1))`
-/

namespace A024391.P3789639127415102782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115264 (SequenceMachineLib.roundAway ((A045944 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A024391.P3789639127415102782

namespace A024391

/-- `A115264(A045944(2*n+1)/(2*n+1))` -/
def P3789639127415102782.Spec : Prop :=
  ∀ n, P3789639127415102782.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P14908739013046153731

`A000217(∑[3*n+4])`
-/

namespace A024391.P14908739013046153731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A024391.P14908739013046153731

namespace A024391

/-- `A000217(∑[3*n+4])` -/
def P14908739013046153731.Spec : Prop :=
  ∀ n, P14908739013046153731.a n = A024391 (n + 1)

end A024391

/-! ## A024391.P13680134172654066267

`A000217(∑[n+5]+n²)-(∑[n+5]+n²)`
-/

namespace A024391.P13680134172654066267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2) - ((∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2 : ℕ) : ℤ)

end

end A024391.P13680134172654066267

namespace A024391

/-- `A000217(∑[n+5]+n²)-(∑[n+5]+n²)` -/
def P13680134172654066267.Spec : Prop :=
  ∀ n, P13680134172654066267.a n = A024391 (n + 1)

end A024391

/-!
# A024392: a(n) = 3rd elementary symmetric function of the first n+2 positive integers congruent to 2 mod 3.

The programs for A024392, the canonical program `A024392.P7962304950504622590` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024392 has offset 1).

The definition of A024392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024392.P7962304950504622590

`(n+1)*(n+2)*(n+3)*(3*(n+1)+7)*(9*(n+1)²+33*(n+1)+22)/48`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024392

/-- `(n+1)*(n+2)*(n+3)*(3*(n+1)+7)*(9*(n+1)²+33*(n+1)+22)/48` -/
def P7962304950504622590.Spec : Prop :=
  ∀ n, P7962304950504622590.a n = (A024392 (n + 1) : ℚ)

end A024392

/-! ## A024392.P3901005800997196477

`∑[A016789(n+2)*A024391(n+1)]`
-/

namespace A024392.P3901005800997196477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 2) * A024391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024392.P3901005800997196477

namespace A024392

/-- `∑[A016789(n+2)*A024391(n+1)]` -/
def P3901005800997196477.Spec : Prop :=
  ∀ n, P3901005800997196477.a n = A024392 (n + 1)

end A024392

/-! ## A024392.P1294760437571802751

`A006566(∑[n+2]+1)-A000292(n+2)`
-/

namespace A024392.P1294760437571802751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000292 (n + 2)

end

end A024392.P1294760437571802751

namespace A024392

/-- `A006566(∑[n+2]+1)-A000292(n+2)` -/
def P1294760437571802751.Spec : Prop :=
  ∀ n, P1294760437571802751.a n = A024392 (n + 1)

end A024392

/-! ## A024392.P5378641154864186245

`A000292(A133694(n+2))-A000292(n+2)`
-/

namespace A024392.P5378641154864186245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A133694 (n + 2)).toNat - A000292 (n + 2)

end

end A024392.P5378641154864186245

namespace A024392

/-- `A000292(A133694(n+2))-A000292(n+2)` -/
def P5378641154864186245.Spec : Prop :=
  ∀ n, P5378641154864186245.a n = A024392 (n + 1)

end A024392

/-! ## A024392.P5768649048592433835

`A225470(∑[n+3]+n+3)`
-/

namespace A024392.P5768649048592433835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A024392.P5768649048592433835

namespace A024392

/-- `A225470(∑[n+3]+n+3)` -/
def P5768649048592433835.Spec : Prop :=
  ∀ n, P5768649048592433835.a n = A024392 (n + 1)

end A024392

/-!
# A024393: 4th elementary symmetric function of the first n+3 positive integers congruent to 2 mod 3.

The programs for A024393, there is no canonical definition to state claims against.
-/

/-! ## A024393.P518883593267523068

`A225470(A056115(n)+10)`
-/

namespace A024393.P518883593267523068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (A056115 n + 10).toNat

end

end A024393.P518883593267523068

/-! ## A024393.P14576251300590707904

`A225470(eq[4, A025581(n)])`
-/

namespace A024393.P14576251300590707904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024393.P14576251300590707904

/-! ## A024393.P4300133686008836578

`A225470(eq[16, A130321(n)])`
-/

namespace A024393.P4300133686008836578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024393.P4300133686008836578

/-! ## A024393.P17866661664175106392

`A225470(eq[5, A004736(n+1)])`
-/

namespace A024393.P17866661664175106392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024393.P17866661664175106392

/-! ## A024393.P876183865190914089

`A225470(eq[5, A027293(n+1)])`
-/

namespace A024393.P876183865190914089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A024393.P876183865190914089

/-!
# A024394: a(n) is the sum of squares of the first n positive integers congruent to 2 mod 3.

The programs for A024394, the canonical program `A024394.P4227332179640649732` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024394 has offset 1).

The definition of A024394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024394.P4227332179640649732

`3*(n+1)^3+(n+1)*(3*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024394

/-- `3*(n+1)^3+(n+1)*(3*(n+1)-1)/2` -/
def P4227332179640649732.Spec : Prop :=
  ∀ n, P4227332179640649732.a n = (A024394 (n + 1) : ℚ)

end A024394

/-! ## A024394.P5143217213721703984

`∑[A016789(n)²]`
-/

namespace A024394.P5143217213721703984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P5143217213721703984

namespace A024394

/-- `∑[A016789(n)²]` -/
def P5143217213721703984.Spec : Prop :=
  ∀ n, P5143217213721703984.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P7945381135922606979

`∑[sqrt(A016792(n))]`
-/

namespace A024394.P7945381135922606979
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016792 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P7945381135922606979

namespace A024394

/-- `∑[sqrt(A016792(n))]` -/
def P7945381135922606979.Spec : Prop :=
  ∀ n, P7945381135922606979.a n = (A024394 (n + 1) : ℝ)

end A024394

/-! ## A024394.P10820546477447209581

`∑[A016958(n)/4]`
-/

namespace A024394.P10820546477447209581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016958 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P10820546477447209581

namespace A024394

/-- `∑[A016958(n)/4]` -/
def P10820546477447209581.Spec : Prop :=
  ∀ n, P10820546477447209581.a n = (A024394 (n + 1) : ℚ)

end A024394

/-! ## A024394.P13014907173601703155

`∑[(A016777(n)+1)²]`
-/

namespace A024394.P13014907173601703155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P13014907173601703155

namespace A024394

/-- `∑[(A016777(n)+1)²]` -/
def P13014907173601703155.Spec : Prop :=
  ∀ n, P13014907173601703155.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P16502013295457148922

`∑[(A008585(n)+2)²]`
-/

namespace A024394.P16502013295457148922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008585 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P16502013295457148922

namespace A024394

/-- `∑[(A008585(n)+2)²]` -/
def P16502013295457148922.Spec : Prop :=
  ∀ n, P16502013295457148922.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P15121530158028354961

`∑[(A016957(n)/2)²]`
-/

namespace A024394.P15121530158028354961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016957 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P15121530158028354961

namespace A024394

/-- `∑[(A016957(n)/2)²]` -/
def P15121530158028354961.Spec : Prop :=
  ∀ n, P15121530158028354961.a n = (A024394 (n + 1) : ℚ)

end A024394

/-! ## A024394.P6820593487524369010

`∑[(A017233(n)/3)²]`
-/

namespace A024394.P6820593487524369010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017233 n : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P6820593487524369010

namespace A024394

/-- `∑[(A017233(n)/3)²]` -/
def P6820593487524369010.Spec : Prop :=
  ∀ n, P6820593487524369010.a n = (A024394 (n + 1) : ℚ)

end A024394

/-! ## A024394.P11640316637595702459

`∑[∑[A063122(n+1)]]`
-/

namespace A024394.P11640316637595702459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063122 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P11640316637595702459

namespace A024394

/-- `∑[∑[A063122(n+1)]]` -/
def P11640316637595702459.Spec : Prop :=
  ∀ n, P11640316637595702459.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P10710375192711076404

`∑[(n-A016825(n))²]`
-/

namespace A024394.P10710375192711076404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A016825 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P10710375192711076404

namespace A024394

/-- `∑[(n-A016825(n))²]` -/
def P10710375192711076404.Spec : Prop :=
  ∀ n, P10710375192711076404.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P2866436229429573354

`∑[A185939(n+1)-1]`
-/

namespace A024394.P2866436229429573354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185939 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P2866436229429573354

namespace A024394

/-- `∑[A185939(n+1)-1]` -/
def P2866436229429573354.Spec : Prop :=
  ∀ n, P2866436229429573354.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P3178173385040742868

`∑[A014682(2*n+1)²]`
-/

namespace A024394.P3178173385040742868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P3178173385040742868

namespace A024394

/-- `∑[A014682(2*n+1)²]` -/
def P3178173385040742868.Spec : Prop :=
  ∀ n, P3178173385040742868.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P9508005768378741273

`∑[(A016945(n)+1)²]/4`
-/

namespace A024394.P9508005768378741273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A024394.P9508005768378741273

namespace A024394

/-- `∑[(A016945(n)+1)²]/4` -/
def P9508005768378741273.Spec : Prop :=
  ∀ n, P9508005768378741273.a n = (A024394 (n + 1) : ℚ)

end A024394

/-! ## A024394.P2331201430703914413

`∑[A152751(n+1)+1]`
-/

namespace A024394.P2331201430703914413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P2331201430703914413

namespace A024394

/-- `∑[A152751(n+1)+1]` -/
def P2331201430703914413.Spec : Prop :=
  ∀ n, P2331201430703914413.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P2247035785230952353

`∑[A166517(2*n)²]`
-/

namespace A024394.P2247035785230952353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P2247035785230952353

namespace A024394

/-- `∑[A166517(2*n)²]` -/
def P2247035785230952353.Spec : Prop :=
  ∀ n, P2247035785230952353.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P1109001482670571603

`∑[A135556(2*(n+1))]`
-/

namespace A024394.P1109001482670571603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P1109001482670571603

namespace A024394

/-- `∑[A135556(2*(n+1))]` -/
def P1109001482670571603.Spec : Prop :=
  ∀ n, P1109001482670571603.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P9138682079412388857

`∑[A007494(2*n+1)²]`
-/

namespace A024394.P9138682079412388857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P9138682079412388857

namespace A024394

/-- `∑[A007494(2*n+1)²]` -/
def P9138682079412388857.Spec : Prop :=
  ∀ n, P9138682079412388857.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P11462526228983921726

`∑[A026214(2*n+1)²]`
-/

namespace A024394.P11462526228983921726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P11462526228983921726

namespace A024394

/-- `∑[A026214(2*n+1)²]` -/
def P11462526228983921726.Spec : Prop :=
  ∀ n, P11462526228983921726.a n = A024394 (n + 1)

end A024394

/-! ## A024394.P12598058254152045817

`∑[A075884(2*n+1)²]`
-/

namespace A024394.P12598058254152045817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024394.P12598058254152045817

namespace A024394

/-- `∑[A075884(2*n+1)²]` -/
def P12598058254152045817.Spec : Prop :=
  ∀ n, P12598058254152045817.a n = A024394 (n + 1)

end A024394

/-!
# A024395: a(n) = n-th elementary symmetric function of the first n+1 positive integers congruent to 2 mod 3.

The programs for A024395, there is no canonical definition to state claims against.
-/

/-! ## A024395.P8784742372690305758

`A225470(∑[n+1]+1)`
-/

namespace A024395.P8784742372690305758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A024395.P8784742372690305758

/-! ## A024395.P3806927125813989889

`record[A225470(∑[A035214(n)])]`
-/

namespace A024395.P3806927125813989889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024395.P3806927125813989889

/-! ## A024395.P12050282589886754483

`record[A225470(A014132(n+1))]`
-/

namespace A024395.P12050282589886754483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024395.P12050282589886754483

/-! ## A024395.P12999431541725807208

`record[and(A225470(n), A292166(n))]`
-/

namespace A024395.P12999431541725807208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225470 n) (A292166 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024395.P12999431541725807208

/-! ## A024395.P17706753077662512902

`record[and(A225470(n), A294254(n))]`
-/

namespace A024395.P17706753077662512902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225470 n) (A294254 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024395.P17706753077662512902

/-! ## A024395.P10494391781957129016

`record[and(A225470(n), A334568(n))]`
-/

namespace A024395.P10494391781957129016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A225470 n) (A334568 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024395.P10494391781957129016

/-! ## A024395.P14364808121685986592

`record[A225470(A035214(n+1)+n)]`
-/

namespace A024395.P14364808121685986592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225470 (A035214 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A024395.P14364808121685986592

/-!
# A024396: a(n) = ( Product {k = 1..n} 3*k - 1 ) * ( Sum {k = 1..n} (-1)^(k+1)/(3*k - 1) ).

The programs for A024396, the canonical program `A024396.P5256244256368604029` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024396 has offset 1).

The definition of A024396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024396.P5256244256368604029

`3*a(n-1)+(3*(n+1)-4)²*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024396

/-- `3*a(n-1)+(3*(n+1)-4)²*a(n-2)` -/
def P5256244256368604029.Spec : Prop :=
  ∀ n, P5256244256368604029.a n = A024396 (n + 1)

theorem P5256244256368604029.correct : P5256244256368604029.Spec := by
  intro n
  simp only [A024396, Nat.add_sub_cancel]

end A024396

/-!
# A024398: a(n) = [ (2nd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+1 positive integers congruent to 2 mod 3}.

The programs for A024398, the canonical program `A024398.P3521670016696725409` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024398 has offset 1).

The definition of A024398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A024398.P13197793096037291888

`floor(cosh(log(∑[3*n]+1)))-1`
-/

namespace A024398.P13197793096037291888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))⌋ - 1

end

end A024398.P13197793096037291888

namespace A024398

/-- `floor(cosh(log(∑[3*n]+1)))-1` -/
def P13197793096037291888.Spec : Prop :=
  ∀ n, P13197793096037291888.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P18208581556223916635

`and(abs(∑[3*n]-1), -2)/2`
-/

namespace A024398.P18208581556223916635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1| (-2) : ℚ) / 2

end

end A024398.P18208581556223916635

namespace A024398

/-- `and(abs(∑[3*n]-1), -2)/2` -/
def P18208581556223916635.Spec : Prop :=
  ∀ n, P18208581556223916635.a n = (A024398 (n + 1) : ℚ)

end A024398

/-! ## A024398.P3521670016696725409

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A024398

/-- `∑[∑[3-a(n-2)]]` -/
def P3521670016696725409.Spec : Prop :=
  ∀ n, P3521670016696725409.a n = A024398 (n + 1)

theorem P3521670016696725409.correct : P3521670016696725409.Spec := by
  intro n
  simp only [A024398, Nat.add_sub_cancel]

end A024398

/-! ## A024398.P10435181306913390194

`floor(3*(∑[2*n]/(2*n+1))²)`
-/

namespace A024398.P10435181306913390194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 * n + 1 : ℚ)) ^ 2⌋

end

end A024398.P10435181306913390194

namespace A024398

/-- `floor(3*(∑[2*n]/(2*n+1))²)` -/
def P10435181306913390194.Spec : Prop :=
  ∀ n, P10435181306913390194.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P2249540264697322597

`∑[A047229(n+1)-char[1]]`
-/

namespace A024398.P2249540264697322597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024398.P2249540264697322597

namespace A024398

/-- `∑[A047229(n+1)-char[1]]` -/
def P2249540264697322597.Spec : Prop :=
  ∀ n, P2249540264697322597.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P16747866754781844185

`∑[A004525(n-char[1])+n]`
-/

namespace A024398.P16747866754781844185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n - (if ∃ j, f2 j = n then 1 else 0)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024398.P16747866754781844185

namespace A024398

/-- `∑[A004525(n-char[1])+n]` -/
def P16747866754781844185.Spec : Prop :=
  ∀ n, P16747866754781844185.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P4742974498006456266

`∑[n-(char[1]-A004525(n))]`
-/

namespace A024398.P4742974498006456266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A004525 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024398.P4742974498006456266

namespace A024398

/-- `∑[n-(char[1]-A004525(n))]` -/
def P4742974498006456266.Spec : Prop :=
  ∀ n, P4742974498006456266.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P10459445204303739780

`a(n-1)+A049206(n)+n` with `a(0)=0`
-/

namespace A024398.P10459445204303739780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A049206 n + (n : ℤ))

end

end A024398.P10459445204303739780

namespace A024398

/-- `a(n-1)+A049206(n)+n` -/
def P10459445204303739780.Spec : Prop :=
  ∀ n, P10459445204303739780.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P7201754461276281089

`∑[comp[A004277(comp[3*n+1])+1]]`
-/

namespace A024398.P7201754461276281089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024398.P7201754461276281089

namespace A024398

/-- `∑[comp[A004277(comp[3*n+1])+1]]` -/
def P7201754461276281089.Spec : Prop :=
  ∀ n, (P7201754461276281089.a n : ℤ) = A024398 (n + 1)

end A024398

/-! ## A024398.P1162713650369108018

`ceil(∑[n*(and(2, A003817(n))+1)/2])`
-/

namespace A024398.P1162713650369108018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (Int.land 2 (A003817 n) + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A024398.P1162713650369108018

namespace A024398

/-- `ceil(∑[n*(and(2, A003817(n))+1)/2])` -/
def P1162713650369108018.Spec : Prop :=
  ∀ n, P1162713650369108018.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P11372149634714249921

`A132209(n)-A332495(n)`
-/

namespace A024398.P11372149634714249921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n - A332495 n

end

end A024398.P11372149634714249921

namespace A024398

/-- `A132209(n)-A332495(n)` -/
def P11372149634714249921.Spec : Prop :=
  ∀ n, P11372149634714249921.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P11164687233224839750

`A024966(n)%A301711(n)`
-/

namespace A024398.P11164687233224839750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024966 n) (A301711 n)

end

end A024398.P11164687233224839750

namespace A024398

/-- `A024966(n)%A301711(n)` -/
def P11164687233224839750.Spec : Prop :=
  ∀ n, P11164687233224839750.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P9615903799409277700

`A028896(n)%A301294(n)`
-/

namespace A024398.P9615903799409277700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028896 n) (A301294 n)

end

end A024398.P9615903799409277700

namespace A024398

/-- `A028896(n)%A301294(n)` -/
def P9615903799409277700.Spec : Prop :=
  ∀ n, P9615903799409277700.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P1077648840204693190

`A397985(n)%A002522(n)`
-/

namespace A024398.P1077648840204693190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397985 n) (A002522 n)

end

end A024398.P1077648840204693190

namespace A024398

/-- `A397985(n)%A002522(n)` -/
def P1077648840204693190.Spec : Prop :=
  ∀ n, P1077648840204693190.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P4075492019275062150

`A024219(n+1)-A087156(n+1)`
-/

namespace A024398.P4075492019275062150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024219 (n + 1) - A087156 (n + 1)

end

end A024398.P4075492019275062150

namespace A024398

/-- `A024219(n+1)-A087156(n+1)` -/
def P4075492019275062150.Spec : Prop :=
  ∀ n, P4075492019275062150.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P5507009003980144285

`∑[A049206(n+1)+n]-A049206(n+1)`
-/

namespace A024398.P5507009003980144285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049206 (n + 1)

end

end A024398.P5507009003980144285

namespace A024398

/-- `∑[A049206(n+1)+n]-A049206(n+1)` -/
def P5507009003980144285.Spec : Prop :=
  ∀ n, P5507009003980144285.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P7635415182508926052

`A267529(n+1)-A267530(A008619(n+1))`
-/

namespace A024398.P7635415182508926052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 (n + 1) - A267530 (A008619 (n + 1)).toNat

end

end A024398.P7635415182508926052

namespace A024398

/-- `A267529(n+1)-A267530(A008619(n+1))` -/
def P7635415182508926052.Spec : Prop :=
  ∀ n, P7635415182508926052.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P15116616367334088815

`A267529(n+1)-(A004526(A267530(n))+2)`
-/

namespace A024398.P15116616367334088815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 (n + 1) - (A004526 (A267530 n).toNat + 2)

end

end A024398.P15116616367334088815

namespace A024398

/-- `A267529(n+1)-(A004526(A267530(n))+2)` -/
def P15116616367334088815.Spec : Prop :=
  ∀ n, P15116616367334088815.a n = A024398 (n + 1)

end A024398

/-! ## A024398.P1637305536829712898

`∑[lt[A347558(n+1), A347538(n+7)]]`
-/

namespace A024398.P1637305536829712898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347558 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024398.P1637305536829712898

namespace A024398

/-- `∑[lt[A347558(n+1), A347538(n+7)]]` -/
def P1637305536829712898.Spec : Prop :=
  ∀ n, (P1637305536829712898.a n : ℤ) = A024398 (n + 1)

end A024398

/-! ## A024398.P1240274180481655073

`∑[A092038(3*n+1)]-A092038(3*n+1)`
-/

namespace A024398.P1240274180481655073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092038 (3 * n + 1)

end

end A024398.P1240274180481655073

namespace A024398

/-- `∑[A092038(3*n+1)]-A092038(3*n+1)` -/
def P1240274180481655073.Spec : Prop :=
  ∀ n, P1240274180481655073.a n = A024398 (n + 1)

end A024398

/-!
# A024399: a(n) = [ (3rd elementary symmetric function of S(n))/(first elementary symmetric function of S(n)) ], where S(n) = {first n+2 positive integers congruent to 2 mod 3}.

The programs for A024399, the canonical program `A024399.P16648313594995049760` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A024399 has offset 1).

The definition of A024399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A024399.P16648313594995049760

`floor(A024392(n+1)/A005449(n+3))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A024399

/-- `floor(A024392(n+1)/A005449(n+3))` -/
def P16648313594995049760.Spec : Prop :=
  ∀ n, P16648313594995049760.a n = A024399 (n + 1)

theorem P16648313594995049760.correct : P16648313594995049760.Spec := by
  intro n
  simp only [A024399, Nat.add_sub_cancel]

end A024399

/-! ## A024399.P9562742004129234604

`∑[A085788(n+1)]-A007980(n)`
-/

namespace A024399.P9562742004129234604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007980 n

end

end A024399.P9562742004129234604

namespace A024399

/-- `∑[A085788(n+1)]-A007980(n)` -/
def P9562742004129234604.Spec : Prop :=
  ∀ n, P9562742004129234604.a n = A024399 (n + 1)

end A024399

/-! ## A024399.P1944849845434396071

`A027480(n+1)+A024220(n+1)`
-/

namespace A024399.P1944849845434396071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (n + 1) + A024220 (n + 1)

end

end A024399.P1944849845434396071

namespace A024399

/-- `A027480(n+1)+A024220(n+1)` -/
def P1944849845434396071.Spec : Prop :=
  ∀ n, P1944849845434396071.a n = A024399 (n + 1)

end A024399

/-! ## A024399.P16443534489117616755

`∑[∑[A047259(n+1)+A022266(n+1)]]`
-/

namespace A024399.P16443534489117616755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1) + A022266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024399.P16443534489117616755

namespace A024399

/-- `∑[∑[A047259(n+1)+A022266(n+1)]]` -/
def P16443534489117616755.Spec : Prop :=
  ∀ n, P16443534489117616755.a n = A024399 (n + 1)

end A024399

/-! ## A024399.P6852162796752066493

`A001840(n)+∑[∑[A000096(3*n+2)]]`
-/

namespace A024399.P6852162796752066493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A024399.P6852162796752066493

namespace A024399

/-- `A001840(n)+∑[∑[A000096(3*n+2)]]` -/
def P6852162796752066493.Spec : Prop :=
  ∀ n, P6852162796752066493.a n = A024399 (n + 1)

end A024399

/-! ## A024399.P5977610042595358398

`∑[A014125(3*n+2)]-A001399(2*n)`
-/

namespace A024399.P5977610042595358398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001399 (2 * n)

end

end A024399.P5977610042595358398

namespace A024399

/-- `∑[A014125(3*n+2)]-A001399(2*n)` -/
def P5977610042595358398.Spec : Prop :=
  ∀ n, P5977610042595358398.a n = A024399 (n + 1)

end A024399

